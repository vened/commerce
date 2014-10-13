# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
#
# rake db:drop db:create db:migrate db:seed
#
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 5.times do |i|
#   Page.create(title: "Page #{i}",
#               path: "page-#{i}",
#               body: "This file should contain all the record creation needed to seed the database with its default values."
#   )
#   HtmlModule.create(title: "Module #{i}",
#                     name: "module-#{i}",
#                     body: "Module body"
#   )
# end
# @page = Page.last(1)
# @html_module = HtmlModule.last(1)
# @html_module.pages = @html_module


@manager = Manager.create(name: "admin", email: "maxstbn@gmail.com", password: "nfnkfrf", password_confirmation: "nfnkfrf")
@manager.save!

@photos = [
    "http://stat18.privet.ru/lr/0a27ec09508ecb335e7e7c269c0843ee",
    "http://www.fabulousnature.com/data/media/31/53581.jpg"
]

#продукты без категории
1.times do |i|
  Product.create(
      name: "Тестовый продукт-#{i}",
      price: "33999",
      body: "Напольная плитка является стильным решением для желающих облагородить свое жилье с помощью изысканных отделочных материалов. Основными достоинствами керамической плитки являются прочность, долговечность и эстетичность. Дизайнерские находки воплощены в сотнях коллекций напольной плитки, осталось лишь найти ту, которая подойдет Вам."
  )
  @product = Product.find(i + 1)
  @photos.each do |photo|
    @photo = Photo.new(remote_photo_url: photo)
    @photo.products << @product
    @photo.save!
  end
end

1.times do |i|
  Category.create(
      name: "Категория-#{i}",
      path: "category-#{i}"
  )
  @category = Category.find(i+1)
  @photo = Photo.new(remote_photo_url: @photos[5])
  @photo.categories << @category
  @photo.save!

  5.times do |p|
    @product = Product.new(
        name: "Тестовый продукт-#{i}-#{p}",
        price: "33999",
        body: "Напольная плитка является стильным решением для желающих облагородить свое жилье с помощью изысканных отделочных материалов. Основными достоинствами керамической плитки являются прочность, долговечность и эстетичность. Дизайнерские находки воплощены в сотнях коллекций напольной плитки, осталось лишь найти ту, которая подойдет Вам."
    )
    @photos.each do |photo|
      @photo = Photo.new(remote_photo_url: photo)
      @photo.products << @product
      @photo.save!
    end
    @product.categories << @category
    @product.save!
  end

end

Page.create(
    name: "Главная",
    path: "root",
    body: "<p>Напольная плитка является стильным решением для желающих облагородить свое жилье с помощью изысканных отделочных материалов. Основными достоинствами керамической 
          плитки являются прочность, долговечность и эстетичность. Дизайнерские находки воплощены в сотнях коллекций напольной плитки, осталось лишь найти ту, которая подойдет Вам.</p>
          <p>Напольная плитка является стильным решением для желающих облагородить свое жилье с помощью изысканных отделочных материалов. Основными достоинствами керамической 
          плитки являются прочность, долговечность и эстетичность. Дизайнерские находки воплощены в сотнях коллекций напольной плитки, осталось лишь найти ту, которая подойдет Вам.</p>"
)

Page.create(
    name: "Контакты",
    path: "contacts",
    body: "",
    feedback: 1
)

Page.create(
    name: "Обратная связь",
    path: "feedback",
    body: "",
    feedback: 1,
    menu: 0
)