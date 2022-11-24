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
  io: File.open(Rails.root.join("db", "images", "max.png")),
  filename: 'max.png',
  content_type: 'application/png',
  identify: false
)

film = Film.create!(
    name: 'Sherlock',
    trailer_link: 'https://www.youtube.com/watch?v=eMM7sX4-6gc&ab_channel=%D0%9F%D0%BB%D0%B0%D1%82%D0%BE%D0%BD%D0%A9%D1%83%D0%BA%D0%B8%D0%BD',
    rating: 8.0,
    year: 2010,
    director: 'Poal',
    description: 'События разворачиваются в наши дни. Он прошел Афганистан, остался инвалидом. По возвращении в родные края встречается с загадочным, но своеобразным гениальным человеком. Тот в поиске соседа по квартире. Лондон, 2010 год. Происходят необъяснимые убийства. Скотланд-Ярд без понятия, за что хвататься. Существует лишь один человек, который в силах разрешить проблемы и найти ответы на сложные вопросы',
    category: category_serial
)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "breakingbad.png")),
  filename: 'breakingbad.png',
  content_type: 'application/png',
  identify: false
)
film = Film.create!(
  name: 'Stars on the ground',
    trailer_link: 'https://www.youtube.com/watch?v=4RK5HzjSwPs&feature=emb_logo&ab_channel=StandUP',
    rating: 8.1,
    year: 2007,
    director: 'Jack',
    description: 'Маленький мальчик 8 лет Ишан Авасти с рождения немного отличается от других детей. Ему дается с трудом то, что у других получается очень легко. Мир не понимает этого ребенка, как и его собственные родители. Когда Ишан в третий раз проваливает экзамены в школе, его отец в наказание отправляет мальчика в школу-интернат',
    category: category_film
)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "cloud.png")),
  filename: 'cloud.png',
  content_type: 'application/png',
  identify: false
)

film = Film.create!(
  name: 'Game of Thrones',
  trailer_link: 'https://www.youtube.com/watch?v=MheHw-rbMMg&ab_channel=%D0%92%D0%A0%D0%B5%D0%B9%D1%82%D0%B8%D0%BD%D0%B3%D0%B5',
  rating: 9,
  year: 2011-2019,
  director: 'Robert',
  description: 'К концу подходит время благоденствия, и лето, длившееся почти десятилетие, угасает. Вокруг средоточия власти Семи королевств, Железного трона, зреет заговор, и в это непростое время король решает искать поддержки у друга юности Эддарда Старка',
  category: category_serial
)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "matrix.png")),
  filename: 'matrix.png',
  content_type: 'application/png',
  identify: false
)