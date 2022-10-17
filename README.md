
# Table of Contents

1.  [Smooth Moves](#orge8c88fb)
2.  [Links](#orgb8f985e)
3.  [Installation Instructions](#org53eaf29)
4.  [Goals](#org51eb66d)
5.  [SQL Table Relationships](#org05c8708)
6.  [Related Routes On Frontend Portion Of App](#orgf5b0714)


<a id="orge8c88fb"></a>

# Smooth Moves

A Full Stack web application made with React, Ruby, and Sinatra to help assist a U.S. based person to move via a related inventory sheet, and checklist which can be exported and shared with potential movers.


<a id="orgb8f985e"></a>

# Links

Link to the frontend repo for this project:

-   <https://github.com/SamuelBanya/SmoothMoves-Frontend>


<a id="org53eaf29"></a>

# Installation Instructions

Run the following command within the local repo's directory:

    bundle install

Run the backend with this command:

    bundle exec rake server


<a id="org51eb66d"></a>

# Goals

Current completed goals of the project include the following:

-   The ability for the user to list the two locations involved in their move ("pickup location" and "dropoff location")
-   The ability for the user to go through each inventory item to determine its height, width, length, and weight of each box or individual item.
-   The ability for the user to be shown a related checklist of items so that they can check each item off one by one when they are done with their move.

Current roadmap items to be implemented at a future data include the following:

-   The ability for the user to use a map based API to show markers, and the total distance required in miles.
-   The ability to then export this same checklist within a separate route as an Excel spreadsheet (.'.csv', or '.xlsx') to provide to an actual moving company
-   The ability for a user to fill out a form to email the same moving company as well.


<a id="org05c8708"></a>

# SQL Table Relationships

The related SQL table relationships include the following:

-   Each 'Item' class instance within the '/items' route has the 'belongs to' Active Record relationship to the 'Move' class
-   Each 'Move' class instance within the '/moves' route has the 'has many' Active Record relationship to the 'Item' class


<a id="orgf5b0714"></a>

# Related Routes On Frontend Portion Of App

Available routes of this web app include the following:

-   /about: This is the section that details information about the app itself
-   /moves: This is the section that allows the user to create a new move, edit an existing move, and delete an existing move, which makes this app 'CRUD' (Create Read Update Delete) compatible
-   /items: This is the section that allows the user to select a move, and then to create new items via a carousel React controlled form which then creates a resulting checklist at the bottom of the app for the user to checkoff each item after their given move is complete
