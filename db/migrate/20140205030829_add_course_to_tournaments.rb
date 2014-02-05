class AddCourseToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :course, :string
  end
end
