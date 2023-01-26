# Geezer

[Geezer](https://musicproject1.herokuapp.com/) is a music library app that allows users to browse, search and create different entries for their favourite music. Users can also sign-up to Geezer, favourite artists, albums and songs to create a personalised favourite's page and edit previous entries. Geezer is designed for users to be able easily navigate through music artists, albums and songs to discover and learn. 

## Architecture and models
    
The main architecture is in the linking between the different music related models. The Artists and Albums models are connected through the Songs model, which has a HABTM relationship with genres. This allows Artists and Albums to inherit genres through songs. There is also a Users model that stores user data and three Favourite_ models that belong to the user.

## Technologies used

  - Ruby v2.7.7
  - Rails v5.2.8.1
  - Database: PostgreSQL
  - Deployed using: Heroku

## Improvement ideas & additional features
 - Adjusting the favourite button to toggle between 'favourite' and 'remove favourite' instead of redirecting to another page.
 - A result sorting function to give users the ability to sort by 'alphabetical order', 'date', 'length'.
 - Improving the search function so users can choose which database they would like to search.
 - Improving the new entries form by creating a streamlined for that gathers data for multiple databases.
 - Redesign the navigation bar and add a quick search function.
 - Implement an album playlist on an album's show page
 - Implement Cloudinary.

## Acknowledgements

Thank you Joel & CJ for all your help and support throughout the project, especially helping me understand new concepts. Also, a shoutout to Fung for your help with understanding and implementing the YouTube API.

© Nick Waddington 2023
