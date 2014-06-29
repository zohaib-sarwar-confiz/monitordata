class Request < ActiveRecord::Base
  attr_accessible :binds, :connection_id, :duration, :extra, :name, :parameters, :path, :query, :start, :finish

  def self.request_time_base_select(start_time = Time.now - 30.minutes , end_time = Time.now)
    where("start >= ? AND finish =< ?", start_time, end_time)
  end
end
