Rails.application.routes.draw do
  get("/", { :controller => "omni", :action => "render_homepage" })

  get("/square", { :controller => "omni", :action => "square" })

    get("/square_results", { :controller => "omni", :action => "square_results" })
end
