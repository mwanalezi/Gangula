# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :meta_defaults, :load_side_data



  private
  def meta_defaults
    @meta_title = "Gangula-Guia do Estudante"
    @meta_keywords = "angola, estudante, universidades, universidades em angola, ucan, luanda, cabinda, lubango, huila, faculdade, ispra, isced, angostinho neto"
    @meta_description = "guia de universidade e centros de ensino superiores de angola"
  end

  def load_side_data
    @carreiras_side = Carreira.all(:order => :titulo)
    @universidades_side = Universidade.all(:order => :nome)
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
