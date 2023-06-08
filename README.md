# README

PopDemo is an app built to satisfy the following requiremnts:

Level 1: Basics
- Create an object model for Menu and MenuItem s classes.
Menu has many MenuItem s.
- Menu and MenuItem have typical data associated with restaurants.
- Illustrate behavior via unit tests. 

Level 2: Multiple Menus
- Introduce a Restaurant model, and allow Restaurant s to have multiple Menu s. MenuItem names should not be duplicated in the database.
- MenuItem can be on multiple Menu s of a Restaurant .
- Illustrate behavior via unit tests.

Steps to Run confirming specs:

- bundle install
- rake db:migrate ( using sqlite DB)
- rspec


Notes:

This has been a fun project and I appreciate your time looking over the code. I chose to initiate this app a rails 7 application. The desired logic has been displayed in the rspec test suite. I decided to complete levels 1 and 2. I completed each level as a separate Pull Request. I hope this helps to make the review process easier. Please let me know if you encounter any issues, it will require Rails 7 and Ruby 3.2.2.

Thank you!
