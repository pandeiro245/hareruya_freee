require_dependency "hareruya_freee/concerns/freee_sync"

module HareruyaFreee
  class Partner < ActiveRecord::Base
    has_many :deals, :class_name => 'HareruyaFreee::Deal', :foreign_key => :hareruya_freee_partner_id
    #has_many :deals, ->{order('due_date desc')}

    include HareruyaFreee::FreeeSync

    def amount
      deals.map{|d| d.amount}.reduce(:+)
    end
  end
end
