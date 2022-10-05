# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

User.destroy_all

Us = Picture.new(detail: "foto nossa")
Us.photo.attach(io: URI.open("https://images.unsplash.com/photo-1639619628924-eced0acbab4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=583&q=80"), filename: "assistant12.png", content_type: "image/jpeg")

puts "Data Base CLEANED"
