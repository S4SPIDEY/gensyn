# Gensyn Node Guide


---

## 📍 Remove Previous data. Take Back up of *.prem file if it's old. 

```
sudo pkill screen
sudo rm -rf rl-swarm
```

## 📦 New User Start From Here - Node Setup Commands

```
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/gistfile1.txt | bash
```
```
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/grpo-qwen-2.5-0.5b-deepseek-r1.yaml -o rl-swarm/hivemind_exp/configs/mac/grpo-qwen-2.5-0.5b-deepseek-r1.yaml && \
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/layout.tsx -o rl-swarm/modal-login/app/layout.tsx && \
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/page.tsx -o rl-swarm/modal-login/app/page.tsx
```

```
screen -S aimodel
```

```
python3 -m venv .venv
source .venv/bin/activate
cd rl-swarm
```

```
./run_rl_swarm.sh
```

---

## 🌐 Only for VPS users Install Cloudflare Tunnel (Start This in another Tab/Screen) 

### 1. Download and Install 
```
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/install-firewall-cloudflared.sh | bash
```

### 2. Start Tunnel
```
cloudflared tunnel --url http://localhost:3000
```
