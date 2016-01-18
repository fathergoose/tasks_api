10.times do
  Task.create(description: Faker::Hacker.say_something_smart, priority: 1 + rand(3))
end
