require "property_solutions/version"

namespace :property_solutions do

  desc "Initializes the database for a caboose installation"
  task :db => :environment do
    drop_tables
    create_tables
    load_data
  end
  desc "Drops all caboose tables"
  task :drop_tables => :environment do drop_tables end
  desc "Creates all caboose tables"
  task :create_tables => :environment do create_tables end
  desc "Loads data into caboose tables"
  task :load_data => :environment do load_data end
  
  def drop_tables
  end
  
  def create_tables
  end
  
  def load_data
  end

end
