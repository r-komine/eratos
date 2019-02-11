class Eratos
  def self.get_prime_array(number)
    prime = []
    search_list = (2..number).to_a
  
    while search_list[0] <= Math.sqrt(number)
      target = search_list[0]
      prime << target
      search_list.reject! { |n| n % target == 0 }
    end
    prime.concat(search_list)
    prime.join(', ')
  end  
end

number = ARGV[0].to_i
if number != nil && number > 1
  puts Eratos.get_prime_array(number)
end