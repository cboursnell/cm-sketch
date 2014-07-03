#!/usr/bin/env	ruby

require 'helper'

class TestCMSketch < Test::Unit::TestCase

  context 'cm-sketch' do

    setup do
      @sketch = CMSketch.new(4, 20)
    end

    teardown do
    end

    should 'create object' do
      assert @sketch
    end

    should 'add object' do
      kmer = "ATCGGTCACTAG"
      assert @sketch.add(kmer)
    end

    should 'check for existence' do
      kmer = "ATCGGTCACTAG"
      other_kmer = "AAAAAAAAAAAA"
      assert @sketch.add(kmer)
      assert_equal 1, @sketch.get(kmer)
      assert_equal 0, @sketch.get(other_kmer)
    end

    should 'calculate hash function' do
      assert_equal 19, @sketch.hashing("ACGT",0)
      assert_equal 12, @sketch.hashing("ACGT",1)
    end

    should 'calculate the reverse complement' do
      a = "AAACGTCGT"
      b = "ACGACGTTT"
      assert_equal a, @sketch.revcomp(b)
    end

    should 'calculate same hash for kmer and revcomp' do
      a = @sketch.hashing("AAACGTCGT", 0)
      b = @sketch.hashing("ACGACGTTT", 0)
      assert a==b, "#{a} should equal #{b}"
    end

    # should 'calculate false positive rate' do
    # end
  end
end
