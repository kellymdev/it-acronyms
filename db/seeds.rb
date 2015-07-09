require 'faker'

20.times do
  Acronym.create(
                  name: Faker::Hacker.abbreviation,
                  definition: Faker::Hacker.adjective,
                  description: Faker::Hacker.say_something_smart
                )
end