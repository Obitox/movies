import requests
import json

def load_movie_list(path):
    lines = []
    with open(path) as f:
        lines = map(lambda l: l.replace("\n", ""), f.readlines())

    return map(lambda l: tuple(l.split(",")), lines)

def get_movie_data(movie):
    api_base = "http://mymovieapi.com/?title=%s&year=%s"
    url = api_base % (movie[0], movie[1])
    r = requests.get(url)

    try:
        json_obj = r.json()[0]
        print json.dumps(json_obj)
    except Exception as e:
        print "Unable to get data for %s" % movie[0]

def main():
    path = "../../data/movie-titles.csv"
    movies = load_movie_list(path)
    [get_movie_data(movie) for movie in movies]


main()