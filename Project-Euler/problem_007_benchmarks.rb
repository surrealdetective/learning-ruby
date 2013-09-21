require "benchmark"
require_relative 'problem_007'
require_relative 'problem_007_refact'

iterations = 5

Benchmark.bm(27) do |bm|
  # bm.report('problem_007:') do
  #   iterations.times { require_relative 'problem_007' }
  # end

  bm.report("problem_007_refact:") do
    iterations.times { find_prime_numbered(10001) }
  end
end

###########################################################################
# results #
###########################################################################
