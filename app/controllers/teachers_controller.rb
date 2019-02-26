class TeachersController < ApplicationController
  def index

    if params[:query].present?
      @teachers = Teacher.find_by_skill_or_subject(params[:query])
      @map_teachers = Teacher.where.not(latitude: nil, longitude: nil)
      @markers = @map_teachers.map do |teacher|
        {
          lng: teacher.longitude,
          lat: teacher.latitude,
          infoWindow: "#{teacher.first_name} #{teacher.first_name}"
        }
    else
      @teachers = Teacher.all
      end
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def profile
    @teacher = Teacher.find(current_user.id)
  end
end

# def index
#     if params[:query].present?
#       sql_query = " \
#         movies.title ILIKE :query \
#         OR movies.syllabus ILIKE :query \
#         OR directors.first_name ILIKE :query \
#         OR directors.last_name ILIKE :query \
#       "
#       @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
#     else
#       @movies = Movie.all
#     end
