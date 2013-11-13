wd <- "~/code/movies/code/r/"
setwd(wd)

# Source and output params
movies.s3    <- "https://s3.amazonaws.com/data.cdl.org/movies/movies.csv"
movies.file  <- "movies-years.csv"
ratings.s3   <- "https://s3.amazonaws.com/data.cdl.org/movies/average-ratings.csv"
ratings.file <- "ratings.csv"


# Download the data
# TODO: Verify that averages are correct - generate in LensKit
download.file(url=movies.s3, destfile=movies.file, method="wget", cacheOK=FALSE)
download.file(url=ratings.s3, destfile=ratings.file, method="wget", cacheOK=FALSE)

# Create relationse
# - Cleaned original movie data set from LensKit output
# - Movies: Replaced ' (yyyy)' where yyyy is the year for the movie
movies   <- read.csv(movies.file)
ratings  <- read.csv(file=ratings.file)

# Join
movies.ratings <- merge(x=movies,y=ratings,by.x='movie',by.y='movie')