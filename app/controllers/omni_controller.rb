class OmniController < ApplicationController
 def render_homepage
    render({ :template => "omni_templates/homepage" })
  end

  def square_results
    @user_number = params.fetch("user_number").to_f
    render({ :template => "omni_templates/square_results" })
  end

  def squareroot
    render({ :template => "omni_templates/squareroot" })
  end

    def payment
    render({ :template => "omni_templates/payment" })
  end
end
