Rails.application.routes.draw do
  # get("/things", :controller => "things", :action => "index")
  get("/tacos", :controller => "tacos", :action => "index")
  get("/dice", :controller => "dice", :action => "roll")
  get("/roll_dice", :controller => "roll_dice", :action => "index")
  get("/welcome", :controller => "welcome", :action => "index")
  get("/place_bet", :controller => "place_bet", :action => "index")
  get("/pass_line", :controller => "pass_line", :action => "index")
  get("/non_pass_line", :controller => "non_pass_line", :action => "index")
  get("/companies", :controller => "companies", :action => "index")
end
