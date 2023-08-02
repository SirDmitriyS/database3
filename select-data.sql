--Задание 2

--1. Название и продолжительность самого длительного трека
SELECT	name,
		duration
FROM	track
WHERE	duration = (
			SELECT 	max(duration)
			FROM 	track
		);

--2. Название треков, продолжительность которых не менее 3,5 минут
SELECT	name
FROM	track
WHERE	duration >= 210;

--3. Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT	name
FROM	collection
WHERE	collection_year BETWEEN 2018 AND 2020;

--4. Исполнители, чьё имя состоит из одного слова
SELECT	name
FROM	artist
WHERE	array_length(
			string_to_array(
				regexp_replace(name, '\W+', ' ', 'g'),
				' '
			),
			1
		) = 1;

--5. Название треков, которые содержат слово «мой» или «my»
SELECT	name
FROM	track
WHERE	'my' = ANY(
			string_to_array(
				regexp_replace(lower(name), '\W+', ' ', 'g'),
				' '
			)
		)
		OR 'мой' = ANY(
			string_to_array(
				regexp_replace(lower(name), '\W+', ' ', 'g'),
				' '
			)
		);

	
--Задание 3
	
--1. Количество исполнителей в каждом жанре
SELECT	g.name,
		count(ag.artist_id) artist_count
FROM	genre g
		LEFT JOIN artist_genre ag 
		ON g.id = ag.genre_id
GROUP BY	g.name;

--2. Количество треков, вошедших в альбомы 2019–2020 годов
SELECT	count(*)
FROM	track t
		INNER JOIN album a 
		ON t.album_id = a.id
WHERE	a.album_year BETWEEN 2019 AND 2020;

--3. Средняя продолжительность треков по каждому альбому
SELECT	a.name,
		avg(t.duration) track_avg_dur
FROM	track t
		INNER JOIN album a 
		ON t.album_id = a.id
GROUP BY	a.name ;

--Все исполнители, которые не выпустили альбомы в 2020 году
SELECT	a.name
FROM	artist a
WHERE	a.id NOT IN (
			SELECT	aa.artist_id
			FROM	album a2
					INNER JOIN album_artist aa 
					ON a2.id = aa.album_id
			WHERE	a2.album_year = 2020
		);

--Названия сборников, в которых присутствует конкретный исполнитель
SELECT	c.name
FROM	collection c
		INNER JOIN collection_track ct 
		ON c.id = ct.collection_id
			INNER JOIN track t 
			ON ct.track_id = t.id
				INNER JOIN album a 
				ON t.album_id = a.id
					INNER JOIN album_artist aa ON
					a.id = aa.album_id
						INNER JOIN artist a2 
						ON aa.artist_id = a2.id
WHERE	a2.name = 'Исполнитель3';
