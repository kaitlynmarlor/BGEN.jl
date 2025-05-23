using BGEN
using Statistics, Test, Printf
using GeneticVariantBase
const example_8bits = BGEN.datadir("example.8bits.bgen")
const example_10bits = BGEN.datadir("example.10bits.bgen")
const example_16bits = BGEN.datadir("example.16bits.bgen")
const example_sample = BGEN.datadir("example.sample")
include("utils.jl")
const gen_data = load_gen_data()
const vcf_data = load_vcf_data()
const haps_data = load_haps_data()
include("test_basics.jl")
# include("test_getters.jl")
# include("test_select_region.jl")
# include("test_index.jl")
# include("test_load_example_files.jl")
# include("test_minor_allele_dosage.jl")
# include("test_utils.jl")
# include("test_filter.jl")
