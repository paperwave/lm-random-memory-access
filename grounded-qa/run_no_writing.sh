model_name=$1
# export WANDB_PROJECT= replace with your own wandb project name
for version in baseline context ; do
    export WANDB_TAGS="clm,$model_name,squad_content, v5_full, $version "
    bash run_clm.sh tyzhu/squad_qa_$version\_v5_full $model_name
done

