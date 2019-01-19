namespace :createcomments do
    task createcomments: :environment do
        Comment.all.destroy_all 
        5.times do
            Article.each do |article|
                p Comment.create({
                author: Faker::Name.name,
                body:Faker::Lorem.sentences.join(". "),
                article_id:Faker::IDNumber,
                })
            end
        end
    end
end