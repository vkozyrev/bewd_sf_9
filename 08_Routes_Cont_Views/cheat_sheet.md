![BEWD_Logo](../assets/BEWD_Logo.png)

## Resources: Routes Controllers & Views

###Cheat Sheet

####Creating a new Controller and View

```bash
$ rails generate controller Game index show
```
*	Creates game_controller.rb with action index and show
*	Adds entries to the routes.rb
*	Creates the view
	*	```app/views/games/index.html.erb```  
	*	```app/views/games/show.html.erb``

####Adding Ruby To A View

 ```erb
 	<% These are ruby tags that are executed %>
  <%= These are ruby tags that output a string %>
 ```
