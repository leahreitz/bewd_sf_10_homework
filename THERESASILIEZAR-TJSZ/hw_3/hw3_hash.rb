require 'pry'

def desserts (hash)
  desserts = {type: 'cake', season: 'all', preparation: 'oven', difficulty: 'medium'}
  desserts2 = {type:'jello', season: 'summer/spring', preparation: 'refrigerator', difficulty: 'easy'}
  carnival_desserts = {type: 'cotton candy', season: 'summer', preparation: 'spindle', difficulty: 'easy'}

  carnival_desserts.length
  puts desserts.merge(desserts2)
  puts carnival_desserts.keys
  puts desserts2.value

  puts "My favorite #{desserts.type} is strawberry." #how to I pull out one :type from my Hash?


end




