#Weather Sweater

##Table of Contents
- [About this Project](#about-this-project)
- [Tools Used](#tools-used)
- [Schema](#schema)
- [Endpoints](#endpoints)

## About This Project

###Learning Goals
* Expose an API that aggregates data from multiple external APIs
* Expose an API that requires an authentication token
* Expose an API for CRUD functionality
* Determine completion criteria based on the needs of other developers
* Research, select, and consume an API based on your needs as a developer

## Versions
* Ruby 2.7.2
* Rails 5.2.6

## Tools Used

| Development | Testing       | Gems          |
|   :----:    |    :----:     |    :----:     |
| Ruby 2.7.2  | RSpec         | SimpleCov     |
| Rails       |               | Pry           |
| Github      |               | ShouldaMatcher|
| Vs Code     |               | Launchy       |
| Postman     |               | SecureRandom  |
|             |               | Faraday       |
|             |               | Figaro        |
|             |               | VCR           | 
|             |               | Webmock       |

## Schema
![Screen Shot 2021-09-29 at 00 14 35](https://user-images.githubusercontent.com/57773546/135213958-ccc839c4-7625-48be-8e3c-f7b5915f025f.png)

## Endpoints
* GET /api/v1/forecast?location=denver,co

![Screen Shot 2021-09-29 at 08 27 57](https://user-images.githubusercontent.com/57773546/135289032-0e956c45-fd1b-4070-a312-ad9d9e78b490.png)

* GET /api/v1/backgrounds?location=denver,co

![Screen Shot 2021-09-29 at 08 28 45](https://user-images.githubusercontent.com/57773546/135289231-6923705e-e1bc-4045-b28e-d0bf1903793f.png)

* POST /api/v1/users

![Screen Shot 2021-09-29 at 08 29 55](https://user-images.githubusercontent.com/57773546/135289454-05ee4fa3-ef63-4e0f-b82a-795f55af5332.png)

* POST /api/v1/sessions

![Screen Shot 2021-09-29 at 08 30 46](https://user-images.githubusercontent.com/57773546/135289583-28414ec2-9f2f-4e4b-b28d-df6152a7ac11.png)

* POST /api/v1/road_trip

![Screen Shot 2021-09-29 at 08 31 32](https://user-images.githubusercontent.com/57773546/135289701-21479d2e-9f98-48d3-b8b9-8bac4ac2d6d9.png)
