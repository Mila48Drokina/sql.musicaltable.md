insert into Musical_genre(id, name)
values 
(1, 'Pop'),
(2, 'Rock'),
(3, 'Shanson');

insert into Artists (name)
values 
('Oleg Gazmanov'),
('Dabro'),
('Rok ostrova'),
('Kukryniksy'),
('Mikhail Shifutinskiy');


insert into Genre_Artists(Musical_genre_id, Artist_id)
values
(1,1),
(1, 2),
(2,3),
(2, 4),
(3, 5);



insert into Albums (name, Year_of_release)
values
('Eskadron', '1991'),
('Nashe_Vremya', '2014'),
('Gore_ne_beda', '1992'),
('Raskrashennaya_dusha', '2019'),
('Mosty', '2020');

insert into AlbumsArtists(album_id, artist_id)
values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);



insert into Tracks(name, duration, album_id)
values
('Eskadron', '236', 1),
('Svezhiy veter Moi', '221', 1),
('Dabro', '178', 2),
('Moi poludenniy_son', '296' , 3),
('Love myself', '159', 4),
('Dusha_bolit', '321', 5);

Insert into Collection(name, year_release)
values
('Eskadron_moih_pesen_shalnyx_2', '2024'),
('Dabro: Odnazhdy_oseniyu', '2019'),
('Prekrasnoye_dalyeko', '2024'),
('Zolotaya_pesnya_goda', '2020');

insert into track_collection(track_id, collection_id)
values
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 4);
