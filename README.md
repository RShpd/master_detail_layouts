# Master Detail Layouts Challenge

Master detail layouts project.


This is a simple responsive master-detail view in Flutter.
The app contains a list of items, each of them can be clicked to show more detail.

The source code files are feature-based categorized. <br>
I'm using mock data, but it can be replaced when it was required to fetch data by request. <br>
No third party package is used in this project. <br>

## Result
Here’s what the result looks like on a mobile device: <br>
![Mobile_Preview](/mobile.gif) <br> <br>

The result on the web is looked like as the following:<br>
![Web_Preview](/web.mp4) <br> <br>

## TODO
- [ ] Add the bloc as the state management mechanism in order to update the UI based on the states come from the bloc. So, we can keep track of the selected item and make the `HomePage` stateless then update it based on the incoming bloc states. Also, it is possible to add the other common states for the list like UIs like idle and loading, etc.  <br>
- [ ] Use the factory method design pattern in order to build the appropriate widgets for each screen size. <br>
- [ ] Add the support of different languages and changing the current language of the app.
- [ ] Proper theming and styling and add the theme changing feature.
- [ ] Add widget tests

