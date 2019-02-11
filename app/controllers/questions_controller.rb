class QuestionsController < ApplicationController
  def ask
    @ask = "ASK : Variable d'instance définie dans questions_controller"
  end

  def answer
    @question = params[:question]
    @answer = "I don't care, get dressed and go to work!"
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    end
    # raise
  end
end
