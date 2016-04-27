post '/form' do
  @player1 = params[:name1]
  @player2 = params[:name2]
  puts params
  erb :params
end

# In spec/features, add a new Capybara feature test that expects players to
# fill in their names (in a form), submit that form, and see those names on-screen