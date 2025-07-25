python launch.py --config configs/edit-sd-ours.yaml --train --gpu 0 \
    system.seg_prompt="T-shirt" \
    trainer.max_steps=1500 \
    system.prompt_processor.prompt="shirt" \
    system.dds_target_prompt_processor.prompt="A man wearing a T-shirt with a pineapple pattern and brown pants" \
    system.dds_source_prompt_processor.prompt="A man wearing a blue T-shirt and brown pants" \
    system.max_densify_percent=0.01 \
    system.anchor_weight_init_g0=0.05 \
    system.anchor_weight_init=0.1 \
    system.anchor_weight_multiplier=1.3 \
    system.gs_lr_scaler=1 \
    system.gs_final_lr_scaler=1 \
    system.color_lr_scaler=0.8 \
    system.opacity_lr_scaler=0.8 \
    system.scaling_lr_scaler=1 \
    system.rotation_lr_scaler=1 \
    system.loss.lambda_anchor_color=0 \
    system.loss.lambda_anchor_geo=5 \
    system.loss.lambda_anchor_scale=5 \
    system.loss.lambda_anchor_opacity=5 \
    system.densify_from_iter=100 \
    system.densify_until_iter=1201 \
    system.densification_interval=100 \
    data.source=./gs_data/person-small-tar \
    system.gs_source=./gs_data/person-small-tar/7k-depth.ply