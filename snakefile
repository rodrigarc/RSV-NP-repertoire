

rule igdiscover_init:
	input: 
		"data/databases/individualized/E11/V.fasta"
#	output: 
#		"data/processed_data/TR1-B2-igg/individualized/E11/igdiscover.yaml"
	shell: 
		"src/igdiscover-init.sh individualized TR1-B2-igg"

rule edit_yaml_file:
	#input:
		#"data/processed_data/TR1-B2-igg/individualized/E11/igdiscover.yaml"
	#output:
	#	"data/processed_data/TR1-B2-igg/individualized/E11/igdiscover.yaml"
	shell:
		"""
		find $ROOT/data/processed_data/$NGS_RUN/$DATABASE  -type f -name "*.yaml" -exec sed -i 's/barcode_length_3prime: 0/barcode_length_3prime: 21/g' {{}} \\;
		find $ROOT/data/processed_data/$NGS_RUN/$DATABASE -type f -name "*.yaml" -exec sed -i 's/iterations: 1/iterations: 0/g' {{}} \\;
		"""
rule clean:
	shell:
		"rm -rf data/processed_data/*"

