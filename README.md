# graphql_sms_api
One of the backend API versions for smsforall.org, this one will be using GraphQL instead of the traditional RESTful approach

## How to run the RoR server?
1. Set ruby to 3.2.2
2. Install dependencies
```
bundle install
```
3. Create the Postgresql Database
```
bundle exec rake db:setup
```
4. Run the server
```
rails server
```
5. Open the page
```
http://localhost:3000
```
6. Begin running GraphQL queries using something like POSTMAN!!
```
Method: POST
URL: http://localhost:3000/graphql
Body: select GraphQL and put there your question like
query {
    sms_notifications {
        id
    }
}
```
