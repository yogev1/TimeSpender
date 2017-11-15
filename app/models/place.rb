class Place < ApplicationRecord

  geocoded_by :address
  after_validation :geocode

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  scope :filtered, -> (params) { 
  	
    query = all
  	query = query.where("location LIKE ?" , "%#{params[:location]}%") if params[:location]
  	query = query.where("age_range LIKE ?" , "%#{params[:age]}%") if params[:age]
  	query = query.where("purpose LIKE ?" , "%#{params[:purpose]}%") if params[:purpose]
  	query = query.where("kind LIKE ?" , "%#{params[:kind]}%" ) if params[:kind]
    query 
  }
    	
end
