class PhotosController < ApplicationController
  before_action :authenticate_user!

  def new
    @photo = Photo.new
  end

  def create
    @photo = current_course.photos.create(photo_params)
    redirect_to instructor_course_path(current_course)
  end

  private

  helper_method :current_course
  def current_course
    @current_course ||= Course.find(params[:course_id])
  end

  def photo_params
    params.require(:photo).permit(:caption, :image)
  end
  
end
