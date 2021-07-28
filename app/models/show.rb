class Show < ActiveRecord::Base
    has_many :actors, through: :characters
    belongs_to :network
    has_many :characters



  def actors_list
    self.actors.map {|actor|actor.full_name}
  end
end