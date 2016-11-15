# videoblog/app/channels/questions_channel.rb
# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class QuestionsChannel < ApplicationCable::Channel

  def self.broadcast(question)
    broadcast_to question.video, question:
      QuestionsController.render(partial: 'questions/question', locals: {question: question})
  end

  def subscribed
    # stream_from "some_channel"
    stream_for Video.last
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
