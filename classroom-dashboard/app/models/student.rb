class Student < ApplicationRecord
  belongs_to :section
  has_attached_file :student_img, styles: { student_index: "250x350>", student_show: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :student_img, content_type: /\Aimage\/.*\z/
end
