class UpdateSubTotalDefaultField < ActiveRecord::Migration[6.1]
  def up
    change_column_default :carts, :sub_total, new_default_value

    # Set the field value of all existing records to the new default value
    Cart.update_all(sub_total: new_default_value)
  end
  
  def down
    change_column_default :carts, :sub_total, old_default_value

    # Set the field value of all existing records to the new default value
    Cart.update_all(sub_total: new_default_value)
  end

  private 

  def old_default_value
    # return the old default value here
    # for example, "old_default_string"
    nil
  end
  
  def new_default_value
    # return the new default value here
    # for example, "new_default_string"
    0
  end
end
