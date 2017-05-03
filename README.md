# This is an EEC application project.

##### Main functionalities of the app will be:

* Register/ log in /log out of user
* Creation of user elements catalog
* Editing catalog
* Finding missing elements to the project in local area
* Sending request to other users in area for missing elements if their catalog contain them
* Sharing user catalogs
* Cataloging electronic elements
* Adding elements to server database
* Changing parameters and description on server database

###### First we created the register, login, logout module. In which we encapsulate authentication functionalities for creating an account. An account module has got:
* Email confirmation with possibility of malfunction
* Password recovery
* And member memory

###### Then, we add a prototype of main functionality - editable catalog. For now it has got:
* Adding, editing and destroying an elements in catalog
* Profile connection > in profile section: basic information about user, and geolocalization
* Search engine with advanced searching tool

###### Gems used in a project:
* Devise
* Geocoder
* Gmaps4rails
* Simple form
