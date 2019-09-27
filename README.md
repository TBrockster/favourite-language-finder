# favourite-language-finder

## Installation Instructions

 - git clone https://github.com/TBrockster/favourite-language-finder.git
 - cd favourite-language-finder
 - In a REPL
   - Instatiate new instance of FavLangFinder class (my_fav_lang_finder = FavLangFinder.new)
   - Call on the send_graphql_query method with an argument of a github username (my_fav_lang_finder('TBrockster'))

## My Approach

I spent quite a lot of time deciding whether to use v3 or v4 of GitHubs api. I eventually decided on v4, because I have been wanting to try out GraphQL for a while, and I think it will make this app less complex. 

I decided to use a pair of classes to make GraphQL queries, and to wrap the query into an object, so a 3rd class could easily handle the information.