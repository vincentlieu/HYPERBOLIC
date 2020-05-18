HYPERBOLIC - Market Place

Link to the deployed app: www.myapp.com 
Link to github repo: https://github.com/vincentlieu/HYPERBOLIC

## Section 1: Requirement checklist 

Each time you have completed a requirement check it off the list. This way it will be easy for the educators as well as yourselves to track your progress.


- [x] 1. Create your app using Ruby on Rails.
- [x] 2. Use Postgresql database in development and production.
- [x] 3. My app has authentication (eg. Devise).
- [x] 4. My app has authorisation (i.e. users have restrictions on what they can see and edit).
- [x] 5. My app has some type of file (eg. images) uploading capability.
- [x] 6. My app is deployed to Heroku (recommended) or AWS.
- [ ] 7. I have identified the problem I am trying to solve by building this particular marketplace app.
- [ ] 8. I have explained why is it a problem that needs solving.
- [x] 9. I have provided a link (URL) to my deployed app (i.e. website)
- [x] 10. I have provided a link to my GitHub repository (repo). I have ensured the repo is accessible by my Educators.
- [ ] 11. I have a complete description of my marketplace app (website), including:  
        - 11.1 Purpose  
        - 11.2 Functionality / features  
        - 11.3 Sitemap  
        - 11.4 Screenshots  
        - 11.5 Target audience  
        - 11.6 Tech stack (e.g. html, css, deployment platform, etc)  

- [x] 12. I have provided user stories for my app
- [x] 13. I have provided Wire-Frames for my app 
- [x] 14. I have provided an ERD for my app
- [ ] 15. I have explained the different high-level components (abstractions) in my app
- [ ] 16. I have listed and described any third party services that your app will use
- [ ] 17. I have described my projects models in terms of the relationships (active record associations) they have with each other.
- [ ] 18. I have discussed the database relations to be implemented in my application
- [ ] 19. I have provided my database schema design
- [ ] 20. I have described the way tasks are allocated and tracked in my project

NB Slide/Presentation specific requirements

- [ ] 21. An outline of the problem I solved by building this particular marketplace app, and why it’s a problem that needs solving.
- [ ] 22. A well planned walkthrough of my app
- [ ] 23. I have practived my presentation at least once and it is 5-6 minutes long. 


### Rubric Criteria

## Section 2: Documentation 
NB leave the Titles as they are and answer the questions below.

##### 1. Explain the different high-level components (abstractions) in your App.
* Includes a complete and detailed description of third party services used in the app

##### 2. List and describe any 3rd party services.
#### Amazon S3 [(link)](https://github.com/aws/aws-sdk-ruby)

Facilitates image storage stored on Amazon's cloud platform - AWS. This is used to store listing and user profile images. 

#### Devise [(link)](https://github.com/heartcombo/devise)

Authentication solution for Rails based on Warden. This is used to facilitate user registration and login. 

#### Bootstrap 4 [(link)](https://github.com/twbs/bootstrap-rubygem)

CSS framework used to build a responsive website. This is used to create an atmosphere for the marketplace.

#### Stripe [(link)](https://github.com/stripe/stripe-ruby)

Provides access to the Stripe API to accept payments made on the marketplace. This is used for customers to make purchases for listings and provide them with a receipt to track their purchases.

#### Faker [(link)](https://github.com/faker-ruby/faker)

A library for generating data for the market place. This is used to generate fake user accounts and listings details. 

**DEVELOPMENT**

#### Guard & Guard live-reload [(link)](https://github.com/guard/guard) [(link)](https://github.com/guard/guard-livereload)

Command line tool used to handle events on file system modifications. This was used to automatically refresh the browser when changes have been made to the file system. 

#### Ultrahook [(link)](https://github.com/BetterErrors/better_errors)

Receive web hooks on localhost. This was used to relay stripe's POST request to be accessible on localhost. 

#### Better_errors [(link)](https://github.com/BetterErrors/better_errors)

Replaces the standard Rails error page to have better and more insightful error messages. This was used to easily identify where issues reside during development. 

##### 3.1. Identify the problem you’re trying to solve by building this particular marketplace App?
* Demonstrates a full understanding of the problems that exist in a relevant marketplace that needs disrupting


##### 3.2 Why is the problem identified a problem that needs solving?
* Demonstrates a full understanding of the problems that exist in a relevant marketplace that needs disrupting

##### 4. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
* Complete discussion of the project’s models with an understanding of how its active record associations function

##### 5. Discuss the database relations to be implemented.
![This is an image of your ERD](This is the relative path to it)
* Provides coherent discussion of the database relations, with reference to the ERD


##### 6. Provide your database schema design.
* Flawless, complex, complete, and well thought through ERDs provided

##### 7. Provide User stories for your App.
![user_stories_MVP](docs/app-images/user_stories_MVP.png)

| **Summary**                 | **Issue key** | **Priority** | **Description**                                              |
| --------------------------- | ------------- | ------------ | ------------------------------------------------------------ |
| **User Avatar**             | HRBC-10       | Medium       | **AS** a customer, <br />**I WANT TO** be able to upload an avatar, <br />**SO THAT** other users can identify who I am.   <br /><br />**Acceptance Criteria:**   <br />- It is attached through edit account. <br />- It can be updated multiple times. <br />- The attached avatar is sent to the AWS-S3 bucket. <br />- Avatar is displayed on edit account. <br />- Avatar is displayed on navigation bar. <br />- Avatar will have a placeholder until the user uploads an avatar. |
| **Login form**              | HRBC-11       | High         | **AS** a registered user, <br />**I WANT TO** be able to login using my email, <br />**SO THAT** I don't have to remember a username.  <br /><br />**Acceptance Criteria**   <br />- Successful authentication with valid email and password combination. <br />- Invalid email and password combination should return validation indicating invalid credentials. <br />- When the user updates their email, they should be able to login with their updated email. <br />- When the user’s session as expired, they should be prompted to log in again. |
| **Create listing**          | HRBC-13       | High         | **AS** a seller, <br />**I WANT TO** create listings, <br />**SO THAT** I sell items on the market place.   <br /><br />**Acceptance Criteria**   <br />- Accessible from all listings <br />- The form contains a title, price, brand, clothing category, condition, description, and image. <br />- *Required fields:* Title, price, brand, clothing category, condition. <br />- Creates a new listing record and is displayed in all listings. <br />- Canceling new listing should navigate back to all listings. |
| **View all listings**       | HRBC-14       | High         | **AS** a customer, <br />**I WANT TO** view all listings, <br />**SO THAT** I can see what is available on the market.   <br /><br />**Acceptance Criteria**  <br />- Accessible from the browse page <br />- Sorted descending from time created |
| **Updating a listing**      | HRBC-15       | High         | **AS** a seller, <br />**I WANT TO** be able to modify my listing, <br />**SO THAT** I can update the details of my listed product.  <br /><br /> **Acceptance Criteria**   <br />- Accessible from all the user’s created listing. <br />- The form contains a title, price, brand, clothing category, condition, description, and image. <br />- *Required fields:* Title, price, brand, clothing category, condition. <br />- Updates the details of the listing accordingly to the changes made. <br />- Canceling changes should navigate back to the listing. |
| **Remove listing**          | HRBC-16       | Medium       | **AS** a seller, <br />**I WANT TO** remove my listing, <br />**SO THAT** it is no longer available on the market.   <br /><br />**Acceptance Criteria**   <br />- Only available to the listing creator. <br />- Accessible from the listing show view. <br />- When removed; all listings page should be updated with the listing removed. |
| **Buying products**         | HRBC-17       | High         | **AS** a buyer, <br />**I WANT TO** purchase a product, <br />**SO THAT** I can own the product listed in exchange for a payment.   <br /><br />**Acceptance Criteria**   <br />- The purchase button should be available on the listing’s show page. <br />- Purchasing should redirect to stripe’s payment gateway <br />- When the purchase is successful; the buyer should be redirected to a success screen with the receipt number and product details. <br />- When the purchase is successful; the all listings' view should not display the sold listing. <br />- When the purchase is successful; the purchase button is disabled with a timestamp of the purchase. <br />- When the purchase is successful; the owner of the listing should not be able to remove the listing. <br />- When the product is successful; the purchase <br />- Buyers should be able to track the purchases made. |
| **Favourite listings**      | HRBC-18       | Medium       | **AS** a buyer, <br />**I WANT TO** favourite a listing, <br />**SO THAT** I can track a potential purchase.   <br /><br />**Acceptance Criteria**   <br />- Buyers should be able to toggle favourite on/off for a listing. <br />- Buyers can have multiple favourites. <br />- Sellers should be able to favourite listings other than their own. <br />- Only users can see their own favourites. |
| **Show Individual listing** | HRBC-28       | High         | **AS** a customer, <br />**I WANT** to be able to view the details of a listing, <br />**SO THAT** I can make a potential decision on whether to buy the product.   <br /><br />**Acceptance Criteria**<br /> - Listing should display: Title, price, brand, condition, category, description and an image.<br />- The edit and remove functionality will be displayed for the original creator. <br />- Buyers should be able to view the listing. |
| **Track Purchases**         | HRBC-29       | Medium       | **AS** a buyer, <br />**I WANT TO** be able to track my purchases, <br />**SO THAT** I can keep a record of time, price and details of the purchase made. <br /><br />**Acceptance Criteria**   <br />- Accessible from the navigation bar <br />- Buyers can only view their own purchases. <br />- If attempted to view another user’s purchase they are redirected to the listings page. <br />- Tracks purchase date and time, amount, the product title, receipt, and link to purchase. <br />- Sorted descending according to purchase date. |
| **Track Listings**          | HRBC-30       | Medium       | **AS** a seller, <br />**I WANT** to track my listings,<br />**SO THAT** I can have a central place to view all listings created by me.   <br />**Acceptance Criteria**   <br />- Accessible from the navigation bar<br />- Sellers can only view their own listings. <br />- If attempted to view another user’s listings they are redirected to the listings page.<br />- Tracks post date and time, amount, the product title, status, and link to purchase. <br />- Sorted descending according to post date. |
| **Registration Form**       | HRBC-5        | High         | **AS** a potential customer, <br />**I WANT** to be able to register for an account, <br />**SO THAT** I can login to be a buyer or seller.   <br /><br />**Acceptance Criteria**   <br />- Accessible from the navigation bar. <br />- Accessible from the login form. <br />- Contains required fields - Full name, email, password, and password confirmation. <br />- Password has minimum criteria of 6 characters. <br /> - Login is accessible from the registration form. |
| **Edit Account**            | HRBC-6        | Medium       | **AS** a customer, <br />**I WANT TO** be able to modify my account, <br />**SO THAT** I can keep my account details updated.   <br /><br />**Acceptance Criteria**   <br />- Accessible only when the user is logged in. <br />- Accessible via navigation > edit account. <br />- Can update full name, email, password, biography, avatar. <br />- *Required fields:* Full name and email cannot be null. <br />- Changing password requires new password confirmation. <br />- Not changing password does not require password confirmation. <br />- Uploading an avatar should be displayed on the edit page. <br />- Cancel account is available on the edit page. <br />- Updating details other than the password does not require current password. |
| **Delete Account**          | HRBC-7        | Medium       | **AS** a customer, <br />**I WANT** to delete my account, <br />**SO THAT** I can no longer be part of the community.   <br /><br />**Acceptance Criteria**   <br />- Deleting a user should remove all listing associated with that user. <br />- Accessible from Edit Profile. |
| **Log off**                 | HRBC-9        | High         | **AS** a customer, <br />**I WANT TO** be able to log out of my account, <br />**SO THAT** I can prevent my account from being access by others.   <br /><br />**Acceptance Criteria:**   <br />- Accessible from the navigation bar. <br />- Logout when the user session has expired. |

##### 8. Provide Wireframes for your App.
![This is an image of your wire frames](This is the relative path to it)  
![This is an image of your wire frames](This is the relative path to it)  
![This is an image of your wire frames](This is the relative path to it)  
![This is an image of your wire frames](This is the relative path to it)  
![This is an image of your wire frames](This is the relative path to it)  

* More than five detailed and well designed wireframes provided, for several different screen sizes (as required for the app)

##### 9. Describe the way tasks are planned and tracked in your project.
![jira_kanban](docs/app-images/jira_kanban.png)

**Project management tool:** Atlassian's JIRA

1. Created an epic called R1 - MVP that houses all the MVP user stories required to launch the web application. 
2. Each user story created is assigned a priority to indicate which items are critical for the functionality of the application, where they will then be auto sorted based on priority in the Kanban board (the colour highlighting on the left of the ticket indicate the priority) and placed in the back log. Additionally, they are assigned labels to indicate what piece of functionality is covered in the story and optionally linked to another user story if there are dependencies between stories.
3. The Kanban board is configured to only house a maximum amount of tickets in TO DO and IN PROGRESS lanes to ensure that the story being worked on is done to its fullest before picking up a new task. 
4. Days in lane is enabled to indicate the amount of days a ticket has been sitting in a lane. Tickets that have been sitting in a lane for a longer period of time reflects that the item should be picked up and worked on as that ticket could have dependencies.
5. Integration with Github allows each branch and commits to be tracked accordingly to the user story on the Kanban board, allowing traceability to which acceptance criteria was being worked on for that particular story. 

##### 10. ERD provided represents a normalised database model.
![This is an image of your ERD](This is the relative path to it)
* Meets D with no duplication and ideal definition of entities.

## Section 3: Code specific assessment. 

This section can be deleted from the readme. I have only included it here to draw your attention to it. 

##### 11. Model implementation represents a normalised database model.
* Meets D with no duplication and ideal model implementation.

##### 12. Model implementation represents a normalised database model.
* Meets D and represents a highly optimised solution.

##### 13. Implemented controllers demonstrate correct use of commands to query the database infrastructure.
* Meets D and does so elegantly (queries chosen are the most elegant to achieve the result).

##### 14. Queries implemented provide correct data for the given scenario.
* Meets CR and demonstrates exceptional understanding of database queries.

##### 15. Code comments demonstrate how the queries implemented correctly represent the database structure.
* Meets D and all comments are exceptionally written.

##### 16. Identify and use appropriate model methods.
* Identifies and uses appropriate model methods for querying on self and its relationships, extends models scope where appropriate

##### 17. Minimising database calls needed to perform an action.
* Minimise all database calls and implement eager loading where appropriate

##### 18. Sanitise and validates input to maintain data integrity.
* Validates and sanitises all input


