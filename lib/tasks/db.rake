namespace :db do
  task init: :environment do
    %x[cat config/flippers.sql | mysql -uroot -pK65ba5E5c36l6tu -D flippers]
  end
end
