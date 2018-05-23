# Project 3 - The Free Store

## Summary
* This app is called The Free Store, which is kind of intuitive.
* Anyone and everyone can use this and it is absolutely free.
* A user can post, edit and delete whatever product or item they have in there.
* The admin has the power to remove products and users provided they violate the guidelines of the website.

## Acknowledgments
* Joel, John and James helped a whole lot throughout the duration of the project.


## Structure
* Products/Items. The major table is Product. Products are created by individuals and can only be edited or deleted by the original user that posted it. Each product/item belongs to a user and category. 
* Booker. Is a user table with password etc. Booker's have to login to the app. Each booker can have many jobs.
* Technician. Is a seperate user table. No crossover to the Booker table. Technicians have to login to the app. Each technician can have many jobs.


## gems and APIs
* gem 'cloudinary'
* gem 'faker'
* gem 'bcrypt'

## Access
The project can be accessed at [Project 3](https://projectthree.herokuapp.com/)


## Author

* `Abdulmajeed Yusuf` - [Twitter](http:twitter.com/oolakunle)

## License

This project is licensed under the MIT License

## Good stuff / challenges overcome
* Having an admin and general user types and having them being able to login. Nice.
* Having seperate views and actions according to who is logged in.
* Having the remember me option on sign up and being able to reset one's password if the person forgets.
* This project is the first website that's visually appealling that I've made, courtesy of bootstrap.

## Things I learnt and would do differently
* Not spent too much time on the user authentication and password reset function.


## Shortcomings / challenges not overcome
* I somehow managed to mess up my log out button and I would have to fix that after the presentation.

## Where Next?
* Find a way a user can upload multiple images of their items.
* Incorporate VueJS into the front end.
* Show each item that corresponds to the respective category they belong to when you click on each category.

