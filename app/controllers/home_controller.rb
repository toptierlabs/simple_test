class HomeController < ApplicationController
  def dentists
    require 'factual'
    factual = Factual.new("U4f25bxszU0X3wNCwI4iLBL8l0jOUdqRldRMuAOl", "Lqgi4nZbaVQCLneuAQwiq3tINfJuZOtQUn6UvfH6")
    @center_latitude = 34.0500
    @center_longitude = -118.2500
    @places = factual.table("places").filters("category_labels"=>{"$search"=>"dentist"}, "locality" => "Los Angeles").rows

  end
end

