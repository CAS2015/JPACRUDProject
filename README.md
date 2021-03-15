## JPACRUDProject

### Description

This project models a dive log where the user can track relevant information
about a dive including the site conditions, water conditions, equipment and
notes about the fun things seen while under water. The log has been populated
from the database with my dives to start but the form is open to add new dives,
update dives or delete dives. The user can also search dives through several
filters in any combination including a notes filter where you can type "turtle"
or "lionfish" to see where I've encountered some fun creatures.


### Technologies

Technologies used in this program:
* Mysql Database creation
* Entity Mapping and Annotation
* DAO Implementation
* MVC Controller
* JSP Forms utilizing Bootstrap Stylesheet
* CSS Stylesheet
* JUnit tests


### How to Run

Go to the website to see the landing page that has an add button, a filter
section with a filter button, and a list of all dives with options to update
or delete a specific dive log. Selecting "add" brings user to a form to enter
in dive log details and add the dive to the database. Selecting "delete" will
delete the log from the database, whereas selecting "update" brings the user
to a form populated with the dive details that they can update and submit.
Selecting the dive hyperlink brings the user to a details page where they
can see all of the details related to the dive log.


### Lessons Learned

For this project I lost some time messing with the time and date formats,
trying to get a library that would work to translate the form format to the
database format. I can definitely see where temporal data, especially with
different browsers could get frustrating. If I had more time, I would've liked
to do more on the front end side of things, including adding pagination to the
table on the landing page and an overall better design for the pages. I also
would've really liked to add some aggregate functions to show my total number of
dives per state/province or country as well as the average rating but I just
didn't have time to write another results page for the data. 
