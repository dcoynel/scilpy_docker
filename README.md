# scilpy_docker
Dockerfile to create a container for the https://github.com/scilus/scilpy library.

I needed to run scilpy on a HPC cluster, where installing extra libraries as root is not possible. 

This container is based on centOS7-python3.8 and should run properly. 

To pull the container using singularity:
`singularity pull docker://dcoynel/python3.8-scilpy`

Example command using singularity:
`singularity run python3.8-scilpy_latest.sif python /opt/app-root/src/scilpy/scripts/scil_apply_bias_field_on_dwi.py -h`
