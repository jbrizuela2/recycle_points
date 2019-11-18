class Category < ApplicationRecord
  has_and_belongs_to_many :materials

  validates :name, presence: true, uniqueness: true

  COLORS = {
    "Negro": "is-black",
    "Gris obscuro": "is-dark",
    "Gris claro": "is-light",
    "Blanco": "is-white",
    "Turquesa": "is-primary",
    "Azul claro": "is-info",
    "Azul obscuro": "is-link",
    "Verde": "is-success",
    "Amarillo": "is-warning",
    "Rojo": "is-danger",
  }
end
