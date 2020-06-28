# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
2.times do |n|
    Location.create!(
    address: n + 1,
    )
end

user = User.new(
:email => 'hogehoge@hoge.com',
:password => '072072oO',
:name => 'テスト太郎',
:nickname => 'たろう',
:sex => '1'
)
user.save!