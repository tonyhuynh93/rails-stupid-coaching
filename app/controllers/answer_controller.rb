class AnswerController < ApplicationController
  def answer
    @questions = params[:questions]
    @answer_to_q = answer_to_q
  end

  def answer_to_q
    if @questions[-1, 1] == '?'
      'Silly question, get dressed and go to work!'
    elsif @questions == 'I am going to work'
      'Great!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
