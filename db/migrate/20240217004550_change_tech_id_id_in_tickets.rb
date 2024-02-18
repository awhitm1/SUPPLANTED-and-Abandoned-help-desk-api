class ChangeTechIdIdInTickets < ActiveRecord::Migration[7.1]
  def change
    rename_column :tickets, :tech_id_id, :tech_id
  end
end
