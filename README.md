# Gensyn Node Guide


---

## 📍 Used another guide, Remove those first. 

```bash
sudo pkill screen
sudo rm -rf rl-swarm
```


## 📦 New User Start From Here - Node Setup Commands

```bash
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/gistfile1.txt | bash
```
```bash
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/grpo-qwen-2.5-0.5b-deepseek-r1.yaml -o rl-swarm/hivemind_exp/configs/mac/grpo-qwen-2.5-0.5b-deepseek-r1.yaml
```
```bash
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/layout.tsx -o rl-swarm/modal-login/app/layout.tsx
```
```bash
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/page.tsx -o rl-swarm/modal-login/app/page.tsx
```
```bash
cd rl-swarm
```
```bash
screen -S gensyn
```
```bash
python3 -m venv .venv
source .venv/bin/activate
```
```bash
./run_rl_swarm.sh
```

---

## 🌐 Install Cloudflare Tunnel (Start This in another Tab/Screen) 

### 1. Download and Install 
```bash
curl -sL https://raw.githubusercontent.com/S4SPIDEY/gensyn/refs/heads/main/install-firewall-cloudflared.sh | bash
```

### 2. Start Tunnel
```bash
cloudflared tunnel --url http://localhost:3000
```
