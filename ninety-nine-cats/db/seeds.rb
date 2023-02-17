# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ApplicationRecord.transaction do
    Cat.destroy_all
    cat1 = Cat.create(color: 'brown', name: 'Chester', sex: 'M', birth_date: '2015/01/20')
    cat2 = Cat.create(color: 'brown', name: 'Chester2', sex: 'M', birth_date: '2023/02/16')
end