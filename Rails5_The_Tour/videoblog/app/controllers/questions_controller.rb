#videoblog/app/controllers/questions_controller.rb
class QuestionsController < ApplicationController
  before_action :set_video

  def create
    @video.questions.create!(questions_params)
    redirect_to @video
  end

  private

  def set_video
    @video = Video.find(params[:video_id])
  end

  def questions_params
    params.required(:question).permit(:body)
  end

end
