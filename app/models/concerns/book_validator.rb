class BookValidator < ActiveModel::Validator
  def validate(record)
    days_two_months = (Date.today - Date.today.advance(:months => -2)).to_f
    if Date.today - Date.parse(record.release_date) <= days_two_months && record.base_price.blank?
      record.errors.add(:base_price, "Must include base price if release date within two months")
    end
  end
end
