# Looping is faster.

def nth_even_looping(n)
    (1..n).map {|n| n * 2}
end


def nth_even_recursive(n, output = [])
    if n == 0
        output.reverse
    else
        output << n * 2
        nth_even_recursive((n - 1), output)
    end
end

require 'benchmark'

Benchmark.bm do |x|
    x.report do
        1_000_000.times {nth_even_looping(20)}
    end
end

Benchmark.bm do |x|
    x.report do
        1_000_000.times {nth_even_recursive(20)}
   end
end