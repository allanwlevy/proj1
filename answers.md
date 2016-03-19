# Q0: Why is this error being thrown?
    There is not yet a pokemon model

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
    The pokemon are appearing randomly because the @random variable called in index.html.erb is set in home_controller.rb to be a sample (random item) from the trainerless pokemon set. The common factor between the pokemon is just that- that they are trainerless.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
    the button_to method returns the contents of a form. The first parameter is the text of the button, the second parameter is the url to which the request will be sent (with optional parameters included), the third parameter is is the type of button to display, and the fourth parameter is the type of request to send.

# Question 3: What would you name your own Pokemon?
    stressedoutmon

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
