Rails.application.routes.draw do
  get("/", { :controller => "omni", :action => "render_homepage" })

  get("/square_root", { :controller => "omni", :action => "square_root" })
end
