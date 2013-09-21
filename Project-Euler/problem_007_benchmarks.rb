require "benchmark"
require_relative 'problem_007_refact'

iterations = 50

Benchmark.bm(27) do |bm|

  bm.report("007_re: find prime") do
    iterations.times { find_prime_numbered(10001) }
  end

  bm.report("007_re: no Inf") do
    iterations.times { find_prime_without_inf(10001) }
  end

  bm.report("007_re: no var asgn") do
    iterations.times { find_prime_without_reassigning_var(10001) }
  end

  bm.report("007_re: using Prime") do
    iterations.times { cleaner_prime(10001) }
  end

end


################ Results ################################################
#                                   user     system      total        real
# 007_re: find prime           51.630000   0.070000  51.700000 ( 51.803947)
# 007_re: no Inf               49.380000   0.070000  49.450000 ( 49.670433)
# 007_re: no var asgn          50.370000   0.080000  50.450000 ( 50.843931)
# 007_re: using Prime           1.450000   0.000000   1.450000 (  1.451557)