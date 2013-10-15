movies
======

Project
-------
Data science project to visualize movie ratings from Courser's [Introduction to Recommender Sytems](https://class.coursera.org/recsys-001/) class.

The class "introduces the concepts, applications, algorithms, programming, and design of recommender systems--software systems that recommend products or information, often based on extensive personalization."

Ratings used in this visualization were created as a result of the first assignment: rate 100 movies on a scale from 1 to 5.  There are a total of 338,354 ratings from 5,563 users. Each data point represents a movie.  Hover over the data point to see the mean rating for that movie.  

The X axis is a score computed by subtracting the population mean from the movie mean (necessary to create a better range for displaying the data).  The Y axis is the number of ratings that particular movie received.

Data
-----
recsys-data-movie-titles.csv - Contains id/title tuples (movie_id, title)

recsys-data-ratings.csv - Contains rating tuples (user_id, movie_id, rating)



Technologies
------------
TODO
