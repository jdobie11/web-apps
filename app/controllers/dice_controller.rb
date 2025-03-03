<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Futura Font Example</title>
    <style>
        /* Add @font-face rules here if using local fonts */
        
        .header {
            font-family: 'Futura', Arial, sans-serif;
            background-color: #ADD8E6; /* Light blue background */
            padding: 10px; /* Adds some space around the text */
            text-align: left; /* Left align the text */
        }
        
        .header h1 {
            font-weight: bold; /* Makes the font bold */
            color: #000; /* Black text color */
        }
        
        .result {
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Jonathon's Online Craps Table</h1>
    </div>

<% if session[:point].nil? %>
  <p>This is your first roll.</p>
<% else %>
  <p>The point is <%= session[:point] %>. You need to roll this again to win.</p>
<% end %>

<img src="/images/dice/<%= @die1 %>.svg" alt="">
<img src="/images/dice/<%= @die2 %>.svg" alt="">

<p>You rolled a <%= @die1 %> and a <%= @die2 %>. The total is <%= @total %>.</p>

<p><%= @result %></p>

<% if session[:game_over] %>
  <button onclick="window.location.href='/roll_dice'">Start New Game</button>
<% else %>
  <button onclick="window.location.href='/roll_again'">Roll Again</button>
<% end %>
