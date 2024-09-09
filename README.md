# oxDNA-bug
The bug relates to MD simulations on GPU. In  the documentation of oxDNA (as of 09.09.2024), the setting "cells_auto_optimisation = false" is proposed to improve performance.

I am working on the bwForHelix cluster and I used interactive SLURM jobs (via salloc command) to run simulations within the notebook. In this context, any MD simulation that I tried to run on GPU with "cells_auto_optimisation = false" killed the notebook kernel directly.
In this repo, you can find a minimal working example from what I used on the cluster and which still crashes.
