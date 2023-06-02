# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Image.delete_all
Image.reset_pk_sequence
Image.create([
               {name: 'Дмитрий Яшкин', team: 'СКА', file: 'jashkin.jpeg', goals: 40, assists: 22, theme_id: 2},
               {name: 'Владимир Ткачев', team: 'Авангард', file: 'tkachyov.jpeg', goals: 23, assists: 36, theme_id: 2},
               {name: 'Александр Радулов', team: 'Ак Барс', file: 'radulov.jpeg', goals: 25, assists: 32, theme_id: 2},
               {name: 'Стефан Да Коста', team: 'Автомобилист', file: 'da costa.jpeg', goals: 20, assists: 36, theme_id: 2},
               {name: 'Александр Хохлачев', team: 'Спартак', file: 'hohlachev.jpeg', goals: 19, assists: 36, theme_id: 2},
               {name: 'Тейлор Бек', team: 'Сибирь', file: 'beck.jpeg', goals: 18, assists: 37, theme_id: 2},
               {name: 'Николай Коваленко', team: 'Торпедо', file: 'kovalenko.jpeg', goals: 21, assists: 33, theme_id: 2},
               {name: 'Константин Окулов', team: 'ЦСКА', file: 'okulov.jpeg', goals: 18, assists: 36, theme_id: 2},
               {name: 'Филипп Майе', team: 'Металлург Мг', file: 'mallet.jpeg', goals: 22, assists: 31, theme_id: 2},
               {name: 'Сергей Шмелев', team: 'Салават Юлаев', file: 'shmelev.jpeg', goals: 19, assists: 32, theme_id: 2},
               {name: 'Райан Спунер', team: 'Динамо Мн', file: 'spooner.jpeg', goals: 19, assists: 28, theme_id: 2},
               {name: 'Антон Бурдасов', team: 'Трактор', file: 'burdasov.jpeg', goals: 19, assists: 37, theme_id: 2},
               {name: 'Джордан Уил', team: 'Динамо М', file: 'weal.jpeg', goals: 14, assists: 29, theme_id: 2},
               {name: 'Игорь Гераськин', team: 'Северсталь', file: 'geraskin.jpeg', goals: 14, assists: 29, theme_id: 2},
               {name: 'Максим Шалунов', team: 'Локомотив', file: 'shalunov.jpeg', goals: 29, assists: 13, theme_id: 2},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
               {name: "-----"}, # 1 Нет темы
               {name: "Какое количество очков наберет игрок в следующем сезоне регулярного чемпионата?"}, # 2
             ])

User.delete_all
User.reset_pk_sequence
User.create([
              {name: "Example User", email: "example@railstutorial.org",
               password: "222222", password_confirmation: "222222"},
            ])