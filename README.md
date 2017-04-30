![Imgur](http://i.imgur.com/QJvxqa5.png)


[![Code Climate](https://codeclimate.com/github/abazilla/CFA-Rails-Major-Project/badges/gpa.svg)](https://codeclimate.com/github/abazilla/CFA-Rails-Major-Project)

# About
Open Education is a platform for NSW Schools and Teachers to be able to share their curriculum, lesson planning, and resources amongst each other.

This is a project created by myself as part of the Coder Factory Academy bootcamp. The goal was to fully ideate, design, plan, build, test and deploy a rails application from start to finish, using the skills learned in previous weeks.

### Problem
Schools in Australia can face difficulty when it comes to creating their school curriculums when outcomes set by their State Governments change. This is particularly the case when new content is added, such as the new Digital Technology outcomes being released by the NSW Government, which require both primary and high schools to now implement modern technology and aspects relating to it (including planning, logical thinking, building/coding) into their curriculums.

School curriculums can be difficult to write especially for primary school children, since content has to be made for up to 4 hours a week from grades K-10, and also matches their appropriate capabilities and opportunities.

### Solution
The solution is OpenEducation, which is a double-sided platform in which teachers and schools may share their curriculums in full or part so that others may use to help create their curriculum. This is aimed to help curb the difficulties schools face when they are not familiar with new outcomes being introduced by the government, or when new content is being brought in to replace outdated content.

In addition, this platform may also be used to share other related content such as lesson plans and resources, which will be particularly more useful to teachers who may need help for their day-to-day lesson planning.

The way it works is users sign up and are able to post content. The content has a number of features, including uploading (multiple) files, search functionality, ability to show the outcomes set by their government, ratings, comments and more. This content is able to used by any other user at no cost, and can be improved upon through other input via ratings and comments.

Extra functionality includes schools, whereby users can create a page for their schools with a number of details. Users are also able to “belong” to a school, and further functionality will allow users to see the content that particular schools use through the assocatiation between schools, its teachers and their content.

# Installation

Please visit this site for the live version: https://openeducation2.herokuapp.com/

If you would otherwise like to have it installed locally, do the following:

Clone the project

```
git clone https://github.com/abazilla/CFA-Rails-Major-Project
```

change into the project directory, and install the dependencies:

```
bundle install
```

Run the app:

```
rails s
```

and access it through your browser: http://localhost:3000

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

Below are all the planning and user story/journey related content.

![Imgur](http://i.imgur.com/BeVJGIv.png)

![Imgur](http://i.imgur.com/NwLhJiI.png)


## Code Review

I have reviewed my peer's code (@hyunkim95) here at https://github.com/Hyunkim95/CFA-majorproject2. See his README for my comments.

He has also reviewed my code, seen here:

Overall, Abazilla’s code was very clean - it was evident that Abazilla followed the methodology of a “Fat model and skinny controller” - whereby Abazilla’s functions and logics were kept out of the controllers.  Abazilla made sure to keep his code DRY, thus making his code very easy to read and prepared for any further changes. Readability of the code was kept consistent throughout the project - this was supported through his testing. From a single glance, I could tell what the code was testing and the methodology of the test.  

In the future however, I would recommend Abazilla removing an unnecessary codes that are not being used; for example: within the schema it was apparent that curriculum list and user lists were not being used - this was further seen with his curriculum model which did not use its images attributes. I would also recommend testing some of the if else logics, as the update teacher method’s else statements are not being tested.
