class OmniController < ApplicationController
 def render_homepage
    render({ :template => "omni_templates/homepage" })
  end

  def square
    render({ :template => "omni_templates/square" })
  end

  def square_results
    @user_number = params.fetch("user_number").to_f
    render({ :template => "omni_templates/square_results" })
  end

  def square_root
    render({ :template => "omni_templates/square_root" })
  end

    def square_root_results
      @user_number = params.fetch("user_number").to_f
    render({ :template => "omni_templates/square_root_results" })
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
    @present_value        = pv

    render({ :template => "omni_templates/payment_results" })
  end

def random
  render({ :template => "omni_templates/random"})
end

  def random_results
    user_min          = params.fetch("user_min").to_f
    user_max        = params.fetch("user_max").to_f
    @random = rand(user_min..user_max)
    @user_min = user_min
    @user_max = user_max
    render({ :template => "omni_templates/random_results" })
  end

end
