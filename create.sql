create table if not exists Musical_genre (
id serial primary key,
name varchar (50) not null unique);

create table if not exists Artists (
id serial primary key,

name varchar (50)  not null
);

create table if not exists Genre_Artists (
Artist_id integer references Artists(id),
musical_genre_id integer references Musical_genre(id),
constraint Genre_Artists_id primary key (Artist_id, Musical_genre_id)
);




create table if not exists Albums (
id serial primary key,
name varchar (50) not null,
Year_of_release integer CHECK (Year_of_release <= 2024 )
);

create table if not exists AlbumsArtists (
album_id integer references Albums(id),
Artist_id integer references Artists(id),
constraint AlbumsArtists_id primary key (Album_id, Artist_id));



create table if not exists Tracks (
id serial primary key,
name varchar (50) not null,
duration integer not null, check(duration >= '33'),
Album_id integer references Albums(id)
);



create table if not exists Collection (
id serial primary key,
name varchar (50) not null,
Year_release integer not null);

create table if not exists Track_Collection (
track_id integer references Tracks(id),
collection_id integer references Collection(id),
constraint Track_Collection_id primary key (track_id, Collection_id));




