namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
	admin = User.create!(:name => "Lekealem Asong",
                 :email => "lekealemasong@yahoo.de",
                 :password => "Ndemafia86",
                 :password_confirmation => "Ndemafia86")
	admin.toggle!(:admin)
    User.create!(:name => "Example User",
                 :email => "example@railstutorial.org",
                 :password => "foobar",
                 :password_confirmation => "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
	User.create!(:name => "Nadege Fonkeu",
                 :email => "pharmastudentin@yahoo.de",
                 :password => "njofang",
                 :password_confirmation => "njofang")
	
	40.times do
      User.all(:limit => 6).each do |user|
        user.microposts.create!(:content => Faker::Lorem.sentence(5))
      end
    end
  end
end