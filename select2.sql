SELECT js.Musical_Genre_id, COUNT(js.Artist_id)
FROM Artists S
LEFT JOIN Genre_Artists js ON S.id = js.Musical_Genre_id
LEFT JOIN Musical_Genre j ON js.Musical_Genre_id = j.id
GROUP BY js.Musical_Genre_id;





select count(t.id) from tracks t 
join albums al on t.album_id = al.id 
where al.year_of_release between 2019 and 2020;

select al.name, avg(t.duration) from albums al
join tracks t on al.id = t.album_id
group by al.name;

select name from artists ar
where name not in (select ar.name from artists ar
join albumsartists aa on ar.id = aa.artist_id
join albums al on aa.album_id = al.id
where al.year_of_release = 2020);

select c.name from Collection c 
join track_collection tc on tc.collection_id = c.id
join albums al on al.id = c.id
join albumsartists aa on aa.album_id= al.id 
join artists ar on ar.id = aa.artist_id 
where ar.name like '%Dabro%';




