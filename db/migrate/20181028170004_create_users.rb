Sequel.migration do
  change do

    create_table :users do
      primary_key :id
      String :name
      String :surname
    end

  end
end
