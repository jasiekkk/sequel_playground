Sequel.migration do
  change do
    create_table(:cars) do
      primary_key :id
      column :make, "varchar(255)"
      column :model, "varchar(255)"
      column :user_id, "integer"
    end
    
    create_table(:schema_migrations) do
      column :filename, "varchar(255)", :null=>false
      
      primary_key [:filename]
    end
    
    create_table(:users) do
      primary_key :id
      column :name, "varchar(255)"
      column :surname, "varchar(255)"
    end
  end
end
              Sequel.migration do
                change do
                  self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20181028163631_create_cars.rb')"
self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20181028170004_create_users.rb')"
self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20181028170015_add_user_id_to_cars.rb')"
                end
              end
