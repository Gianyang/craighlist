class Seed
  def self.category_seed
      category_list = {
                      "Honda" => "/images/honda.jpg", "Toyata" => "/images/toyata.jpg", "Mitubishi" => "/images/mitubishi.jpg", "BMW" => "/images/bmw.jpg", "Jaguar" => "/images/Jaguar.jpg", "Opel" => "/images/opel.jpg", "Proton" => "/images/proton.jpg", "Perodua" => "/images/perodua.jpg"
                       }


    category_list.each do |key, value|
    Category.create(title: "#{key}", images: "#{value}")

    end
  end



  def self.post_seed
    30.times do
      Post.create(title:Faker::Commerce.product_name, description:Faker::Lorem.sentence, price:Faker::Number.number(4), image_link:Faker::Internet.url, location:Faker::Internet.mac_address, poster:Faker::Name.name, category_id: (rand(8)+1))
    end
  end


end
Seed.category_seed

# Category.destroy_all
# Seed.category_seed
# Seed.post_seed

