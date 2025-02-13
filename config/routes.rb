Rails.application.routes.draw do
  # get("/things", :controller => "things", :action => "index")
  get("/tacos", :controller => "tacos", :action => "index")
  get("/dice", :controller => "dice", :action => "roll")
  get("/roll_dice", :controller => "roll_dice", :action => "index")
end
