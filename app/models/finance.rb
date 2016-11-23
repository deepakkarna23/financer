class Finance < ActiveRecord::Base
    validates :title, :amount, :date, presence: true
end
