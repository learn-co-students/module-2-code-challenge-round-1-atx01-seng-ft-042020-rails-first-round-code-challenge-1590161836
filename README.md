# Rails Code Challenge - Superheroines

For this assessment, you'll be working with a heroines and powers domain.

In this repo, there is a Rails application with some features built out. Your job is to extend this code to add the functionality described in the deliverables below.

## Topics

- MVC
- REST
- Request-Response Cycle
- Forms and Form Helpers
- ActiveRecord
- Validations

## Setup

Before you begin coding your solution, clone this repo and then `cd` into it. Then run `bundle install`, `rails db:migrate`, and `rails db:seed` to install dependencies and set up the database, and run `rails s` to start the server.

## Domain

There are three models in the domain: Power, Heroine, and a join model HeroinePower.

Each Heroine can have multiple powers. Powers can belong to multiple Heroines.

## What You Already Have

The starter code has migrations, models, and seed data for the initial Power and Heroine models. There are also routes, controllers and views to support the Power and Heroine index pages.

Once you have followed the setup instructions above, visiting the `/powers` route will display all of the Powers. Similarly, visiting `/heroines` will list all the heroines.

***Schema***

Heroine

| Column | Type |
| ------------- | ------------- |
| name | String |
| super_name | String |
| created_at  | DateTime  |
| updated_at  | DateTime  |

Power

| Column | Type |
| ------------- | ------------- |
| name  | String  |
| description | String  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

## Instructions

Update the code of the application to meet the following deliverables. Follow RESTful naming conventions and the MVC pattern to divide responsibility.

***Read through these deliverables carefully to understand the requirements for this code challenge. Tackle them one by one, as they build on each other sequentially.***

### 1. Heroine-Power association

Create the association between the models. Update the schema and models to create the HeroinePower association.

A HeroinePower should have a:

- a heroine
- a power

Each Heroine can have multiple powers. Powers can belong to multiple Heroines.

### 2. Heroine index page links

On the heroines index page, a heroine's super name should link to that heroine's show page.

### 3. Heroine show page

Each Heroine show page should include the:

- name (eg. Kamala Khan)
- super name (eg. Ms. Marvel)

### 4. Power show page

Power show page should include the:

- name
- description

### 5. Heroine Create page

Show a form to create a new Heroine. It should have:

- an input for name
- an input for super name
- a select dropdown to choose a power
- a submit button to create the Heroine

After successfully creating a Heroine, the user should be redirected to the new Heroine's show page.

### 6. Heroine Validations

Add validations to the Heroine model:

- must have a name
- must have a super name

Add error handling to the create action. If a user tries to create an invalid Heroine, the user should see the validation errors.

### 7. Advanced: Heroine Super Name Validation

No two heroines should have the same super name.

- Add a validation to prevent this.
- Update the error handling in the create action to display this error

### 8. Advanced: Display Heroines' Powers

Update the Heroine show page to display the Powers that the heroine has.

Each power should link to the corresponding Power show page.

### 9. Advanced: Power Update Form to Link Multiple Heroines

Show a form to update a Power. It should have:

- a text input for the name with the current name already displayed
- a text area input for the description with the current description already displayed
- a list of Heroines, with a checkbox for each one
- a submit button

The update action should create associations for each of the Heroines the user selected.

When the form successfully saves, the user should be redirected to the Power show page.

The power show page should show a link to the edit page.

### 10. Advanced: Powers Index Page Display Heroine Count

On the Powers index page, show the total number of Heroines for each Power.

### Feature Demo

![screen capture of feature demo](heroines-features-demo.gif)

## Rubric

You can find the rubric for this assessment [here](https://github.com/learn-co-curriculum/se-rubrics/blob/master/module-2.md).

adfasdfadsfa