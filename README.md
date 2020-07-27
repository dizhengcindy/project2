# README
## Demo
https://www.youtube.com/watch?v=BRBE2t2alFQ

## Tech highlights

- Rails application 
- Use session stored user_id (allows users to authenticate once and remain signed in for future requests)
- Use Rails's has_secure_password to store and authenticate user login credentials securely

## login: 

- can find username and password in seed and copy paste
    
    username: "Jack", password: "123456Abc#"
    
    username: "Jess", password: "123456?Efd"

## sign up: 

- email must have @ symbol, and passwords must have lowercase, uppercase, numbers, and one of #?!@$%^&*-
- must have all the information filled out to sign up (validation)

## after login you are at picture index page
## navigator:
    
-  "My profile" to edit email and username, or delete account (it will delete all related pictures and comments).

-  "My posts" to see all the pictures you uploaded, and you can click on any picture to see details

- "Post a new picture" to upload a new picture with url, it will only show the top 6 most popular tags when create pictures, you can create your own tag (validation: must have title and url).
-  "Log out" to log out and return to login page

## "Popular tags"

- it is sorted by how many times the tag has been tagged to a picture, so it changes.
- you can click on any tag to see all the pictures are tagged with that tag.

## click on any picture takes you to the picture show page 

-  you can click on username to see all the pictures that user posted
-  you can make a comment and delete it
- if it is your own picture, there is an edit button to allow you to edit it

## Edit a picture

- it will have all the tags you chose before with the top 6 most popular tags
- must have title and url (validation)
- you can also delete the picture





