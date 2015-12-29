class DateTodayOrFutureValidator < ActiveModel::EachValidator
  def validate_each(record,attribute,value)
    if (value<Date.today)
      record.errors.add attribute, "Must be a present or future date"
    end
  end
end