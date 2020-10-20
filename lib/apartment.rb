class Apartment

  attr_reader :number
  def initialize(number: number, monthly_rent: 0, bathrooms: 0, bedrooms: 0)
    @number = number
    @monthly_rent = monthly_rent
    @bathrooms = bathrooms
    @bedrooms = bedrooms
  end
end
