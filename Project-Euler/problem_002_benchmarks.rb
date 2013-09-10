require "benchmark"
require_relative 'problem_002'
require_relative 'problem_002_refact'

iterations = 5000

Benchmark.bm(27) do |bm|
  bm.report('problem_002:') do
    iterations.times { calculate_next([1,2]); solution = sum_even(CONTAINER) }
  end

  bm.report("problem_002_refact:") do
    iterations.times { sum_of_evens(fibonacci_upto) }
  end
end

###########################################################################
# results #
###########################################################################

#                                   user     system      total        real
# problem_002:                 14.710000   0.030000  14.740000 ( 14.831904)
# problem_002_refact:           0.360000   0.000000   0.360000 (  0.368928)
# percent change (real) = 97.513%