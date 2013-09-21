require "benchmark"
# require_relative 'problem_007'
require_relative 'problem_007_refact'

iterations = 50

Benchmark.bm(27) do |bm|
  # bm.report('problem_007:') do
  #   iterations.times { require_relative 'problem_007' }
  # end

  bm.report("007_re: find prime") do
    iterations.times { find_prime_numbered(10001) }
  end

  bm.report("007_re: no Inf") do
    iterations.times { find_prime_without_inf(10001) }
  end

  bm.report("007_re: no var asgn") do
    iterations.times { find_prime_without_reassigning_var(10001) }
  end

end
