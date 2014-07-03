Count Min Sketch implementation in Ruby
=======================================

Diginorm v0.1 by Chris Boursnell <cmb211@cam.ac.uk>

Digital Normalisation by median
Totally ripped off from Titus Brown (http://khmer.readthedocs.org/en/v1.1/)

USAGE:
diginorm <options>

OPTIONS:
         --left, -l <s>:   fastq file
        --right, -r <s>:   second fastq file
       --output, -o <s>:   output fastq file
            --k, -k <i>:   size of kmers to use (default: 21)
      --buckets, -b <i>:   number of buckets (default: 4)
  --bucket-size, -s <i>:   size of buckets (default: 10000)
       --cutoff, -c <i>:   cutoff coverage (default: 20)
             --help, -h:   Show this message

