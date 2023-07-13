# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: "kathleen@test.com", password: "password")

Category.create(name: "Auto and Transport")
Category.create(name: "Bills and Utilities")
Category.create(name: "Business Services")
Category.create(name: "Education")
Category.create(name: "Entertainment")
Category.create(name: "Fees and Charges")
Category.create(name: "Financial")
Category.create(name: "Food and Dining")
Category.create(name: "Gifts and Donations")
Category.create(name: "Health and Fitness")
Category.create(name: "Home")
Category.create(name: "Income")
Category.create(name: "Investments")
Category.create(name: "Kids")
Category.create(name: "Loans")
Category.create(name: "Misc Expenses")
Category.create(name: "Personal Care")
Category.create(name: "Pets")
Category.create(name: "Shopping")
Category.create(name: "Taxes")
Category.create(name: "Transfer")
Category.create(name: "Travel")

Budget.create(amount: 200, category_id: 8, user_id: 1)
