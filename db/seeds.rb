# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = User.create! email: 'john@example.com', password: '1'
jane = User.create! email: 'jane@example.com', password: '1'

liselotte_welskopf = Author.create! first_name: 'Liselotte', last_name: 'Welskopf-Henrich', country: 'Germany', genre: 'Adventure'
the_sons_of_the_great_bear = Book.create!(
  title: 'Die Söhne der Großen Bärin',
  description: "Indianer-Roman-Hexalogie von Liselotte Welskopf-Henrich, welche besonders in der Deutschen Demokratischen Republik (DDR) sehr erfolgreich war und auch heute noch viele Anhänger hat. Zunächst erschien 1951 eine einbändige Ausgabe Die Söhne der großen Bärin, die ab 1963 um die Vorgeschichte der Jugend von Harka zur Trilogie erweitert wird. Es erscheinen Harka, der Sohn des Häuptlings und Top und Harry. Die ursprüngliche Erzählung erscheint als dritter Band und 1982 ein letztes Mal unter dem Titel Der Häuptling.",
  author: liselotte_welskopf,
  publish_year: 1962
)

george_orwell = Author.create! first_name: 'George', last_name: 'Orwell', country: 'United Kingdom', genre: 'Distopia, Drama, Satire'
nineteen_eighty_four = Book.create!(
  title: '1984',
  description: "The story takes place in an imagined future, the year 1984, when much of the world has fallen victim to perpetual war, omnipresent government surveillance, historical negationism, and propaganda. Great Britain, known as Airstrip One, has become a province of a totalitarian superstate named Oceania that is ruled by the Party who employ the Thought Police to persecute individuality and independent thinking.[5] Big Brother, the leader of the Party, enjoys an intense cult of personality despite the fact that he may not even exist. The protagonist, Winston Smith, is a diligent and skillful rank-and-file worker and Party member who secretly hates the Party and dreams of rebellion. He enters into a forbidden relationship with a colleague, Julia, and starts to remember what life was like before the Party came to power.",
  author: george_orwell,
  publish_year: 1949
)
_animal_farm = Book.create!(
  title: 'Animal Farm',
  description: "The book tells the story of a group of farm animals who rebel against their human farmer, hoping to create a society where the animals can be equal, free, and happy. Ultimately, however, the rebellion is betrayed, and the farm ends up in a state as bad as it was before, under the dictatorship of a pig named Napoleon.",
  author: george_orwell,
  publish_year: 1945
)

ivan_vazov = Author.create! first_name: 'Ivan', last_name: 'Vazov', country: 'Bulgaria', genre: 'Lyric poetry,Еpic,drama,adventure'
_pod_igoto = Book.create!(
  title: 'Под игото',
  description: "Роман из живота на българите в предвечерието на Освобождението. В три части. С 25 илюстрации в текста. „Под игото“ е роман в три части от българския писател Иван Вазов, цялостно публикуван за първи път през 1894 г. и определян като първия пример за този жанр в българската литература. Творбата е най-популярното произведение на автора, както и най-четената и превеждана българска книга.",
  author: ivan_vazov,
  publish_year: 1894
)

Book.create!(
  title: 'Bible',
  description: "The Bible is a collection of religious texts or scriptures sacred to Christians, Jews, Samaritans, Rastafari and others. They generally consider the Bible to be a product of divine inspiration and a record of the relationship between God and humans. The Bible appears in the form of an anthology, a compilation of texts of a variety of forms that are all linked by the belief that they collectively contain the word of God. These texts include theologically-focused historical accounts, hymns, parables, didactic letters, erotica, sermons, poetry, and prophecies."
)

 Review.create!([
  {user: john, book: nineteen_eighty_four, title: 'A great reminder!', description: 'Although this book was written shortly after WWII, almost 80 years ago, it still applies to certain countries...'},
  {user: jane, book: nineteen_eighty_four, title: 'Quite real', description: 'It is one of the classics that everyone should read'},
  {user: jane, book: the_sons_of_the_great_bear, title: 'Amazing adventures!!!', description: 'I love the adventures that Harka and Matotaupa undertake in this book! Also, the book itself is a sad reminder of how native americans were treated by the new settlers'},
 ])