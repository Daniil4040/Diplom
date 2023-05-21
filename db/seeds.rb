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
    director: 'Томас',
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
    director: 'Поал',
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
  name: 'Stars on Earth',
    trailer_link: "https://my.mail.ru/video/embed/1985750757479027523",
    rating: 8.1,
    year: 2007,
    director: 'Джек',
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
  year: 2011,
  director: 'Роберт',
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
  name: 'Charli and Fabricy Chocolate',
  trailer_link: "https://www.youtube.com/embed/VP3Nv9_FKqA",
  rating: 7.6,
  year: 2005,
  director: "Тим Бёртон",
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
  name: 'The Lord of the Rings: The Fellowship of the Ring',
  trailer_link: "https://www.youtube.com/embed/dePSXpQWZRI",
  rating: 8.6,
  year: 2001,
  director: "Питер Джексон",
  description: "Сказания о Средиземье — это хроника Великой войны за Кольцо, длившейся не одну тысячу лет. Тот, кто владел Кольцом, получал неограниченную власть, но был обязан служить злу. Тихая деревня, где живут хоббиты. Придя на 111-й день рождения к своему старому другу Бильбо Бэггинсу, волшебник Гэндальф начинает вести разговор о кольце, которое Бильбо нашел много лет назад. Это кольцо принадлежало когда-то темному властителю Средиземья Саурону, и оно дает большую власть своему обладателю. Теперь Саурон хочет вернуть себе власть над Средиземьем. Бильбо отдает Кольцо племяннику Фродо, чтобы тот отнёс его к Роковой Горе и уничтожил",
  category: category_film
)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "Vlastelin.png")),
  filename: 'Vlastelin.png',
  content_type: 'application/png',
  identify: false
)


film = Film.create!(
  name: 'Jackie Chan Adventures',
  trailer_link: "https://www.youtube.com/embed/NxYvHFQDC-o",
  rating: 7.7,
  year: 2002,
  director: 'Давид Хартман',
  description: 'Джеки Чан путешествует по миру в поисках древностей, многие из которых обнаруживают в себе волшебные свойства. Корме того наш герой виртуозно владеет восточными единоборствами, он - стремителен, неуловим, и борется со злом во всех его проявлениях.',
  category: category_serial
)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "Jacki.jpg")),
  filename: 'Jacki.jpg',
  content_type: 'application/jpg',
  identify: false
)

film = Film.create!(
  name: 'Peaky Blinders',
  trailer_link: "https://www.youtube.com/embed/SwQSvchPh9Y",
  rating: 7.7,
  year: 2013,
  director: 'Колм Маккарти',
  description: 'Британский сериал о криминальном мире Бирмингема 20-х годов прошлого века, в котором многолюдная семья Шелби стала одной из самых жестоких и влиятельных гангстерских банд послевоенного времени. Фирменным знаком группировки, промышлявшей грабежами и азартными играми, стали зашитые в козырьки лезвия',
  category: category_serial
)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "Kozirki.jpg")),
  filename: 'Kozirki.jpg',
  content_type: 'application/jpg',
  identify: false
)



Event.create!(
  date_event: '13.12.2022',
  title: 'Мы запустили расширенный поиск',
  body: 'Как пользоваться поиском?'
)

news = Event.create!(
  date_event: '12.03.2023',
  title: 'Мы запустили регистрацию через почту',
  body: 'Как пользоваться регистрацией?'
)

1.upto(0) do
  film = Film.create!(
    name: 'Matrix',
    trailer_link: 'https://www.youtube.com/embed/YihPA42fdQ8',
    rating: 7.5,
    year: 2001,
    director: 'Томас',
    description: 'иллюзия, существующая только в бесконечном сне обреченного человечества. Холодный мир будущего, в котором люди — всего лишь батарейки в компьютерных системах.',
    category: category_film

)

film.poster.attach(
  io: File.open(Rails.root.join("db", "images", "matrix.png")),
  filename: 'matrix.png',
  content_type: 'application/png',
  identify: false
)


end