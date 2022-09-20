
# Table of Contents

1.  [Smooth Moves](#org7a48e84)
2.  [Goals](#org6d99b8a)
3.  [SQL Table Relationships](#org58ff0ff)
4.  [Related Routes On Frontend Portion Of App](#org3d06956)


<a id="org7a48e84"></a>

# Smooth Moves

A Full Stack web application made with React, Ruby, and Sinatra to help assist a U.S. based person to move via a related inventory sheet, and checklist which can be exported and shared with potential movers.


<a id="org6d99b8a"></a>

# Goals

The main goals of this project include the following:

-   The ability for the user to tell the web app the two locations involved in their move (current location and new location) which will be hooked up to a map based API to show markers, and total distance required in miles.
-   The ability for the user to go through each inventory item to determine its height, width, length, and weight of each box or individual item.
-   The ability for the user once they are done with this process to be shown the same checklist so that they can check each item off one by one.
-   The ability to then export this same checklist within a separate route as an Excel spreadsheet (.'.csv', or '.xlsx') to provide to actual movers.
-   The user can also fill out a form to then generate an email to be sent to the given mover as well.


<a id="org58ff0ff"></a>

# SQL Table Relationships

The related SQL table relationships include the following:

-   There is an individual "User" per session who owns many "Items"
-   Each "User" has an infinite amount of "Movers" they could use as well


<a id="org3d06956"></a>

# Related Routes On Frontend Portion Of App

Routes include:

-   /form: This is the form that the user fills out initially
-   /checklist: This is the checklist that can be served to the user which can be checked off via the frontend with React based mouse clicks, and will also include a summary section at the top which totals the total amount of boxes, their associated weight, the square feet of the boxes if the user needs to use a storage container, and the total mileage the move will take.
-   /export: This is how the user will be able to export their given results to a Excel spreadsheet
-   /email: This is the form that the user can use to email various movers instead of having to re-open their Gmail account, etc.
