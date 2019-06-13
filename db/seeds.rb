# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gian = User.find_or_create_by(name: "Gian")
emily = User.find_or_create_by(name: "Emily")

pbj = Recipe.find_or_create_by(name: "Peanut Butter and Jelly Sandwich",user_id:gian.id)
c_noodle = Recipe.find_or_create_by(name: "Chicken Noodle Soup",user_id:emily.id)
congee = Recipe.find_or_create_by(name:"Congee",user_id:emily.id)

pbj.user = gian
c_noodle.user = emily
congee.user = emily

pb = Ingredient.find_or_create_by(name: "Peanut Butter")
jelly = Ingredient.find_or_create_by(name: "Jelly")
bread = Ingredient.find_or_create_by(name: "Bread")
carrot = Ingredient.find_or_create_by(name: "Carrot")
chicken = Ingredient.find_or_create_by(name: "Chicken")
chicken_broth = Ingredient.find_or_create_by(name: "Chicken Broth")
wheat_noodle = Ingredient.find_or_create_by(name: "Wheat Noodle")
celery = Ingredient.find_or_create_by(name: "Celery")
rice = Ingredient.find_or_create_by(name: "Rice")
egg = Ingredient.find_or_create_by(name: "Egg")

gian.ingredients << [jelly,pb,carrot]
emily.ingredients << [wheat_noodle,pb]

RecipeIngredient.find_or_create_by(amount: 2, measurement: "Boiled",recipe_id:congee.id, ingredient_id: egg.id)
RecipeIngredient.find_or_create_by(amount: 5, measurement: "Cups",recipe_id:congee.id, ingredient_id: rice.id)
RecipeIngredient.find_or_create_by(amount: 3, measurement: "Cups",recipe_id:congee.id, ingredient_id: chicken_broth.id)

RecipeIngredient.find_or_create_by(amount: 2, measurement: "Slices",recipe_id:pbj.id , ingredient_id:bread.id)
RecipeIngredient.find_or_create_by(amount: 3, measurement: "TBSP",recipe_id:pbj.id , ingredient_id:pb.id)
RecipeIngredient.find_or_create_by(amount: 3, measurement: "TBSP",recipe_id:pbj.id , ingredient_id:jelly.id)

RecipeIngredient.find_or_create_by(amount: 2, measurement: "Sticks",recipe_id:c_noodle.id , ingredient_id:carrot.id)
RecipeIngredient.find_or_create_by(amount: 2, measurement: "Sticks",recipe_id:c_noodle.id , ingredient_id:celery.id)
RecipeIngredient.find_or_create_by(amount: 1, measurement: "Whole",recipe_id:c_noodle.id , ingredient_id:chicken.id)
RecipeIngredient.find_or_create_by(amount: 5, measurement: "Cups",recipe_id:c_noodle.id , ingredient_id:chicken_broth.id)
RecipeIngredient.find_or_create_by(amount: 2, measurement: "Cups",recipe_id:c_noodle.id , ingredient_id:wheat_noodle.id)

