namespace :hello_world do  
    task task_hello: :environment do
      Article.all.destroy_all
        100.times do
          p Article.create({
          title: Faker::Name.title,
          author: Faker::Name.name,
          body:Faker::Lorem.sentences.join(". "),
          })
        end
      end
  end 