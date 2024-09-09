# oxDNA-bug
The bug relates to MD simulations on GPU. In  the documentation of oxDNA (as of 09.09.2024), the setting "cells_auto_optimisation = false" is proposed to improve performance.

I am working on the bwForHelix cluster and I used interactive SLURM jobs (via salloc command) to run simulations within the notebook. In this context, any MD simulation that I tried to run on GPU with "cells_auto_optimisation = false" killed the notebook kernel directly. It then looks like this:

![image](https://github.com/user-attachments/assets/5a272a30-5404-43a9-a0d4-690ee4d37262)

In this repo, you can find a minimal working example from what I used on the cluster to crash the kernel.
I also tried to use SLURM jobs to run the jobs and there, a better error message is shown - however I do not know to counteract it: It reads "CUDA error at /path/to/oxDNA/src/CUDA/Lists/CUDASimpleVerletList.cu 147: out of memory"
