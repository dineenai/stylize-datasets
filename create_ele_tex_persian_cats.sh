
#!/bin/bash
#
#SBATCH --gres=gpu:2
#SBATCH --cpus-per-task=12
#SBATCH -J blurry_style_transfer_dtd_porous_geometric_shapes_triangles
#SBATCH --output=/home/ainedineen/blurry_vision/stylize-datasets/persian_elephants/logs/slurm-%j.out
#SBATCH --error=/home/ainedineen/blurry_vision/stylize-datasets/persian_elephants/logs/slurm-%j.err

DIR="/home/ainedineen/blurry_vision/stylize-datasets/persian_elephants/Persian"
STYLE="/home/ainedineen/blurry_vision/stylize-datasets/persian_elephants/recognised_ele_tex_google/style"
OUT="/home/ainedineen/blurry_vision/stylize-datasets/persian_elephants/persian_ele_tex_ST"
PYTHON="/opt/anaconda3/envs/stylize_datasets/bin/python"

${PYTHON} stylize.py --content-dir ${DIR} \
--style-dir ${STYLE} \
--output-dir ${OUT} 
