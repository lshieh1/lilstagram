# lilstagram

My very simple and basic version of Instagram using Ruby on Rails

## Wireframe
https://github.com/lshieh1/lilstagram/blob//images/20180405_220845.jpg

## Technologies Used
Ruby on Rails: used for CRUD and basis of app<br/>
Postgresql: used to store data<br/>
Devise: user-auth

## Code Snippet

```
<h3>Post a Comment</h3>
<%= form_for [ @post, @comment ] do |f| %>
    <%= f.text_field :text %>
    <%= f.submit 'Submit' %>
<% end %>
```

My biggest challenge in this mini-project was figuring out how to include the comment for in single posts. I had to play around with the code a lot and I also used Google a lot.

## Future Plans with Project
I actually want to continue improving this project.  I want to make it look prettier and add more functions that Instagram has. 

## Instructions for loading
clone down from repo<br/>
rails s


