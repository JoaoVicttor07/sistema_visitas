class Visit < ApplicationRecord
  belongs_to :visitor
  belongs_to :unit
  belongs_to :sector
  belongs_to :user, optional: true

  enum status: { aguardando: 0, em_andamento: 1, finalizada: 2 }
end
