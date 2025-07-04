# Gensyn Node Guide

## 🌐 Only for VPS users Install Cloudflare Tunnel (Start This in another Tab/Screen) 

### 1. Download and Install 
```
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/install-firewall-cloudflared.sh | bash
```

### 2. Start Tunnel
```
cloudflared tunnel --url http://localhost:3000
```

---

## 📍 Remove Previous data. Take Back up of *.prem file if it's old. 

```
sudo rm -rf rl-swarm
```

## 📦 New User Start From Here - Node Setup Commands

```
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/gistfile1.txt | bash
```

```
screen -S gen
```

```
rm -rf .venv
python3 -m venv .venv
source .venv/bin/activate
cd rl-swarm
```

```
./run_rl_swarm.sh
```

# Run This to update to latest
```
cd rl-swarm
git switch main
git reset --hard
git clean -fd
git pull origin main
rm -rf .venv
python3 -m venv .venv
source .venv/bin/activate
./run_rl_swarm.sh
```


## Model Names

```
Gensyn/Qwen2.5-0.5B-Instruct
```
```
Qwen/Qwen3-0.6B
```
```
nvidia/AceInstruct-1.5B
```
```
dnotitia/Smoothie-Qwen3-1.7B
```
```
Gensyn/Qwen2.5-1.5B-Instruct
```



