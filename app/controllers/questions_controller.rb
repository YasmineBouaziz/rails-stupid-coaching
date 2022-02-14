class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(reply)
    if reply.end_with?('?')
      'Silly question, get dressed and go to work!'
    elsif reply == 'I am going to work'
      'Great!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
