class UserDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
  @view_columns ||= {
    id:          { source: "User.id" },
    name:       { source: "User.name" },
    phone:      { source: "User.phone" },
    location: {source: "Place.location", searchable: false}
  }
end

def data
  records.map do |record|
    {
        id:          record.id,
        name:       record.name,
        phone:      record.phone,
        location: record.place.location
       
    }
  end
end

def get_raw_records
  User.includes(:place)
end

end
