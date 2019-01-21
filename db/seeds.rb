5.times do
  Product.create({
    name: Faker::Name.name,
    description: Faker::Lorem.paragraph,
    sale_message: Faker::Lorem.paragraph,
    price: Faker::Number.decimal(6, 2),
    discounted_price: Faker::Number.decimal(6, 2),
    }).tap do |product|
  	  3.times do |i| 
        product.images.create(url: "http://products/images/#{i}/#{product.name}")
      end
    end
end

2.times do
  Aspect.create({
    name: Faker::Name.name
    })
end

Aspect.all.each do |aspect|
  2.times do
    Option.create({aspect: aspect, name: Faker::Name.name})
  end
end

Product.first.aspects << Aspect.all
Product.first.options << Option.all

[[1,3],[1,4],[2,3],[2,4]].to_a.each_with_index do |comb, index|
  options_name = Option.where(id: comb).pluck(:name)
  ProductVariant.create({
    id: (Product.first.id * 1000 + index),
    product: Product.first,
    name: "#{Product.first.name} (#{options_name.join(', ')})",
    description: Faker::Lorem.paragraph,
    sale_message: Faker::Lorem.paragraph,
    price: Faker::Number.decimal(6, 2),
    discounted_price: Faker::Number.decimal(6, 2),
    sign: comb,
    }).tap do |variant|
  	  3.times do |i| 
        variant.images.create(url: "http://products/images/#{i}/#{variant.name}")
      end
    end
end