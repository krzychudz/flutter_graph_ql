const allFilmsQuery = '''{
  allFilms {
    films {
      id
      episodeID
      title
      director
      releaseDate
    }
  }
}''';

const filmDetailsQuery = '''query Film(\$filmId: ID!) {
        film(filmID: \$filmId) {
          title
          edited
          director
          created
          characterConnection {
            characters {
              name
              skinColor
              birthYear
              hairColor
              height
            }
          }
        }
      }''';
