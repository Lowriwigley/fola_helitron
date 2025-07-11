# fola_helitron
## 09/07/25
### Log
- TO submit helitron analysis of genome to HPC: 
``` 
sbatch ../scripts/heliano.sh ../genomes/Fo_fsp_lactucae_AJ516.fasta AJ516 
```
- This was carried out for 16 different genomes, with each analysis saved in scratch/fola_helitron/heliano. 
- TO check status of job:
```
squeue --user lwigley
```
- TO use older/lost commands: ctrl shift p then type terminal run recent command.

## 10/07/25
### Log
- Installed helitronscanner
- To find length of helitrons by counting lines:

```
wc -l
```

## 11/07/25
### Log
- To create an environment for a tool:
```
conda create -n [name]
```
- Figured out how to use helitronscanner - required us to input the nucleotides that it needed to look for.
- To run helitronscanner, navigate to the helitronscanner folder, then input:
```
sbatch ../scripts/helitronscanner.sh ../genomes/Fo_fsp_lactucae_AJ516.fasta AJ516
```
- Installed EAHelitron.
```
git clone https://github.com/dontkme/EAHelitron.git
perl EAHelitron -h
```
- To run EAHelitron after making script:
```
sbatch ../scripts/eahelitron.sh ../genomes/Fo_fsp_lactucae_AJ516.fasta AJ516
```




