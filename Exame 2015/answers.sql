PRAGMA foreign_keys=ON;

select caption from Photo, User where Photo.user = User.id and User.name = "Daniel Ramos" and (strftime('%J',Photo.uploadDate) - strftime('%J',Photo.creationDate)) = 2; 
select "" as "";
select name from User where User.name not in (select name from User,Photo where User.id = Photo.user);
select "" as "";
select avg(appCount) as Media from (select count(*) as appCount from AppearsIn, (select idCount.id as id from (select Photo.id as id,count(*) as likeCount from Photo, Likes where Photo.id = Likes.photo group by Photo.id) as idCount where likeCount > 3) as idWithMoreThan3Likes where AppearsIn.photo = idWithMoreThan3Likes.id group by idWithMoreThan3Likes.id);
select "" as "";
select distinct Photo.caption as caption from Photo, AppearsIn where Photo.id = AppearsIn.photo and (AppearsIn.user in (select User.id from User, Friend where Friend.user1 = User.id and Friend.user2 = (select id from User where name = "Daniel Ramos")) or AppearsIn.user in (select User.id from User, Friend where User.id = Friend.user1 and Friend.user2 in (select User.id from User, Friend where Friend.user1 = User.id and Friend.user2 = (select id from User where name = "Daniel Ramos"))) or AppearsIn.user in (select id from User where name = "Daniel Ramos"));
--delete from Photo where strftime("%J",Photo.uploadDate) < strftime("%J",'2010-01-01') and Photo.id in (select id from (select Photo.id as id, count(*) as appCount from Photo, AppearsIn where Photo.id = AppearsIn.photo group by Photo.id) where appCount < 2);
create trigger if not exists likeApp
after insert on AppearsIn
BEGIN
insert into Likes Values(NEW.user,NEW.photo);
END;