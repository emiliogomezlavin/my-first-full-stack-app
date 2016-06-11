![MacDown logo](https://media.glassdoor.com/sql/459214/general-assembly-squarelogo-1389133751210.png)

# Read Me    


Hello there! I’m **Emilio Gomez**, and this is a Read Me file of my 2nd WDI project: my First Full-Stack Web App called Travelution.

Let me introduce the project!

</br>


## How it works

**The App** is a dynamic traveling destinations database that allows the user to find, search and store the best destinations while getting back relevant information like country, latitude, longitude and even the street view of each place.

</br>


## Technologies used

**Sinatra** was the main framework used with Ruby for the server side management. The following Ruby Gems were required:

-  gem "sinatra-activerecord" ==>  used to manipulate the SQL database via postgreSQL
-  gem "rake"==> used to populate the migrations and schema creations for the Models
-  gem "pg" ==>  PostgreSQL used as the SQL framework
-  gem "tux" ==>  Environment to test and managa the database
-  gem "geocoder"  ==> fetching latitude and longitude from address

</br>
**MVC** system for a leaner and more efficient code

**CRUD operation** for conventional routes

**Javascript** was used to provide all the functionality

**Google Maps API** was used to provide the maps and the information about the destinations

**JQuery** library was used to run certain EventListeners from the Materialize Library

**CSS** was usde for the look & feel of the site

**Bootstrap** library originally used for the grid and wireframe of the game plus some additional embedded styling for buttons and forms

**MaterializeCSS** library was the main source for styling

**Animate.css** was used to add animation on some elements

**Heroku** for website deployment and hosting

**Moqups** was used to create the game wireframe

</br>


## User Stories and the planning process

**User Stories**

1. User lands on home page and chooses if he wants to choose from one of Travelution suggested destinations or add a new destination for the community
2. USER CHOOSES TO VIEW THE LIST OF DESTINATIONS:
3. User gets redirected to a page that shows the different destinations which have the name of the destination and an image
4. User can click on the destination and get redirected to a page with the detailed information (name, country, image, location, latitude, longitude and interesting fact/activity). User can also click on the buttons to edit the information or delete that destination
5. USER CHOOSES TO ADD A NEW DESTINATION FOR THE COMMUNITY:
6. User can see a form to input the information about the new destination: name, country, image url and interesting time/activity
7. User can use either type manually the information or use the search box of the map and the search will return and autofill the information
8. After inputing all information, users submits and gets redirected to a page with the new created destination

</br>More details on the user stories can be found [here](https://moqups.com/emiliogomezlavin/tDs3XA65)

</br>

**Planning**

The Web App was planned based on the need of wanting to save destinations or cool places you have visited plus sharing other interesting ones so the community can be inspired to travel more. From this idea, the planning begin on defining what data would be shown and how the model and table would need to be created. Then how it would be displayed and how many views would be required in order to show the different elements of the basic functionality. 

From that the wireframes were designed to provide a clear path on which elements would need to be created to ensure the functionality would run smoothly:

Views:

- [Home, New Destination, DestinationId and All Destinations]("https://www.moqups.com/#!/edit/emiliogomezlavin/tDs3XA65")


</br>
Then working through the user stories, I created piece by piece the required functions and objects and data management that would bring to life the usability of the app using seed data. Once the routes and the server were working with the seed data the next step was to re-factor the code to use Google Maps API to make it a dynamic search to allow the user to add new destinations in a more reliable and simple way.

Finally, providing an exciting and engaging look & feel to provide a better user experience. The site was uploaded to Heroku as required in the project specifications. 

Now you're ready to discover what Travelution is all about 
[here](https://boiling-retreat-41852.herokuapp.com/).

</br>


## Additional Information
### ICE BOX Features
-  Random destination choosing to decide on your next destination in a very spontaneous way
-  Adding more Models to allow categories for destinations (i.e. Romantic destinations, Adventorous destinations, etc)


### Shout out
 
-  To Alex and all the consultants for all their help to find the solution to the multiple obstacles I faced during the development of this project
-  To Michael Norelli, the maps master, for all his wisdom on how to get the most out of Google Maps API
-  To Anabelle for always helping me with the difficult parts of my projects
-  To Wayne for introducing me to Geocoder
-  To Ben Yang for introducing me to the beautiful world of the Materialize Library
-  To Jen for sharing all her work on the search functionality