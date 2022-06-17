class Post < ApplicationRecord
  has_many:comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}#проверка титле на пустой и миниму 5 символов
  #accepts_nested_attributes_for allow_destroy: true #разрешение єлементов на удаление
end
