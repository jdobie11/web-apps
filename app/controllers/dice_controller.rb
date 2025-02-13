<div> class="header">
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
