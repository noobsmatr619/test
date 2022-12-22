class User < ActiveRecord::Base
    validates :first_name, presence: true, uniqueness: {case_sensitive: false}

    has_many   :orders

end
