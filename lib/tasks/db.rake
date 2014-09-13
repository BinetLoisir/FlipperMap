namespace :db do
  task init: :environment do
    %x[rake db:create db:migrate]
    Flip.fill_table
    Bar.fill_table
    CheapBar.mgb
    Flip.info
  end
end
