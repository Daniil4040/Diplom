# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_film = Category.create!(name: "Фильмы")
category_serial = Category.create!(name: "Сериалы")
film = Film.create!(
    name: 'Matrix',
    trailer_link: 'https://www.youtube.com/embed/YihPA42fdQ8',
    rating: 7.5,
    year: 2001,
    director: 'Tomac',
    description: 'иллюзия, существующая только в бесконечном сне обреченного человечества. Холодный мир будущего, в котором люди — всего лишь батарейки в компьютерных системах.',
    category: category_film
)
film.poster.attach(
  io: File.open(Rails.root.join("db","matrix.png")),
  filename: 'matrix.png',
  content_type: 'application/png',
  identify: false
)