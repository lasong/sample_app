# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "Lekealem Asong"
  user.email                 "lasong@invision.de"
  user.password              "fonkeu"
  user.password_confirmation "fonkeu"
end

Factory.sequence :name do |n|
  "Person #{n}"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end