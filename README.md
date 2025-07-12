# Gensyn Node Guide

## 📍 Remove Previous data. Take Back up of swarm.pem file if it's old. 

```
cd ~
cp rl-swarm/swarm.pem ~
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
rm -rf .venv #optional 
python3 -m venv .venv && source .venv/bin/activate && cd rl-swarm 
```

```
./run_rl_swarm.sh
```

## Getting terminated error / Update to Letest 
```
cd rl-swarm
git switch main
git reset --hard
git clean -fd
git pull origin main
```
##  Error self.run_game_round()  # Loops through stages until end of round signal is received
```
sed -i 's/rewards = torch.tensor(rewards)/rewards = torch.tensor([[r, 0.0] if isinstance(r, (int, float)) else r for r in rewards])/g' ~/.venv/lib/python3.12/site-packages/genrl/trainer/grpo_trainer.py
```


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



