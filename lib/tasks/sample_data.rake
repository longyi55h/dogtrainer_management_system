namespace :db do
    desc "Fill database with sample data"
    task populate: :environment do
        User.create!(user_name: "ryu",
                     email: "ryu@aaa.com",
                     password: "jjjjjjjj")
        5.times do |n|
            user_name = Faker::Name.name
            email = "ryu#{n+1}@aaa.com"
            password = "jjjjjjjj"
            User.create!(user_name: user_name,
                         email: email,
                         password: password)
        end
        
        users = User.all(limit: 5)
        5.times do
            firstname = Faker::Name.name
            lastname = Faker::Name.name
            users.each { |user| user.owners.create!(owner_lastname: :lastname, owner_firstname: :firstname) }
        end
    end
end
