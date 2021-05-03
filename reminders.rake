require 'awesome_print'
require_relative './instructions.rb'
require 'colorize'




namespace :reminder do
 desc "M ⭐️ Working with ActiveRecord Models"
  task :model_layer do
    reminder_title("☀️", "Active Record")
    iterate_over_steps($active_record, "🏗 🔧")
  end
 desc "C ⭐️ Working with Application Controller"
  task :controller_layer do
    reminder_title("☀️", "Application Controller")
    iterate_over_steps($application_controller, "🧰 🛠")
  end
 desc "V ⭐️ Working with Action View"
  task :view_layer do
    reminder_title("☀️", "Action View")
    iterate_over_steps($action_view, "🦾 👀")
  end

 desc "⭐️ Working with Active Model Validator"
  task :validation_short do
    reminder_title("☀️", "Validation Overview")
    iterate_over_steps($active_model_validator, "✅ 💰")
  end

 desc "⭐️ Working with Active Model Validator"
  task :validation_helper_manual do
    reminder_title("☀️", "Validation Helpers Manual")
    iterate_over_steps($validator_helpers, "⛑ 🧞‍♂️")
  end


def reminder_title(emoji, title)
    puts "#{four(emoji)} INSTRUCTIONS FOR #{title.upcase} #{four(emoji)}"
end

def four(emoji)
  "#{emoji} "*2
end

def iterate_over_steps(array_of_hashes, emoji)
  array_of_hashes.each_with_index do |hash, index|
    puts "#{four(emoji)}  STEP #{index}  #{four(emoji)} "
    puts hash[:name].colorize(:grey)
    code = hash[:code].empty? ? "no code!" : hash[:code].colorize(:green) 
    puts "code:".colorize(:red).underline + " " + code
    puts "#{four("🛑")} NOTE: #{hash[:note]}" if hash[:note] 
    puts "\n\n"
  end
end 

end


































































































  desc "🙇‍♂️ KAI 🙏🏻"
  task :kai do 
    kai = 1
    while kai > 0 
    puts "#{four("🌞")} PRAISE KAI #{four("🌞")}"
    end
  end