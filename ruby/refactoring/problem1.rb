class LeftOuterJoin < Join
  def join_type
    'Left Outer'
  end
end

class InnerJoin < Join
  def join_type
    'Inner'
  end
end

InnerJoin.new(
  :equipment_listings,
  :on => 'equipment_listings.listing_id = listings.id'
).to_sql

InnerJoin.joins_for_table(:books)

class Join
  def initialize(table, options)
    @table = table
    @On = options[:on]
  end

  def self.joins_for_table(table_name)
    
  end

  def to_sql
    "#{ join_type } JOIN #{ @table } ON #{ @on }"
  end
end
