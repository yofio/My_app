# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "管理者",
  email: "admin1@example.jp",
  password:  "1234567",
  password_confirmation: "1234567",
  admin: true
)

# Item.create!(
#   title: "炊飯器を比べました",
#   item1: "象印",
#   item2: "タイガー",
#   body1: "炊飯器を比べたら面白い結果が出ました",
#   img: "",
#   user_id: "1",
#   feature1: "コスパ",
#   feature2: "性能",
#   feature3: "見た目",
#   feature4: "コスパ",
#   feature5: "性能",
#   feature6: "見た目",
#   rate1: "2",
#   rate2: "3.5",
#   rate3: "4",
#   rate4: "4.5",
#   rate5: "1",
#   rate6: "5",
#   category_id: "1"
# )