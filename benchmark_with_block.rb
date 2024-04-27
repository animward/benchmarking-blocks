def benchmark
  start_time = Time.now
  yield
  end_time = Time.now
  running_time = end_time - start_time
  running_time
end
 
long_string = "apple" * 100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"
