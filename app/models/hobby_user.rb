class HobbyUser < ApplicationRecord
  belongs_to :hobby,optional: true
  belongs_to :user,optional: true
end
