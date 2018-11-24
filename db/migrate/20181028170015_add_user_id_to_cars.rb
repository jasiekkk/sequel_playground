Sequel.migration do
  change do
    add_column :cars, :user_id, Integer
  end
end
