namespace :dev do

  task :fake =>[:fake_products,:fake_users,:fake_orders]

  task :fake_products => :environment do

    10.times do

      Product.create!(:title => Faker::Commerce.product_name,
                      :description => Faker::Lorem.pargraph,
                      :quantity => rand(100),
                      :price => (rand(100)+1*10) )

    end

  end


  task :fake_users => :environment do

    10.times  do

      User.create!(:email => Faker:: Internet.email,:password => "123456")

    end

  end


  task :fake_orders =>:enviroment do

    users = User.all
    products =  Product.all

    100.times do

      order =Order.new(
                      :user => users.sample,
                      :billing_name => Faker::Name.name,
                      :billing_address => Faker::Address.street_address,
                      :shipping_name => Faker::Name.name,
                      :shipping_adddres => Faker::Address.street_address,

      )

      order.total = order.product_lists.map{|p|p.product_price*p.quantity}.sum
      order.save!

      %w[piad shipping shipped order_cancelled good_returned].each do|state|

        Order.all.sample(10).each do |o|
          o.update_columns(:aasm_state => state,
                           :paid_at => Time.now-(rand(100)+1)*3600,
                           :payment_method =>["alipay","wechat"].sample)

        end


      end



    end

  end




end