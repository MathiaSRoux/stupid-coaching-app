class QuestionsController < ApplicationController
  QUESTION_WORK = 'I am going to work'.freeze
  ANSWER_WORK = 'Great!'.freeze
  ANSWER_QUESTION = 'Silly question, get dressed and go to work!'.freeze
  ANSWER_ELSE = "I don't care, get dressed and go to work!".freeze

  def ask
    # qfdbz
  end

  def answer
    @question = params[:question]
    stupid_coach(@question)
  end

  private

  def stupid_coach(question)
    if question?(question)
      @answer = ANSWER_QUESTION
    elsif question == QUESTION_WORK
      @answer = ANSWER_WORK
    else
      @answer = ANSWER_ELSE
    end
  end

  def question?(string)
    string.nil? ? false : string.end_with?('?')
  end
end
