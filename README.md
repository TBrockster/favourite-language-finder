# favourite-language-finder

## Installation Instructions

 - git clone https://github.com/TBrockster/favourite-language-finder.git
 - cd favourite-language-finder
 - In a REPL
   - Instatiate new instance of FavLangFinder class (my_fav_lang_finder = FavLangFinder.new)
   - Call on the send_graphql_query method with an argument of a github username (my_fav_lang_finder('TBrockster'))

## My Approach

I spent quite a lot of time deciding whether to use v3 or v4 of GitHubs api. I eventually decided on v4, because I have been wanting to try out GraphQL for a while, and I think it will make this app less complex, and easier to change. 

I decided to create the logic model before choosing whether to make this a Command Line or Web App. I decided on a class to send a query, and another to format the response. This could then be called on by a controller, which should keep the app flexible.

I then decided that the code would be much cleaner, more readable and changeable if I mapped the reponse onto repo objects, containing the name, and hash of languages, instead of simply working through the response with methods each time. However, this did mean a rather large change midway through the project.

## Obstacles

I struggled to test the methods that deal with the GraphQL response, and so I am relying quite heavily on feature tests, using a live api call to my own GitHub profile, which will change as I continue to use it.

I also went back and forth on the decision to map the response to repo objects, which I should have planned more at the beginning.