# Animal Shelter API
#### Ruby on Rails API Project, 12.15.2017

#### By Kristen Marie Kulha

## Description

An API setup for an animal shelter with cats and dogs.

## User Stories

* Users can create, edit, update, delete, and search for dogs and cats.

## Setup/Installation Requirements
* Clone this repository
* In terminal, navigate to this projects root directory (ecommerce_refactor)
* In terminal (while still in root directory), enter the following commands:
  * ``` $ bundle install ```
  * ``` $ rails db:setup ```
  * ``` $ rails db:test:prepare ```
  * ``` $ rails db:seed```
  * ``` $ rails serve ```

# Version 1

#### Cats and Dogs both include:

|  Attribute  | Data Type |
| ------------- | ------------- |
| ID  | Integer  |
| Breed  | String  |
| Age  | Integer  |
| Name  | String  |
| Gender  | String  |
| Bio  | String  |

#### Your API call should begin with _```http://localhost:3000/api/v1```_

#### Below is a table of enpoints you can use

|  Type of Request  | Endpoint | Data Returned |
| ------------- | ------------- | ------------- |
| GET  | /cats  | List of all cats |
| GET  | /dogs  | List of all dogs |
| GET  | /dogs/[id] | Dog with given [id] |
| GET  | /cats/[id] | Cat with given [id] |
| GET | /dogs/random | A random dog |
| GET  | /cats/random | A random cat |
| GET | /dogs?breed=[given breed] | All dogs that are the given breed |
| GET | /cats?breed=[given breed] | All cats that are the given breed |
| GET | /dogs?age=[given age] | All dogs that are the given age |
| GET | /cats?age=[given age] | All cats that are the given age |
| GET | /dogs?gender=[given gender] | All dogs that are the given gender |
| GET | /cats?gender=[given_gender] | All cats that are the given gender |
| POST | /dogs | Create a new dog with the params listed in table above |
| POST | /cats | Create a new cat with the params listed in table above |
| PATCH | /dogs/[id] | Update dog with given [id] |
| PATCH | /cats/[id] | Update cat with given [id] |
| DELETE | /dogs/[id] | Delete dog with given [id] |
| DELETE | /cats/[id] | Delete cat with given [id]

## 🐛Known Bugs🐛

There are no known bugs at this time.

## Future functionality

* Condense cats and dogs into an animal class which has an added species attribute.
* Create more scopes for more searching functionality.
* Add Users for authentication keys.
* Add token-based authentication.
* User Swagger for documentation.
* Add pagination to API’s index route.
* Batch API calls.
* Include rate limiting.


## 📧Support and contact details📧

Feel free to contact me at kristen.m.kulha@gmail.com

## Technologies Used

_Ruby on Rails, RSpec, FactoryBot_

### License

This software is licensed under the MIT license.
Copyright (c) 2017 **_Kristen Marie Kulha_**
