require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:index)
end

get('/process_roll') do
  @dice = params['dice'].to_i
  @sides = params['sides'].to_i
  @rolls = []

  for i in (1..@dice)
    roll = rand(1..@sides)
    @rolls.push(roll)
  end

  erb(:rolls)
end
