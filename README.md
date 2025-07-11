# fola_helitron
## 09/07/25
### Log
- TO submit helitron analysis of genome to HPC: 


``` 
sbatch ../scripts/heliano.sh ../genomes/Fo_fsp_lactucae_AJ516.fasta AJ516 
```


- This was carried out for 16 different genomes, with each analysis saved in scratch/fola_helitron/heliano. 
- TO check status of job: squeue --user lwigley
- TO use older/lost commands: ctrl shift p then type terminal run recent command.

## 10/07/25
### Log
- Installed helitronscanner
- To find length of helitrons by counting lines:

```
wc -l
```

