# Online Shop Application
# Shop for Home [Home Bazaar]

# Team Mentor:
    Mr. Akash Kale 

# Project Members:
    Suddala Madhu
    Mungara Thrisha
    Thipparapu Vijay
    Sankha Subhra Mondal


#### A full-stack Online Shop web application using Spring Boot 2 and Angular 7. 
This is a Single Page Appliaction with client-side rendering. It includes backend and frontend two seperate projects on different branches.
The frontend client makes API calls to the backend server when it is running.

## Features
  - REST API
  - JWT authentication
  - Cookie based visitors' shopping cart
  - Persistent customers' shopping cart
  - Cart & order management
  - Checkout
  - Catalogue
  - Order management
  - Pagination

## Technology Stacks

**Database**

 1. No need to insert data for Cart, Wishlist, Order, User
 2. While running all the operations like Register, Login, Add to cart, Add to WishList, Place Order
 3. The data will automatically add to the database projectdb corresponding to the respective table.
 4. Admin can add items or products by Buld Upload & Manual Upload
 5. Only we need to insert category through MySQL database. 
 6. We will implement insert category operation in frontend very soon.

 
**Backend**
  - Java 11/13
  - Spring Boot 
  - Spring Security
  - JWT Authentication
  - Spring Data JPA
  - Hibernate
  - MySQL
  - Maven

**Frontend**
  - Angular 8.5
  - Angular CLI
  - Bootstrap

## Database Schema

Install MySQL -> after installation -> search MySQL
Give password which you provide at the time of installation.
Create Database with name "projectdb". Then run queries provided in sql_database.sql script one by one.


## How to  Run

Start the backend server before the frontend client.  

**Backend**

  1. Install [MySQL]
  2. Configure datasource in `application.yml`.
  3. `cd Backend Work`.
  4. Run `mvn install`.
  5. Run `mvn spring-boot:run`.
  6. It's a Micro service based project. So you have to run "EurekaServerApp" first in backend
  7. Then you can run Discount & Reports.
  8. The EurekaServerApp is running on port number 8761 [localhost:8761].
  9. The Discount is running on port number 8181 [localhost:8181].
  10. The Reports is running on port number 8080 [localhost:8080].


**Frontend**
  1. Install [Node.js and npm](https://www.npmjs.com/get-npm)
  2. visit Frontend Work, then cd frontend-C8-G7 [frontend-C8-G7 is the actual file]
  3. Run `npm install`.
  4. Run `ng serve`
  5. The frontend client is running on [localhost:4200]().
  6. In Angular open new terminal write command "npm start" to run frontend application.
  7. The frontend application is running on port number 4200 [localhost:4200]

  
1. Build backend project
```bash
cd backend
mvn package
```
2. Build fontend project
```bash
cd frontend
npm install
alias ng="node_modules/@angular/cli/bin/ng"
ng build --prod


```

Modules:
1.Customer login
	- Create Customer from sign up page
2.Admin login
	- visit: http://localhost:4200/admin/user
  - Add anyone as Admin but you have to register properly.
  - You can use Admin email: admin@eshop.com, password: admin

```



