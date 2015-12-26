class DobLimitValidator < ActiveModel::EachValidator
  def validate_each(record,attribute,value)
    if (value<Date.new(1930,1,1)) || (value>(Date.today-2.years))
      record.errors.add attribute, "Must be greater than 1 Jan, 1930 and more than 2 years of age"
    end
  end
end