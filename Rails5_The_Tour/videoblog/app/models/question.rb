#app/models/question.rb
class Question < ApplicationRecord
  belongs_to :video
end
