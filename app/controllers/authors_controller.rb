class AuthorsController < ApplicationController
  before_action :authenticate_user

  def new
  end

  def show
    redirect_to authors_path
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
