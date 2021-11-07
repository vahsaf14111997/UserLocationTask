class User < ApplicationRecord
    has_one :place
    accepts_nested_attributes_for :place
end
