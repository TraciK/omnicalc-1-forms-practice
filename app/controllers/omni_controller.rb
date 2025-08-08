class OmniController < ApplicationController
 def render_homepage
    render({ :template => "omni_templates/homepage" })
  end
end
