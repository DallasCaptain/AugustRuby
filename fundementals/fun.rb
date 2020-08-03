def test 
    yield 5 
    puts "You are in the method test" 
    yield 100 
  end 
  test { |i| puts "You are in the block #{i}" }


  our_hash = {:first_name => "Coding", :last_name => "Dojo"}
  our_hash2 = {first_name: "Coding", last_name: "Dojo"}

  p our_hash
  p our_hash2