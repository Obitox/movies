Ratings = LOAD '/user/vagrant/data/recsys-data-ratings.csv' USING PigStorage(',') AS (user,movie,rating);
Titles = LOAD '/user/vagrant/data/recsys-data-movie-titles.csv' USING PigStorage(',') AS (id,title);

grouped = COGROUP Ratings BY movie, Titles BY id;
stats = FOREACH grouped GENERATE FLATTEN(Titles.title), AVG(Ratings.rating), COUNT(Ratings);

STORE stats INTO 'ratings_stats';