Rails Angular start app
=======================
This app aims to be a starting point for web applications based on Ruby on Rails with an AngularJS frontend. View/controller management in Angular is handled by [ui-router](https://github.com/angular-ui/ui-router). JSON responses are handled through [ActiveModel Serializers](https://github.com/rails-api/active_model_serializers) (tutorial on AM Serializers from Railscasts [here](http://railscasts.com/episodes/409-active-model-serializers)). Documentation for using this as a viable and replicable project forthcoming.

Rails Components
----------------
### Authentication
- uses bcrypt `has_secure_password`
- sessions controller with new, create and destroy actions
	- current user stored via `current_user_id` cookie
- standard `current_user`, `authorize`, and `signed_in?` helpers available to all controllers (and in views)
- comes with default login view (through rails template, not Angular template)

Starter app for creating a Rails and AngularJS application. Includes:
- User Model
- Log in/authentication
- Static pages controller
- ActiveModel Serializers configuration
- AngularJS 1.2.4
- ui-router setup
	- app.js.coffee configuration for states
- Bootstrap installation
- angular-bootstrap
- proper includes in application.js
- creation of separate AngularJS folders (like templates, controllers, factories, filters, etc.)
- possibly more to come...
