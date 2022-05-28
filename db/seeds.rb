# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Category Create
# Category.create(
#     [ { name: "Starters" }, { name: "Happy Hour" }, { name: "Lunch" }, { name: "Dinner" }, { name: "Drink" }, { name: "Dessert" } ]
# )

# Food Create for Starters 
# Food.create(
#     [
#         { name: "Aloo tikki", description: "So these are potato patties made the Indian way – spiced, herby and delicious", price: 89, categories: Category.where(id: [1, 2, 3, 4]) },                                                   
#         { name: "Veg cutlet", description: "They are a good tea time snack and can also be made during monsoons.", price: 89, categories: Category.where(id: [1, 3])  },
#         { name: "French fries", description: "They are crisp as well as soft from inside and taste too good", price: 79, categories: Category.where(id: [1]) },
#         { name: "Gobi Manchurian", description: "Crispy fried cauliflower florets tossed in a spicy, sweet & umami sauce.", price: 89, categories: Category.where(id: [1, 2]) },
#         { name: "Momos", description: "Veg momos are steamed dumplings stuffed with a lightly spiced vegetable filling", price: 99, categories: Category.where(id: [1]) },
#         { name: "Mac and cheese bites", description: "Complete the dish with marinara, ranch, or spicy dipping sauce, and cocktail size hot dogs.", price: 69, categories: Category.where(id: [1,2, 4]) },
#         { name: "Soft pretzels", description: "Ensure cold beer is at hand, as pretzels and beer really are a perfect pairing!", price: 145, categories: Category.where(id: [1]) },
#         { name: "Mushroom Soup", description: "Serve for lunch or as a starter with crusty bread.", price: 59, categories: Category.where(id: [1, 2]) } 
#     ]   
# )

# Food Create For Happy Hours
# Food.create(
#     [                                                          
#     { name: "Naan bread pizzas", description: "Classic pizza veggies, like onion, tomatoes, olives, peppers, and pineapple (controversial, yes, but don’t yuck anyone’s yum!)", price: 99, categories: Category.where(id: [2]) },
#     { name: "Soft pretzels", description: "Ensure cold beer is at hand, as pretzels and beer really are a perfect pairing!", price: 145, categories: Category.where(id: [2]) },
#     { name: "Tacos", description: "Tacos make great happy hour food ideas because they satisfy hunger without being too heavy.", price: 104, categories: Category.where(id: [2]) },
#     { name: "Chips and dips", description: "Artichoke and spinach dip is a classic happy hour menu option, but you can go the extra mile for your party.", price: 79, categories: Category.where(id: [2]) },
#     { name: "Spiced carrot & lentil Soup", description: "A delicious, spicy blend packed full of iron and low in fat to boot.", price: 59, categories: Category.where(id: [2, 1]) },
#     { name: "Pumpkin Soup", description: "Whip up this easy pumpkin soup as a starter for a dinner party or a light supper.", price: 59, categories: Category.where(id: [1, 2]) },
#     { name: "Tomato Soup", description: "To make the tastiest tomato soup you’ll ever experience wait until the tomatoes.", price: 59, categories: Category.where(id: [2]) },
#     { name: "Hearty pasta Soup", description: "Do something different with a pack of tortellini. This filling soup is full of fibre and veg, plus it's low in fat.", price: 59, categories: Category.where(id: [2]) }
#     ]
# )

# Food Create for Lunch
# Food.create(
#     [ 
#         { name: "Masala Bhindi", description: "Grab some mustard oil, cumin seeds, fennel seeds, finely-chopped onions, ginger and a pinch of amchoor.", price: 109,  categories: Category.where(id: [3])}, 
#         { name: "Chana Kulcha", description: "The quintessential chana kulcha  needs only a few ingredients - cumin powder.", price: 59,  categories: Category.where(id: [3])}, 
#         { name: "Gujarati Kadhi", description: "A lovely Gujarati-style kadhi made with yogurt, gram flour, curry leaves and ginger, this one has sweet undertones.", price:75,  categories: Category.where(id: [3])}, 
#         { name: "Allahabad Ki Tehri", description: "It's aromatic, made with a lot of bright vegetables, fiery masalas and topped with desi ghee.", price: 69,  categories: Category.where(id: [3])}, 
#         { name: "Kolhapuri Vegetables", description: "A vegetarian dish with its root in Maharashtra, Kohlapuri vegetables are made with a string of glorious vegetables.", price: 59,  categories: Category.where(id: [3])},
#         { name: "Urlai Roast", description: "Oh, this one's a real delight! Perfectly boiled baby potatoes cooked in a peppery Chettinad masala, onions and tomatoes.", price:89,  categories: Category.where(id: [3])},
#         { name: "Dal Makhani", description: "Dal Makhani is a quintessential Indian dish with many variations found in different regions of our country as well as abroad.", price: 99,  categories: Category.where(id: [3])},
#         { name: "Kashmiri Rajma", description: "Rajma is a popular Indian curry made with kidney beans.", price: 78,  categories: Category.where(id: [3])},
#         { name: "Roti", description: "Fulka Roti.", price: 22,  categories: Category.where(id: [3, 4])},
#         { name: "Veg Biryani", description: "Spicy and Delicius Veg Biryani .", price: 99,  categories: Category.where(id: [3, 4])},
#         { name: "Papad", description: "Lizzat Spicy Papad .", price: 18,  categories: Category.where(id: [3, 4])}
#     ]
# )

# Food Create For Dinner 
# Food.create(
#     [ 
#         { name: "Broccoli pesto & pancetta pasta", description: "Serve this healthy bowl of pasta topped with cherry tomatoes for a quick and easy midweek meal.", price: 109, categories: Category.where(id: [4])}, 
#         { name: "7 Chessy Pizza", description: "A whole pizza with full Cheese.", price: 99, categories: Category.where(id: [4])}, 
#         { name: "Ultimate Vegetarian Italian Sub", description: "Eggplant, peppers, smoked paprika—all sandwiched between a sesame hero rol.", price:75, categories: Category.where(id: [4])}, 
#         { name: "Masala Dhosa", description: "A very spicy and Yummy Dhosa.", price: 119, categories: Category.where(id: [4])}, 
#         { name: "Peri Peri Veg Pizza", description: "A flammin Hot and spicy Pizza.", price: 159, categories: Category.where(id: [4])},
#         { name: "Kaju Kari", description: "Made with Indian recipe delicius Dish.", price:189, categories: Category.where(id: [4])},
#         { name: "Spaghetti Squash Burrito Bowls", description: "Hearty burrito bowls made with a base of perfectly roasted spaghetti squash. These are such a fun dinner option.", price: 299, categories: Category.where(id: [4])},
#         { name: "Spinach and paneer pulao", description: "Rajma is a popular Indian curry made with kidney beans.", price: 158, categories: Category.where(id: [4, 3])},
#         { name: "Enchiladas with Pumpkin Seed Salsa", description: "These enchiladas are proof that you enjoy pumpkin all year long.", price: 22, categories: Category.where(id: [3, 4])},
#         { name: "American Crispy Cheese Burger", description: "A special Giant Burguer.", price: 132, categories: Category.where(id: [4])},
#         { name: "Aloo Tiki mayonise Burger", description: "A Burger with full Mayonise.", price: 89, categories: Category.where(id: [4])},
#         { name: "Sandwich", description: "A Giant Sandwich with Mayonise and Full Cheese.", price: 159, categories: Category.where(id: [4])}
#     ]
# )

# Food Create For Drink
# Food.create(
#     [ 
#         { name: "Water", description: "Bisleri Water.", price: 19, categories: Category.where(id: [5])}, 
#         { name: "Vodka", description: "Vodka is traditionally made from potatoes or fermented cereal grains.", price: 99, categories: Category.where(id: [5, 4])}, 
#         { name: "Whiskey", description: "The distinctive taste of the drink is achieved after it is fermented in charred white oak wood.", price:79, categories: Category.where(id: [5])}, 
#         { name: "Brandy", description: "Generally an after dinner drink, brandy contains 35-60% alcohol.", price: 119, categories: Category.where(id: [5])}, 
#         { name: "Vermouth", description: "There are generally two types of vermouth- sweet and dry.", price: 119, categories: Category.where(id: [5])},
#         { name: "Beer", description: "The sugar from the barley are extracted and is converted to alcohol by the yeast.", price:129, categories: Category.where(id: [5])},
#         { name: "Port wine", description: "The most special feature about port wine is its sweet taste. It is a fortified wine and is traditionally produced in Portugal.", price: 139, categories: Category.where(id: [5])},
#         { name: "Rum", description: " The liquid is then aged in barrels.", price: 159, categories: Category.where(id: [5])},
#         { name: "Gin", description: "All the flavourings in the gin is natural.", price: 159, categories: Category.where(id: [5])},
#         { name: "Thumps Up", description: "Soft Drink", price: 49 , categories: Category.where(id: [5])},
#         { name: "Maza", description: "Soft Drink", price: 49 , categories: Category.where(id: [5])},
#         { name: "Sprite", description: "Soft Drink", price: 49 , categories: Category.where(id: [5])},  
#     ]
# )

# Food Create For Dessert 
# Food.create(
#     [ 
#         { name: "Rosterd Almond Ice-Cream", description: "Full almond Ice cream.", price: 99, categories: Category.where(id: [6])}, 
#         { name: "Venila Ice-Creame", description: "Venila Chocolate Ice Cream.", price: 99, categories: Category.where(id: [6])}, 
#         { name: "Gulab-Jamun", description: "Sweet and awsome Dessert.", price:79, categories: Category.where(id: [6])}, 
#         { name: "Jalebi", description: "A Gujrati Famouse Dessert Item.", price: 79, categories: Category.where(id: [6])}, 
#         { name: "Raw raspberry slice", description: "This raw raspberry slice tastes just as good as it looks, making it the perfect mid-afternoon treat that you don't have to feel guilty about.", price: 119, categories: Category.where(id: [6])},
#         { name: "Beer", description: "The sugar from the barley are extracted and is converted to alcohol by the yeast.", price: 99, categories: Category.where(id: [6])},
#         { name: "Treacle tart", description: "Treat family and friends to a comforting treacle tart with crumbly pastry and rich filling.", price: 122, categories: Category.where(id: [6])},
#         { name: "Floating islands", description: "Whip up some floating islands at your next dinner party, the retro-cool French dessert.", price: 69, categories: Category.where(id: [6])},
#         { name: "Chocolate & malt loaf torte", description: "Don’t be deceived by how easy this is to make – the result is a rich, dense cake with a malted coating.", price: 59, categories: Category.where(id: [6])},
#         { name: "Espresso mud cakes, chocolate syrup & ice cream", description: "To finish your meal try this take on coffee and dessert, and if you have any coffee.", price: 149 , categories: Category.where(id: [6])},
#         { name: "Dark chocolate & cherry bar", description: "This impressive looking dessert is a chocolate lover's dream and no one will guess it uses just four ingredients.", price: 49 , categories: Category.where(id: [6])},
#         { name: "Rhubarb crumble", description: "Make this classic rhubarb crumble for an easy, family-friendly dessert. ", price: 169 , categories: Category.where(id: [6])},  
#     ]
# )
