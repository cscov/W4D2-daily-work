class Cat < ApplicationRecord
  COLORS = %w(black orange gray white tabby calico)

  validates :birthdate, presence: true
  validates :name, :description, presence: true, uniqueness: true
  validates :color, presence: true, inclusion: { in: COLORS,
    message: "%(value) is not a valid color" }
  validates :sex, presence: true, inclusion: { in: %w(M F) }

  def age
    time_ago_in_words(birthdate)
  end
end
