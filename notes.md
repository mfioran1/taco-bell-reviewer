Reviewer 

Ratings model - join table
user_id
taco_id
taste:text
comments:text
rating:integer
belongs_to :users
belongs_to :tacos



User Model
username
email
password_digest
has_many :ratings
has_many :tacos through :ratings


tacos model
name
category

has_many :ratings
has_many :users, through :ratings