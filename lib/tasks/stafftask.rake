namespace :stafftask do

  desc 'generate users'
  task :users => :environment do
    5.times do
      User.create({username: Faker::Name.first_name })
    end
  end

end
