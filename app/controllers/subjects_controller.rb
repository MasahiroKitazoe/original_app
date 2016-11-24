class SubjectsController < ApplicationController

  def index
    @subjects = Subject.order('id ASC').limit(3)
  end

  def search
    @subjects = Subject.where('name LIKE(?)', "%#{params[:keyword]}%")
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def sign_up
  end

  def create
  end
end
