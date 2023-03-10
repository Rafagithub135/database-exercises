USE codeup_test_db;

select name as 'All Albums' from albums;

select name as 'Albums Before 1980' from albums
where release_date < 1980;

select name as 'Michael Jackson''s Albums' from albums
where artist = 'Michael Jackson';

update albums set sales = sales * 10;

update albums set release_date = release_date - 100
where release_date < 1980;

update albums set artist = 'Peter Jackson'
where artist = 'Michael Jackson';

select * from albums;