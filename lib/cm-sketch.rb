#!/usr/bin/env ruby

class CMSketch

  def initialize num_of_hashes, size_of_hash
    @num_of_hashes = num_of_hashes
    @size_of_hash = size_of_hash
    @data = Array.new(@num_of_hashes)
    @data.each_with_index do |a, i|
      @data[i] = Array.new(@size_of_hash,0)
    end
  end

  def add kmer
    @num_of_hashes.times do |i|
      n = hashing(kmer, i)
      @data[i][n] += 1
    end
  end

  def get kmer
    counts = []
    @num_of_hashes.times do |i|
      n = hashing(kmer, i)
      counts[i] = @data[i][n]
    end
    counts.min
  end

  def revcomp kmer
    kmer.reverse.tr("ACGT", "TGCA")
  end

  def hashing kmer, n
    remk = revcomp(kmer)
    kmer = remk if remk < kmer
    rng = Random.new(n)
    r = rng.rand(@size_of_hash)
    h = 0b0
    kmer.each_char do |c|
      if c=="A"
        h = h << 2
        h += 0b00 # 0
      elsif c=="C"
        h = h << 2
        h += 0b01 # 1
      elsif c=="G"
        h = h << 2
        h += 0b10 # 2
      elsif c=="T"
        h = h << 2
        h += 0b11 # 3
      else
      end
    end
    h += r
    h = h % @size_of_hash
    return h
  end

end