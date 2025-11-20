# 🧠 Gensyn Node Guide

> Quick setup for running your Gensyn node on local or VPS environment  
> Includes startup, model selection, error handling & Cloudflare tunnel

---

## 🔁 Clean Setup (Optional But Recommended)

Before starting, **remove previous setup** and **backup your existing key** (`swarm.pem`):

```bash
cd ~
cp rl-swarm/swarm.pem ~
sudo rm -rf rl-swarm && sudo rm -rf .venv  
```
## Set up 16 Gb of Swap Memory(oneTime)
```
echo "setting up 16GB of swap Memory..."
sudo fallocate -l 16G /swapfile && sudo chmod 600 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && echo 'vm.swappiness=10' | sudo tee /etc/sysctl.d/99-swappiness.conf && sudo sysctl --system
```
---

## 🚀 One-Liner Setup for New Users

```bash
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/gistfile1.txt | bash
```

> This script will install required packages, clone the repo, and prepare your system

---

## 🧾 Run the Node

```bash
screen -S gen
```

```bash
python3 -m venv .venv && source .venv/bin/activate && cd rl-swarm
```

```bash
./run_rl_swarm.sh
```

---

## 🔄 Update to Latest (If Errors or Upgrade Required)

```bash
rm -rf .venv      # Optional: reset virtual environment
cd rl-swarm
git fetch --all --tags && git switch main && git reset --hard origin/main && git clean -fd && git describe --tags 
./run_rl_swarm.sh
```

## 🌐 (VPS Users Only) – Enable Cloudflare Tunnel for Browser Access

> Run this in a **new tab** or **screen session**

### 1. Install Tunnel Script

```bash
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/install-firewall-cloudflared.sh | bash
```

### 2. Start Tunnel

```bash
cloudflared tunnel --url http://localhost:3000
```

---

## 🧠 Supported Model Names

Use one of these models when prompted:

```
Gensyn/Qwen2.5-0.5B-Instruct
```
```
Qwen/Qwen3-0.6B
```
```
nvidia/AceInstruct-1.5B
dnotitia/Smoothie-Qwen3-1.7B
Gensyn/Qwen2.5-1.5B-Instruct
```

---

## 📝 Notes

- Use `screen -r gen` to reattach your screen session anytime.
- You can reuse `swarm.pem` across reboots or reinstalls — just copy it back into your `rl-swarm` folder.
- Need help? Ping the Gensyn Discord or check repo Issues.

---


