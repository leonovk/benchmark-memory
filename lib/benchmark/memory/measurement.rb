require "benchmark/memory/measurement/metric"

module Benchmark
  module Memory
    # Encapsulate the combined metrics of an action.
    class Measurement
      # Create a Measurement from a MemoryProfiler::Results object.
      #
      # @param result [MemoryProfiler::Results] The results of a MemoryProfiler report.
      def self.from_result(result)
        memory  = Metric.new(:memsize, result.total_allocated_memsize, result.total_retained_memsize)
        objects = Metric.new(:objects, result.total_allocated, result.total_retained)
        strings = Metric.new(:strings, result.strings_allocated.size, result.strings_retained.size)

        new(:memory => memory, :objects => objects, :strings => strings)
      end

      # Instantiate a Measurement of memory usage.
      #
      # @param memory [Metric] The memory usage of an action.
      # @param objects [Metric] The object allocations of an action.
      # @param strings [Metric] The string allocations of an action.
      def initialize(memory:, objects:, strings:)
        @metrics = {
          :memory => memory,
          :objects => objects,
          :strings => strings,
        }
      end
    end
  end
end
