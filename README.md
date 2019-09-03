# Banking API Demo

This [Rails](http://rubyonrails.org) application demonstrates the capabilities of Banking APIs powered by the [fidor_api](https://github.com/Fidor-FZCO/fidor_api) ruby library.
This app has a UI that allows the users to login and fetch an access token. Using the access token, the users can fetch all transaction details.

## Register a new Application in the  App-Manager

To access the Banking API you need to register for an account in App Manager and create a new application in order to get the following information. While registering the app, 
* Mention the app url as this apps' url,
* Mention the callback url as {{app_url}}/auth/callback

Get the following information from App Details page 
* Client ID - From App Manager
* Client Secret - From App Manager
* Fidor OAuth URL - From App Manager
* Fidor API URL - From API Doc / App Manager


Create a .env file in the root directory of your app and mention the env variables:
* FIDOR_OAUTH_URL -  Fidor Oauth URL obtained above
* FIDOR_API_URL - Fidor API URL obtained above
* FIDOR_API_PATH - API path mentioned in API doc
* FIDOR_API_CALLBACK - {{app_url}}/auth/callback
* FIDOR_API_CLIENT_ID - Client ID obtained above
* FIDOR_API_CLIENT_SECRET - Client Secret obtained above
* FIDOR_API_LOGGING - 'true'
