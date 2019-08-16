class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:show]

  def show
  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

  helper_method :current_course
  def current_course
    current_lesson.section.course
  end

  def require_authorized_for_current_course
    if ! current_user.enrolled_in?(current_course)
      redirect_to course_path(current_lesson.section.course), alert: 'Must Be Enrolled to Access t his Course'
    end
  end
end

