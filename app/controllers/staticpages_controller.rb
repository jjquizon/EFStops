class StaticpagesController < ApplicationController
  before_action :require_signed_in, only: [:root]
  def root
    @user = current_user
  end

  def home
  end

  def filepicker
    @user = current_user
  end
end
