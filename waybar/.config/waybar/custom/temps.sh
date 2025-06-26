#!/bin/bash

# Get CPU temp (using 'sensors' from lm_sensors)
cpu_temp=$(sensors | awk '/^Tctl:/ {print $2}' | sed 's/+//' | head -n1)

# Get GPU temp (for Intel/AMD/NVIDIA, adjust as needed)
# Example for NVIDIA (requires nvidia-smi):
if command -v nvidia-smi &>/dev/null; then
  gpu_temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits | head -n1)
  gpu="GPU: ${gpu_temp}°C"
else
  # Example for AMD (requires sensors):
  gpu_temp=$(sensors | awk '/^edge:/ {print $2}' | sed 's/+//' | head -n1)
  if [ -n "$gpu_temp" ]; then
    gpu="GPU: ${gpu_temp}"
  else
    gpu=""
  fi
fi

echo "CPU: ${cpu_temp} ${gpu}"
