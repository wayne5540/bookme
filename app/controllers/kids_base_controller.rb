class KidsBaseController < ApplicationController
  layout "kids"
  before_action :authenticate_user!
end