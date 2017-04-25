![Imgur](http://i.imgur.com/QJvxqa5.png)


[![Code Climate](https://codeclimate.com/github/abazilla/CFA-Rails-Major-Project/badges/gpa.svg)](https://codeclimate.com/github/abazilla/CFA-Rails-Major-Project)

# About
Open Education is a platform for NSW Schools and Teachers to be able to share their curriculum, lesson planning, and resources amongst each other.

This is a project created by myself as part of the Coder Factory Academy bootcamp. The goal was to fully ideate, design, plan, build, test and deploy a rails application from start to finish, using the skills learned in previous weeks.

# Installation

Please visit this site for the live version:

If you would otherwise like to have it installed locally, do the following:

Clone the project:

git clone https://github.com/nickwu78/CFA-Fund-It-Forward.git

change into the project directory, and install the dependencies:

bundle install

Run the app:

rails s

and access it through your browser:

http://localhost:3000

# Usage

To do anything on OpenEducation, you will ***require an account***. Once created, follow the following prompts for usage.

If you would like to share your curriculum, lesson plans or resources:

1. Go to the Content page
2. Click the new Content button
3. Input any content you would like to
      - You can upload multiple files
      - The outcomes of the subject and grade you are posting on will automatically be displayed on your page
4. Press post!

If you would like to search through the existing content:

1. Go to the content page
2. Use the search bar to find the content you are looking for
3. Once the post is found, you can use the download links

To join a school:

1. Go to the schools page
2. Search for your school using the search bar
3. Click on your school
4. Check the box and press update status

Note that if you cannot find your school, you can create it yourself.

To message a person:

1. Go to the Inbox link
2. Click on the user you would like to message
3. Send a message

## Design & Planning

Since this is an educational website, I wanted it to be as clean and easy to use as possible, since the intended users may not necessarily be tech-savy, and there is no need for complexity/to be bombarded with stuff. That being said, there is the right kind of functionality for the needs of the user.

![Imgur](http://i.imgur.com/rR8Z8lH.png)

As you can see, the design is simpler and not decked out with too many features. The actual website that i’ve made is a little different in the end.

Below is the Entity Relationship Diagram created in the planning stage. As you can see, the forums post were omitted as it was not an MVP feature necessary for the project at the moment.

![Imgur](http://i.imgur.com/hi6pKCA.png)


## Code Review

I have reviewed my peer's code (@hyunkim95) here at https://github.com/Hyunkim95/CFA-majorproject2. See his README for my comments.

He has also reviewed my code, seen here:

Overall, Abazilla’s code was very clean - it was evident that Abazilla followed the methodology of a “Fat model and skinny controller” - whereby Abazilla’s functions and logics were kept out of the controllers.  Abazilla made sure to keep his code DRY, thus making his code very easy to read and prepared for any further changes. Readability of the code was kept consistent throughout the project - this was supported through his testing. From a single glance, I could tell what the code was testing and the methodology of the test.  

In the future however, I would recommend Abazilla removing an unnecessary codes that are not being used; for example: within the schema it was apparent that curriculum list and user lists were not being used - this was further seen with his curriculum model which did not use its images attributes. I would also recommend testing some of the if else logics, as the update teacher method’s else statements are not being tested.
