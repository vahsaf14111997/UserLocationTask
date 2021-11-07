class UserDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
  # Declare strings in this format: ModelName.column_name
  # or in aliased_join_table.column_name format
  @view_columns ||= {
    # id: { source: "User.id", cond: :eq },
    # name: { source: "User.name", cond: :like }
    id:          { source: "User.id" },
    name:       { source: "User.name" },
    phone: { source: "User.phone" },
  }
end

def data
  records.map do |record|
    {
        id:          record.id,
        name:       record.name,
        phone: record.phone,
        DT_RowId:    record.id,
    }
  end
end

def get_raw_records
  User.all
end

end
