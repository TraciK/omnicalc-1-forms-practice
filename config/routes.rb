Rails.application.routes.draw do
  get("/", { :controller => "omni", :action => "render_homepage" })

  get("/square", { :controller => "omni", :action => "square" })

    get("/square/results", { :controller => "omni", :action => "square_results" })

  get("/squareroot", { :controller => "omni", :action => "squareroot" })

    get("/squareroot/results", { :controller => "omni", :action => "squareroot_results"})

  get("/payment", { :controller => "omni", :action => "payment" })

    get("/payment/results", { :controller => "omni", :action => "payment_results"})
end
