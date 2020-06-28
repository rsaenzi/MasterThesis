#! /usr/bin/env bash

# To make this file executable run 'chmod +x StartTrainingPPO.sh'
# To run this file open a terminal and run './StartTrainingPPO.sh'

clear

echo
echo '-------------------------------------------------------------------------------------------------------------'
echo
echo 'Evaluating the impact of Curriculum Learning on the training process for an intelligent agent in a video game'
echo 'Maestría en Ingeniería de Sistemas y Computación, Modalidad Profundización'
echo 'Universidad Nacional de Colombia - Sede Bogotá'
echo
echo 'Supervised by:'
echo 'PhD. Jorge Eliecer Camargo Mendoza'
echo 'jecamargom@unal.edu.co'
echo
echo 'Presented by:'
echo 'Rigoberto Sáenz Imbacuán'
echo 'rsaenzi@unal.edu.co'
echo
echo '-------------------------------------------------------------------------------------------------------------'
echo

echo
cd '/Users/rsaenz/Documents/Projects/master-thesis/SoccerExperiments'
pwd
ls

echo
echo 'Adding ml-agents to $PATH:'
export PATH=$PATH:/Users/rsaenz/Library/Python/3.7/bin
echo $PATH

echo
echo 'Checking Python version:'
which -a python
python3 --version
python3 -m pip -V

echo
echo 'Running 100M experiments with Proximal Policy Optimization (PPO) only:'
mlagents-learn TrainingConfigPPO.yaml --run-id PPO_only --num-envs 1 --env builds/SoccerAcademyV10_100Fields --no-graphics --force
# --curriculum TrainingCurriculaAB.yaml

echo
echo 'Opening TensorBoard to see results for Proximal Policy Optimization (PPO) only:'
open http://localhost:6006/
tensorboard --logdir=summaries