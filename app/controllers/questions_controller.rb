class QuestionsController < ApplicationController
  def answer
    @questions = ['I am going to work', 'what time is it?']
    case params[:question]
    when 'hello' || 'hey'
      @answer = 'Hey!'
    when @questions[0]
      @answer = 'Great!'
    when @questions[1]
      @answer = Time.new.strftime('%I:%M %p')
    when params[:question].last == '?'
      @answer = 'Silly question, get dressed and go to work!.'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
