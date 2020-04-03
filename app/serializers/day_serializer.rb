class DaySerializer < ActiveModel::Serializer
  attributes :id, :date, :pain_level, :notes
  belongs_to :user
end
