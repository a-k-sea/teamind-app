class QuestionsController < ApplicationController

  def index
  end

  def new
    @question = Question.new
    authorize @question
  end
end
