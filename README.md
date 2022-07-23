# A booking app for a single business owner of a travel agency, built with minimal bootstrap
<br />
<hr />

# Models/Tables

* addresses
* bookings
* cabins
* credit_cards
* customers
* journeys
* payments
* stations
* trains
* "Join-Table" - bookings_cabins

<br />

# Foreign-Keys

   Table, Reference

* "addresses", "customers"
* "bookings", "customers"
* "bookings", "journeys"
* "cabins", "trains"
* "credit_cards", "customers"
* "journeys", "trains"
* "payments", "bookings"
* "payments", "credit_cards"
* "payments", "customers"

<br />

* Homepage
![Screenshot](https://github.com/The-Flying-Dev/Travel-Agent/blob/main/app/assets/images/home.png) <br/>
 
* Trains 
![Screenshot](https://github.com/The-Flying-Dev/Travel-Agent/blob/main/app/assets/images/trains.png)
 
* Journeys
![Screenshot](https://github.com/The-Flying-Dev/Travel-Agent/blob/main/app/assets/images/journeys.png)
 
* cabins
![Screenshot](https://github.com/The-Flying-Dev/Travel-Agent/blob/main/app/assets/images/cabins.png)
