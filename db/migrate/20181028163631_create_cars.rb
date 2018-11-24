Sequel.migration do
  change do

    create_table :cars do
      primary_key :id
      String :make
      String :model
    end

  end
end
