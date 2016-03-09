# Q0: Why is this error being thrown?
Uninitialized constant HomeController::Pokemon means that we need to define a Pokemon model in app/models as pokemon.rb

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Random Pokemon are appearing because they are populated in the database. Furthermore, if we inspect home_controller.rb, we see that the @pokemon that are appearing are selected if they have no trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It's accessing the path '/capture' and providing parameter :id to @pokemon, getting the current pokemon's id, and sending an HTTP patch request.

# Question 3: What would you name your own Pokemon?
Swashbuckler

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
redirect_to was to trainer_path where the :id was passed in as the current_trainer's id. This is so we get back to the trainers route and the current_trainer profile is displayed.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
messages.html has code to display the errors and so we are providing the flash function in messages.html with the validation error that the Pokemon model raised.

# Give us feedback on the project and decal below!
The biggest difficulty for me was with the routing so emphasize 'rake routes' and give some advice on the routing.

# Extra credit: Link your Heroku deployed app
