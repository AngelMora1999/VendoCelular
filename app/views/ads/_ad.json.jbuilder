json.extract! ad, :id, :title, :description, :price, :region, :city, :cellphone, :phone, :adress, :brand, :visit_count, :type, :status, :created_at, :updated_at
json.url ad_url(ad, format: :json)