USE codeup_test_db;

select name as 'Pink Floyd Albums' from albums
where artist = 'Pink Floyd';

select release_date as 'Sgt. Pepper''s Lonely Hearts Club Band Release Date' from albums
where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select name as 'Albums Released in the 1990''s' from albums
where release_date between 1990 and 1999;

-- select name as 'Albums with Sales Less Than 20 Million' from albums
-- where sales < 20;

select name as 'Rock Albums' from albums
where genre = 'Rock';
