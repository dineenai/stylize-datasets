#!/bin/bash
#
#SBATCH -J blurry_style_transfer_dtd_porous_geometric_shapes_triangles
#SBATCH --output=/home/ainedineen/blurry_vision/stylize-datasets/style_transfer_dtd_geometric_shapes/porous_train_triangles/logs/slurm-%j.out
#SBATCH --error=/home/ainedineen/blurry_vision/stylize-datasets/style_transfer_dtd_geometric_shapes/porous_train_triangles/logs/slurm-%j.err

DIR="/home/ainedineen/blurry_vision/stylize-datasets/geometric_shapes/triangle"
STYLE="/home/ainedineen/blurry_vision/stylize-datasets/dtd/images/porous"
OUT="/home/ainedineen/blurry_vision/stylize-datasets/style_transfer_dtd_geometric_shapes/porous_train_triangles/stylised_shapes"
PYTHON="/opt/anaconda3/envs/stylize_datasets/bin/python"

${PYTHON} stylize.py --content-dir ${DIR} \
--style-dir ${STYLE} \
--output-dir ${OUT} 
