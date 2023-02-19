# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ApplicationRecord.transaction do
    Cat.destroy_all
    ActiveRecord::Base.connection.reset_pk_sequence!('cats')
    cat1 = Cat.create(color: 'brown', name: 'Chester', sex: 'M', birth_date: '2015/01/20')
    cat2 = Cat.create(color: 'brown', name: 'Tony', sex: 'M', birth_date: '2023/02/16')
    cat3 = Cat.create(color: 'black', name: 'Angela', sex: 'F', birth_date: '2015/10/31')
    cat4 = Cat.create(color: 'white', name: 'Susie', sex: 'F', birth_date: '2019/7/2')
end