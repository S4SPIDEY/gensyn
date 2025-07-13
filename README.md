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

### Getting terminated error / Update to Letest 
```
cd rl-swarm
git switch main
git reset --hard
git clean -fd
git pull origin main
```
###  Error 'self.run_game_round()' OR 'global_step = self.step' OR 'rewards = torch.tensor(rewards)'
```
# === Patch 1: Fix rewards format robustly ===
sed -i 's|rewards = torch.tensor.*|rewards = torch.tensor([r if isinstance(r, list) and len(r) == 2 else ([r[0], 0.0] if isinstance(r, list) and len(r) == 1 else ([r, 0.0] if isinstance(r, (int, float)) else [0.0, 0.0])) for r in rewards])|g' ~/.venv/lib/python3.12/site-packages/genrl/trainer/grpo_trainer.py

# === Patch 2: Add safe padding (no shape logs) ===
sed -i '/# Concatenate prompt and completion/i\
        # ---- auto‑pad prompt & completion so torch.cat doesn'\''t crash ----\n\
        if prompt_ids.size(1) != completion_ids.size(1):\n\
            max_len = max(prompt_ids.size(1), completion_ids.size(1))\n\
            pad_prompt = max_len - prompt_ids.size(1)\n\
            pad_comp  = max_len - completion_ids.size(1)\n\
            if pad_prompt > 0:\n\
                prompt_ids  = torch.nn.functional.pad(prompt_ids,  (0, pad_prompt),  value=self.processing_class.pad_token_id)\n\
                prompt_mask = torch.nn.functional.pad(prompt_mask, (0, pad_prompt),  value=0)\n\
            if pad_comp > 0:\n\
                completion_ids  = torch.nn.functional.pad(completion_ids,  (0, pad_comp),  value=self.processing_class.pad_token_id)\n\
                completion_mask = torch.nn.functional.pad(completion_mask, (0, pad_comp),  value=0)\n\
        # --------------------------------------------------------------------' ~/.venv/lib/python3.12/site-packages/genrl/trainer/grpo_trainer.py

```
### Error: 'Daemon failed to start in 15.0 seconds'
```
sed -i -E 's/startup_timeout: float =15/startup_timeout: float = 120/' ~/.venv/lib/python3.12/site-packages/hivemind/p2p/p2p_daemon.py
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



