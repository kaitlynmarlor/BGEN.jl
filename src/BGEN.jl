module BGEN
import Base: length, getindex, setindex, firstindex, lastindex, eltype, size,
            iterate, close, Iterators.filter
import Tables: columntable
import Statistics: mean
import SpecialFunctions: gamma_inc
import TranscodingStreams: initialize, finalize, buffermem, startproc, process, Buffer, Error
import GeneticVariantBase: GeneticData, Variant, VariantIterator, iterator
import GeneticVariantBase: chrom, pos, rsid, alleles, alt_allele, ref_allele
import GeneticVariantBase: maf, hwepval, infoscore, alt_dosages!
import GeneticVariantBase
export Bgen, Samples, Variant, Genotypes, Index
export io, fsize, samples, n_samples, n_variants, compression
export varid, rsid, chrom, pos, n_alleles, alleles, minor_allele, major_allele
export phased, min_ploidy, max_ploidy, ploidy, bit_depth, missings
export parse_variants, iterator, probabilities!, minor_allele_dosage!
export first_allele_dosage!, clear!, hardcall, hardcall!
export select_region, variant_by_rsid, variant_by_pos, variant_by_index
export rsids, chroms, positions
export hwe, maf, info_score, counts!
export BgenVariantIteratorFromStart, BgenVariantIteratorFromOffsets
using CodecZlib, CodecZstd, SQLite, SIMD
include("structs.jl")
include("iterator.jl")
include("header.jl")
include("minor_certain.jl")
include("sample.jl")
include("variant.jl")
include("bgen_ftns.jl")
include("genotypes.jl")
include("index.jl")
include("utils.jl")
include("filter.jl")
datadir(parts...) = joinpath(@__DIR__, "..", "data", parts...)

end
