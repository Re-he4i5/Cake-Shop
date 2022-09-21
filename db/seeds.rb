# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
    email: "admin@admin",
    password: "adminadmin"
)

Customer.create!(
  [
    {
      first_name: "名前",
      last_name: "苗字",
      first_name_kana: "ナマエ",
      last_name_kana: "ミョウジ",
      email: "test1@test1",
      postal_code: "1111111",
      address: "test1県test1市",
      telephone_number: "11111111111",
      is_deleted: true,
      password: "111111",
    },
    {
      first_name: "太郎",
      last_name: "鈴木",
      first_name_kana: "タロウ",
      last_name_kana: "スズキ",
      email: "test2test2@gmail.com",
      postal_code: "2222222",
      address: "愛知県名古屋市2222",
      telephone_number: "22222222222",
      is_deleted: false,
      password: "222222",
    }
  ]
)

Genre.create!(
  [
    {
      name: "ケーキ",
      is_active: true,
    },
    {
      name: "焼き菓子",
      is_active: true,
    },
    {
      name: "プリン",
      is_active: true,
    },
    {
      name: "キャンディ",
      is_active: false,
    }
  ]
)

Item.create!(
  [
    {
      name: "いちごのショートケーキ",
      genre_id: "1",
      introduction: "いちごがたくさん使われたケーキ",
      price: "800",
      is_active: true,
    },
    {
      name: "チョコクッキー",
      genre_id: "2",
      introduction: "チョコが練り込まれたクッキー",
      price: "850",
      is_active: true,
    },
    {
      name: "プリン",
      genre_id: "3",
      introduction: "普通のプリン",
      price: "1000",
      is_active: false,
    },
    {
      name: "プリン",
      genre_id: "3",
      introduction: "普通のプリン",
      price: "1000",
      is_active: false,
    },
    {
      name: "プリン",
      genre_id: "3",
      introduction: "普通のプリン",
      price: "1000",
      is_active: false,
    },
    {
      name: "プリン",
      genre_id: "3",
      introduction: "普通のプリン",
      price: "1000",
      is_active: false,
    },
    {
      name: "プリン",
      genre_id: "3",
      introduction: "普通のプリン",
      price: "1000",
      is_active: false,
    },
    {
      name: "プリン",
      genre_id: "3",
      introduction: "普通のプリン",
      price: "1000",
      is_active: false,
    },
    {
      name: "プリン",
      genre_id: "3",
      introduction: "普通のプリン",
      price: "1000",
      is_active: false,
    }
  ]
)

Address.create!(
  [
    {
      customer_id: 1,
      name: "111",
      postal_code: "1111111",
      address: "111県111市111町"
    },
    {
      customer_id: 2,
      name: "222",
      postal_code: "2222222",
      address: "22県22市22町"
    },
    {
      customer_id: 2,
      name: "勤務先",
      postal_code: "2222424",
      address: "22県24市2424"
    }
  ]
)