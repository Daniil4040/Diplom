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
  io: File.open(Rails.root.join("db", "images", "matrix.png")),
  filename: 'matrix.png',
  content_type: 'application/png',
  identify: false
)

film = Film.create!(
    name: 'Sherlock',
    trailer_link: "https://www.youtube.com/embed/eMM7sX4-6gc",
    rating: 8.0,
    year: 2010,
    director: 'Poal',
    description: 'События разворачиваются в наши дни. Он прошел Афганистан, остался инвалидом. По возвращении в родные края встречается с загадочным, но своеобразным гениальным человеком. Тот в поиске соседа по квартире. Лондон, 2010 год. Происходят необъяснимые убийства. Скотланд-Ярд без понятия, за что хвататься. Существует лишь один человек, который в силах разрешить проблемы и найти ответы на сложные вопросы',
    category: category_serial
)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "sherlock.png")),
  filename: 'sherlock.png',
  content_type: 'application/png',
  identify: false
)
film = Film.create!(
  name: 'Stars on the ground',
    trailer_link: "https://my.mail.ru/video/embed/1985750757479027523",
    rating: 8.1,
    year: 2007,
    director: 'Jack',
    description: 'Маленький мальчик 8 лет Ишан Авасти с рождения немного отличается от других детей. Ему дается с трудом то, что у других получается очень легко. Мир не понимает этого ребенка, как и его собственные родители. Когда Ишан в третий раз проваливает экзамены в школе, его отец в наказание отправляет мальчика в школу-интернат',
    category: category_film
)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "Stars.png")),
  filename: 'Stars.png',
  content_type: 'application/png',
  identify: false
)

film = Film.create!(
  name: 'Game of Thrones',
  trailer_link: "https://kg-portal.ru/t44734",
  rating: 9,
  year: 2011-2019,
  director: 'Robert',
  description: 'К концу подходит время благоденствия, и лето, длившееся почти десятилетие, угасает. Вокруг средоточия власти Семи королевств, Железного трона, зреет заговор, и в это непростое время король решает искать поддержки у друга юности Эддарда Старка',
  category: category_serial
)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "pristol.png")),
  filename: 'pristol.png',
  content_type: 'application/png',
  identify: false
)

film = Film.create!(
  name: 'Charlie and the Chocolate Factory',
  trailer_link: "https://www.youtube.com/embed/VP3Nv9_FKqA",
  rating: 7.6,
  year: 2005,
  director: "Tim Berton",
  description: "Какие чудеса ждут вас на фабрике Вилли Вонки? Только представьте: травяные луга из сладкого мятного сахара в Шоколадной Комнате ... Можно проплыть по Шоколадной реке на розовой сахарной лодке ... Или поставить эксперименты в Комнате изобретений с леденцами, которые никогда не тают ",
  category: category_film
)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "Charli.jpg")),
  filename: 'Charli.jpg',
  content_type: 'application/jpg',
  identify: false
)

film = Film.create!(
  name: 'Jackie Chan Adventures',
  trailer_link: "https://www.youtube.com/embed/NxYvHFQDC-o",
  rating: 7.7,
  year: 2002,
  director: 'David Hartman',
  description: 'Джеки Чан путешествует по миру в поисках древностей, многие из которых обнаруживают в себе волшебные свойства. Корме того наш герой виртуозно владеет восточными единоборствами, он - стремителен, неуловим, и борется со злом во всех его проявлениях.',
  category: category_serial
)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "Jacki.jpg")),
  filename: 'Jacki.jpg',
  content_type: 'application/jpg',
  identify: false
)

