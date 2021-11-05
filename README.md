### DEMO:
https://delivery-rails-api.herokuapp.com/v1/products

- To sign in
```
curl -H "Content-Type: application/json" -X POST -d '{"email":"test@email.com","password":"password"}' https://delivery-rails-api.herokuapp.com/v1/auth/sign_in
```
- To sign up
```
curl -H "Content-Type: application/json" -X POST -d '{"email":"test@email.com","password":"password"}' https://delivery-rails-api.herokuapp.com/v1/auth
```

##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [3.0.2]
- Rails [6.1.4]

##### 1. Check out the repository

```bash
git clone git@github.com:NaumenkoSergiy/delivery-rails-api.git
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rails db:create
bundle exec rails db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
rails s
```

And now you can visit the site with the URL http://localhost:3000


##### API endpoints:

- Sign in - `POST /v1/auth/sign_in`
- Signout - `DELETE /v1/auth`
- Sign up - `POST /v1/auth`
- Products - `GET /v1/products`
- Favorited products - `GET /v1/favorites_products`
- Favorite product - `POST /v1/products/:product_id/favorite`
- Delete favorited product - `DELETE /v1/products/:product_id/favorite`
