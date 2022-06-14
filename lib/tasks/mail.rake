namespace :mail do
    desc "Sending Email to users"
    task :send_email => :environment do
        puts "I'm in rake task"
        UpdateMailer.with(user: self).new_feature.deliver
    end
end
