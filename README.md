# A booking app for a single business owner of a travel agency, built with Rails 6, HighCharts.js, minimal bootstrap, search capability on Journeys records and no authentication.

## With HighCharts.js - Inspired by the U.S. based Amtrak company, a user/owner can C.R.U.D. details regarding, trains, stations, cabins,  customers details and bookings.

## This app is database driven and no consideration was taken into account of privacy for customer/payment details or authentication and authorization.
<br />
<hr />

# Models / Tables

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
