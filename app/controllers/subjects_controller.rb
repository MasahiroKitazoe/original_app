class SubjectsController < ApplicationController

  def index
    @subjects = Subject.order('id ASC').limit(3)
  end
end
