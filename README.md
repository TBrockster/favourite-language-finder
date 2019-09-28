# favourite-language-finder

## Installation Instructions

 - run the following commands (starting from projects folder)
   - git clone https://github.com/TBrockster/favourite-language-finder.git
   - cd favourite-language-finder
   - bundle install
   - rackup
 - visit http://localhost:9292/
 - Then enter a valid GitHub username, and click 'Find Favourite Language!'

## My Approach

I spent quite a lot of time deciding whether to use v3 or v4 of GitHub's API. I eventually decided on v4, because I have been wanting to try out GraphQL for a while, and I think it will make this app less complex, and easier to change. 

I decided to create the logic model before choosing whether to make this a Command-Line or Web App. I decided on a class to send a query, and another to format the response. This could then be called on by a controller, which should keep the app flexible.

I then decided that the code would be much cleaner, more readable and changeable if I mapped the response onto repo objects, containing the name, and a hash of languages, instead of simply working through the response with methods each time. However, this did mean a rather large change midway through the project, but I think it is worth doing since it makes passing new information to the other side of the application much easier.

I chose to use Sinatra as a framework, as it is very lightweight, and I think that suits this app.

## Obstacles

I struggled to test the methods that deal with the GraphQL response, and so I am relying on feature tests, using a live API call to my own GitHub profile, which will change as I continue to use it.

I also went back and forth on the decision to map the response to repo objects, which I should have planned more at the beginning.

## To Do
 - Fix pending tests
 
 - Add links to repos
 - Style
 - ???
 - Submit