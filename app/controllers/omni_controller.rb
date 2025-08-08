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

    def payment_results
    apr_string           = params.fetch("user_apr")
    years_string         = params.fetch("user_num_years")
    present_value_string = params.fetch("user_principal")

    apr   = apr_string.to_f
    years = years_string.to_i
    pv    = present_value_string.to_f

    r = apr / 100 / 12
    n = years * 12

    @numerator   = r * pv
    @denominator = 1 - (1 + r) ** -n
    @payment     = @numerator / @denominator

    render({ :template => "omni_templates/payment_results" })
  end
end
