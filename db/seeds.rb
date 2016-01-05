10.times do
  Task.create(description: Faker::Hacker.say_something_smart)
end
