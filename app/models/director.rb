# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    my_filmography_id = self.id

    matching_filmography = Movie.where({:director_id => my_filmography_id})

    director_filmography = matching_filmography

    return director_filmography
  end
end
