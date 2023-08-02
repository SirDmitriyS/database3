--музыкальные жанры
INSERT INTO genre(name)
VALUES ('Жанр1');
INSERT INTO genre(name)
VALUES ('Жанр2');
INSERT INTO genre(name)
VALUES ('Жанр3');

--исполнители
INSERT INTO artist(name)
VALUES ('Исполнитель номер 1');
INSERT INTO artist(name)
VALUES ('Исполнитель2');
INSERT INTO artist(name)
VALUES ('Исполнитель3');
INSERT INTO artist(name)
VALUES ('Исполнитель4');

--жанры исполнителей
INSERT INTO artist_genre(artist_id, genre_id)
VALUES (1, 1);
INSERT INTO artist_genre(artist_id, genre_id)
VALUES (1, 3);
INSERT INTO artist_genre(artist_id, genre_id)
VALUES (2, 1);
INSERT INTO artist_genre(artist_id, genre_id)
VALUES (2, 3);
INSERT INTO artist_genre(artist_id, genre_id)
VALUES (3, 1);
INSERT INTO artist_genre(artist_id, genre_id)
VALUES (3, 2);
INSERT INTO artist_genre(artist_id, genre_id)
VALUES (4, 2);

--альбомы
INSERT INTO album(name, album_year)
VALUES ('Альбом1', 2011);
INSERT INTO album(name, album_year)
VALUES ('Альбом2', 2012);
INSERT INTO album(name, album_year)
VALUES ('Альбом3', 2020);

--исполнители, выпустившие альбомы
INSERT INTO album_artist(artist_id, album_id)
VALUES (1,1);
INSERT INTO album_artist
VALUES (2,2);
INSERT INTO album_artist
VALUES (3,3);
INSERT INTO album_artist
VALUES (1,3);
INSERT INTO album_artist
VALUES (2,3);
INSERT INTO album_artist
VALUES (4,2);

--треки
INSERT INTO track(name, duration, album_id)
VALUES ('Название трека1', 180, 1);
INSERT INTO track(name, duration, album_id)
VALUES ('Название трека2', 240, 1);
INSERT INTO track(name, duration, album_id)
VALUES ('Название трека3 Мой любимый трек', 300, 2);
INSERT INTO track(name, duration, album_id)
VALUES ('Название трека4', 250, 2);
INSERT INTO track(name, duration, album_id)
VALUES ('Название трека5', 240, 3);
INSERT INTO track(name, duration, album_id)
VALUES ('Название трека6', 210, 3);

--сборники
INSERT INTO collection(name, collection_year)
VALUES ('Сборник1', 2020);
INSERT INTO collection(name, collection_year)
VALUES ('Сборник2', 2021);
INSERT INTO collection(name, collection_year)
VALUES ('Сборник3', 2021);
INSERT INTO collection(name, collection_year)
VALUES ('Сборник4', 2022);

--треки сборников
INSERT INTO collection_track(collection_id, track_id)
VALUES (1,1);
INSERT INTO collection_track
VALUES (1,3);
INSERT INTO collection_track
VALUES (1,5);
INSERT INTO collection_track
VALUES (2,2);
INSERT INTO collection_track
VALUES (2,4);
INSERT INTO collection_track
VALUES (3,1);
INSERT INTO collection_track
VALUES (3,2);
INSERT INTO collection_track
VALUES (3,3);
INSERT INTO collection_track
VALUES (3,4);
INSERT INTO collection_track
VALUES (3,5);
INSERT INTO collection_track
VALUES (4,1);
INSERT INTO collection_track
VALUES (4,3);
