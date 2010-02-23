class AdminAreaController < ApplicationController
  layout 'admin'
  before_filter :authenticate
end
