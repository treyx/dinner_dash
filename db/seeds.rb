#rice_items

Item.create(title: "Donburi", description: "Donburi refers to a bowl of plain cooked rice with some other food on top of it. Some of our most popular varieties are gyudon (stewed beef), katsudon (tonkatsu), tendon (tempura), oyakodon (chicken and egg), tekkadon (maguro), and kaisendon (raw seafood).", price: 7.50, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/donburi.jpeg"))
Item.create(title: "Onigiri", description: "Onigiri, or rice balls, are made of cooked rice and are usually wrapped in nori seaweed. Ours are lightly seasoned with salt and contain a filling of your choice such as umeboshi (pickled Japanese plum), okaka (dried bonito shavings and konbu), or salmon.", price: 5.00 , status: 0, picture: File.new("#{Rails.root}/public/seed_photos/2_onigiri.jpeg"))
Item.create(title: "Chazuke", description: "Chazuke, or ochazuke, is a simple comfort food consisting of hot water, tea, or light fish stock poured over rice. Your chazuke can be garnished with toppings such as umeboshi, grilled salmon, or pickles." , price: 4.00 , status: 0, picture: File.new("#{Rails.root}/public/seed_photos/3-chazuke.jpeg"))

#sushi/seafood

Item.create(title: "Sashimi", description: "Sashimi is raw seafood. A large number of fish can be enjoyed raw if they are fresh and prepared correctly. Most types of sashimi are enjoyed with soy sauce and wasabi." , price: 15.00, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/4Sashimi.jpg"))

#noodle_items

Item.create(title: "Soba", description: "Soba are native Japanese noodles made of buckwheat flour or a mixture of buckwheat and wheat flour. Our soba are about as thick as spaghetti, and are served either hot or cold and with various toppings of your choice.", price: 8.50, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/5soba.jpg"))
Item.create(title: "Udon", description: "Udon are Japanese noodles made of wheat flour. Udon are thicker than soba and are also served either hot or cold and with various toppings of your choice such as fried tofu (kitsune udon), tempura (tempura udon), and mountain vegetables (sansai udon).", price: 8.50 , status: 0, picture: File.new("#{Rails.root}/public/seed_photos/6udon.jpeg"))
Item.create(title: "Ramen", description: "Ramen is Chinese style noodles prepared in a soup with various toppings. Ramen is one of the many popular dishes that were originally introduced from China but have become completely Japanized over time.", price: 6.50, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/7Ramen.jpg"))
Item.create(title: "Somen", description: "Like Udon noodles, somen are Japanese noodles made of wheat flour, but they are much thinner than Udon and Soba. Somen are usually eaten cold and are considered a summer speciality.", price: 5.00, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/9Somen.jpg"))
Item.create(title: "Yakisoba", description: "Yakisoba are grilled or fried Chinese style noodles mixed with pieces of meat, cabbage, carrots, or other vegetables, and garnished with red ginger. It is a popular festival food." , price: 9.50, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/yakisoba.jpg"))

#nabe_items(hot-pot)

Item.create(title: "Shabu Shabu", description: "Shabu shabu is a Japanese style hot pot where pieces of thinly sliced meat, seafood, vegetables, mushrooms and tofu, are cooked by dipping them into a hot soup. The bite sized pieces are then dipped into a ponzu citrus or sesame sauce before being eaten.", price: 10.50, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/shabushabu.jpeg"))

#meat_items

Item.create(title: "Yakitori", description: "Yakitori are skewered grilled chicken pieces seasoned with salt or sauce. Almost every part of the chicken is used for yakitori including the white and dark meat, gizzards, skin, and other organs." , price: 4.00, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/yakitori.jpg"))
Item.create(title: "Tonkatsu", description: "Tonkatsu are deep fried pork cutlets. Tonkatsu is usually served accompanied by shredded cabbage or on top of cooked rice (katsudon). It is also a common addition to Japanese style curry rice (katsu kare).", price: 8.55 , status: 0, picture: File.new("#{Rails.root}/public/seed_photos/tonkatsu.jpg"))
Item.create(title: "Yakiniku", description: "Yakiniku literally means 'grilled meat' and refers to grilling bite-size pieces of meat - mostly beef and pork - on a grill at the table.", price: 13.00, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/yakiniku.jpg"))
Item.create(title: "Nikujaga", description: "Nikujaga is a popular dish of home style cooking made of sweet stewed meat (niku) and potatoes (jagaimo).", price: 14.50, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/nikujaga.jpg"))

#soy_bean items

Item.create(title: 'Hiyayakko', description: "Hiyayakko is fresh chilled tofu (usually soft tofu) commonly garnished with grated ginger, katsuobushi (shaved bonito flakes), and green onions and seasoned with soy sauce. Diners should pour a little soy sauce over the tofu before eating it." , price: 5.65, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/Hiyayakko.jpg"))
Item.create(title: "Yudofu", description: "Yudofu are tofu pieces boiled in a clear, mild soup and dipped into soy sauce or ponzu (citrus sauce) before being eaten. Yudofu is a specialty of Kyoto and commonly served during the colder winter months.", price: 8.55, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/yudofu.jpg"))
Item.create(title: "Agedashidofu", description: "Agedashidofu is made of lightly breaded tofu which is fried and served hot in a dashi soy sauce broth and commonly garnished with green onions or grated daikon.", price: 9.55, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/Agedashidofu.jpg"))
Item.create(title: "Miso Soup", description: "Miso soup is made by dissolving miso paste in fish stock (dashi). Our additions include wakame seaweed, small pieces of tofu, and sliced aburaage", price: 3.00, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/miso-soup.jpg") )

#yoshoku items (western imports)

Item.create(title: "Korokke", description: "Korokke has its origins in the croquettes which were introduced to Japan in the 19th century. Korokke consist of a filling that is breaded and deep fried, and are eaten with a worcestershire tonkatsu sauce and shredded cabbage. Ours come in many varieties depending on the filling, the most common of which is a mix of minced meat and mashed potatoes.", price: 11.50, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/Korokke.jpg"))
Item.create(title: "Omuraisu", description: "Omuraisu, short for omelete rice, is fried rice wrapped in a thin egg omelete. Omuraisu is usually shaped like a ootball and may be garnished with ketchup or demi-glace sauce.", price: 4.55, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/Omuraisu.jpg"))
Item.create(title: "Hayashi Raisu", description: "Hayashi rice is Japanese style hashed beef stew, thinly sliced beef and onions in a demi-glace sauce served over or along side cooked rice. It resembles kare raisu, and, like kare raisu, is also eaten with a spoon.", price: 6.55, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/hayashi_rice.jpg"))
Item.create(title: "Hambagu", description: "Hambagu is Japanese style hamburger steak (as opposed to hambaga, which are hamburgers in a bun). Hambagu is usually served on a plate along side vegetables and rice or bread, and seasoned with a demi-glace sauce.", price: 7.55, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/hambagu.jpg"))

#misc items

Item.create(title: "Okonomiyaki", description: "Okonomiyaki is a type of pancake where various ingredients such as seafood, vegetables and meat are mixed into a batter and grilled.", price: 11.50 , status: 0, picture: File.new("#{Rails.root}/public/seed_photos/okonomiyaki1.jpg"))
Item.create(title: "Monjayaki", description: "Monjayaki is a Kanto region specialty that is similar to okonomiyaki; however, the batter used is much thinner than okonomiyaki resulting in a moister, less uniform dish.", price: 12.55, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/Monjayaki.jpg"))
Item.create(title: "Gyoza", description: "Gyoza are dumplings stuffed with a filling made of minced vegetables and ground meat. Gyoza were introduced to Japan from China. Our gyoza are usually prepared by frying them, and they are commonly served as a side dish to ramen.", price: 3.55, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/gyoza.jpg"))
Item.create(title: "Chawanmushi", description: "Chawanmushi is savory steamed egg custard that usually contains pieces of chicken, shrimp, fish cake and a ginko nut mixed inside. It is served in a small, lidded cup, and eaten with a spoon.", price: 4.55, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/Chawan-mushi.jpg"))
Item.create(title: "Pickles", description: "Japanese pickles, or tsukemono, come in many varieties, and are served as an appetizer, side dish, or snack, or used as a garnish or topping. They are thought to aid in digestion, and a small dish of pickles is usually served with traditional Japanese meals.", price: 2.00 , status: 0, picture: File.new("#{Rails.root}/public/seed_photos/japanese_pickles.jpg"))

#multi_category_items

Item.create(title: "Tempura", description: "Our Tempura consists of seafood, vegetables, mushrooms, or meat coated with batter and deep fried. The resulting food has a light, but crispy texture, that may be seasoned with salt or dipped in a light sauce before eating. Tempura was introduced to Japan by the Portuguese in the 16th century, and has become one of Japan's most famous dishes internationally.", price: 9.50, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/tempura.jpg"))
Item.create(title: "Oden", description: "Our nabe dish prepared with various fish cakes, daikon, boiled eggs, konyaku and kombu seaweed, slow simmered in a soy sauce based soup.", price: 6.75, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/oden-pot.jpg"))
Item.create(title: "Kare Raisu", description: "Kare Raisu (Curry Rice) is cooked rice with a Japanese curry sauce; curry is not a native Japanese spice, but has been used in Japan for over a century.  Ours can be served with additional toppings such as tonkatsu. Our kare raisu is a very popular dish." , price: 6.00, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/kareraisu.jpg"))
Item.create(title: "Chahan", description: "Chahan, or fried rice, is a dish that was originally introduced from China. You may add peas, egg, green onions (negi), carrots and pork.", price: 5.45, status: 0, picture: File.new("#{Rails.root}/public/seed_photos/chahan.jpg"))

#retired_items

Item.create(title: "Kayu", description: "Kayu, or okayu, is Japanese rice porridge made by slow cooking rice in lots of water. It tends to be thicker than other types of rice porridge or gruel. Kayu is often garnished with umeboshi." , price: 1.00, status: 1, picture: File.new("#{Rails.root}/public/seed_photos/okayu2.jpg"))
Item.create(title: "Yakizakana", description: "Yakizakana means grilled fish. Many varieties of fish are enjoyed in this way, including mackerel (saba), salmon (sake), mackerel pike (sanma), horse mackerel (aji), Okhotsk atka mackerel (hokke), sea bream (tai) and sweetfish (ayu).", price: 10.00 , status: 1, picture: File.new("#{Rails.root}/public/seed_photos/yakizakana.jpg"))
Item.create(title: "Chanko Nabe", description: "Chanko nabe is the traditional staple diet of sumo wrestlers. There are many varieties of chanko nabe, which can be tried at one of the several specialty chanko nabe restaurants found around Ryogoku, the sumo district in Tokyo." , price: 9.75, status: 1, picture: File.new("#{Rails.root}/public/seed_photos/chanko_nabe.jpg"))
Item.create(title: "Teppanyaki", description: "Meat, seafood and vegetables are prepared on a large iron griddle (teppan) around which the diners are seated. The chef artfully prepares the dishes in front of his customers." , price: 10.00, status: 1, picture: File.new("#{Rails.root}/public/seed_photos/Teppanyaki.gif"))

#categories

Category.create(title: 'Rice Dishes', description: "For over 2000 years, rice has been the most important food in Japanese cuisine. Despite changes in eating patterns over the last few decades and slowly decreasing rice consumption in recent years, rice remains one of the most important ingredients in Japan today.")
Category.create(title: 'Sushi', description: "Sushi may refer to any dish that contains sushi rice, cooked white rice flavored with seasoned rice vinegar. There are various kinds of sushi dishes, such as nigirizushi (hand formed sushi), makizushi (rolled sushi), and chirashi (sushi rice topped with raw fish). Sushi is the most famous Japanese dish outside of Japan, and one of the most popular dishes among the Japanese themselves.")
Category.create(title: 'Noodle Dishes', description: 'There are various traditional Japanese noodle dishes as well as some dishes which were introduced to Japan and subsequently Japanized. Noodle dishes are very popular in Japan, and are served both hot and cold depending on the season. Noodle restaurants and food stands are ubiquitous, and it is common to find noodle stands along train platforms.')
Category.create(title: 'Nabe', description: "Nabe, or hot pot dishes, are prepared in a hot pot, usually at the table. Typical ingredients are vegetables such as negi (Japanese leek) and hakusai (Chinese cabbage), various mushrooms, seafood and/or meat. There are many regional and personal varieties, and they are especially popular in the cold winter months.")
Category.create(title: 'Meat Dishes', description: "Meat has been eaten in Japan in larger amounts only since the second half of the 19th century. Nowadays there are a variety of popular Japanese meat dishes.")
Category.create(title: 'Soybean Dishes', description: "Tofu, natto, miso and many other important ingredients of Japanese cooking are made of soybeans.")
Category.create(title: 'Yoshoku Dishes', description: "A large number of Western dishes have been introduced to Japan over the centuries. Many of them have become completely Japanized, and are referred to as Yoshoku dishes. Some of the most popular ones are.")
Category.create(title: 'Miscellanous', description: "Other dishes from the wonderful island of Japan")


#ordered_orders(cart)

Order.create(cart_items: { "1" => 1, "11" => 1 }, status: 0, user_id: 1)
Order.create(cart_items: { "2" => 1, "12" => 2 }, status: 0, user_id: 2)
Order.create(cart_items: { "3" => 2, "13" => 4 }, status: 0, user_id: 3)
Order.create(cart_items: { "4" => 1, "14" => 2 }, status: 0, user_id: 4)

#paid_orders

Order.create(cart_items: { "5" => 2, "15" => 3 }, status: 1, user_id: 1)
Order.create(cart_items: { "6" => 1, "16" => 2 }, status: 1, user_id: 2)

#cancelled_orders

Order.create(cart_items: { "7" => 4, "17" => 6 }, status: 2, user_id: 2)
Order.create(cart_items: { "8" => 1, "18" => 102837463 }, status: 2, user_id: 1)

#completed_orders

Order.create(cart_items: { "9" => 3, "19" => 2 }, status: 3, user_id: 2)
Order.create(cart_items: { "10" => 42, "20" => 42 }, status: 3, user_id: 3)


# users

User.create(full_name: "Rachel Warbelow", email: "demo+rachel@jumpstartlab.com" , display_name: nil, password: "password", role: 0)
User.create(full_name: "Jeff Casimir", email: "demo+jeff@jumpstartlab.com", display_name: "j3", password: "password", role: 0)
User.create(full_name: "Jorge Tellez", email: "demo+jorge@jumpstartlab.com", display_name: "novohispano", password: "password", role: 0)
User.create(full_name: "Josh Cheek", email: "demo+josh@jumpstartlab.com", display_name: "josh", password: "password", role: 1)
User.create(full_name: 'D G', email: "dg", display_name: 'Synergy', password: 'dg', role: 1)

#item associations

ItemsCategory.create(item_id: 1, category_id: 1)
ItemsCategory.create(item_id: 2, category_id: 1)
ItemsCategory.create(item_id: 3, category_id: 1)
ItemsCategory.create(item_id: 4, category_id: 2)
ItemsCategory.create(item_id: 5, category_id: 3)
ItemsCategory.create(item_id: 6, category_id: 3)
ItemsCategory.create(item_id: 7, category_id: 3)
ItemsCategory.create(item_id: 8, category_id: 3)
ItemsCategory.create(item_id: 9, category_id: 3)
ItemsCategory.create(item_id: 10, category_id: 4)
ItemsCategory.create(item_id: 11, category_id: 4)
ItemsCategory.create(item_id: 12, category_id: 5)
ItemsCategory.create(item_id: 13, category_id: 5)
ItemsCategory.create(item_id: 14, category_id: 5)
ItemsCategory.create(item_id: 15, category_id: 5)
ItemsCategory.create(item_id: 16, category_id: 6)
ItemsCategory.create(item_id: 17, category_id: 6)
ItemsCategory.create(item_id: 18, category_id: 6)
ItemsCategory.create(item_id: 19, category_id: 6)
ItemsCategory.create(item_id: 20, category_id: 7)
ItemsCategory.create(item_id: 21, category_id: 7)
ItemsCategory.create(item_id: 22, category_id: 7)
ItemsCategory.create(item_id: 23, category_id: 7)
ItemsCategory.create(item_id: 24, category_id: 8)
ItemsCategory.create(item_id: 25, category_id: 8)
ItemsCategory.create(item_id: 26, category_id: 8)
ItemsCategory.create(item_id: 27, category_id: 8)
ItemsCategory.create(item_id: 28, category_id: 8)

#RETIRED

ItemsCategory.create(item_id: 29, category_id: 1)
ItemsCategory.create(item_id: 30, category_id: 2)
ItemsCategory.create(item_id: 31, category_id: 4)
ItemsCategory.create(item_id: 32, category_id: 5)

#multi

ItemsCategory.create(item_id: 33, category_id: 5)
ItemsCategory.create(item_id: 33, category_id: 2)
ItemsCategory.create(item_id: 34, category_id: 2)
ItemsCategory.create(item_id: 34, category_id: 2)
ItemsCategory.create(item_id: 35, category_id: 5)
ItemsCategory.create(item_id: 35, category_id: 8)
ItemsCategory.create(item_id: 36, category_id: 5)
ItemsCategory.create(item_id: 36, category_id: 1)

#descriptions taken from: http://www.japan-guide.com/e/e2035.html
#food photos taken from google images bro
