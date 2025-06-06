download `last_ws.sh` or `firstand_last_ws.sh`

**__make sure you have xdotool installed__**
`sudo apt install xdotool`

Make it executable 
```bash
chmod +x last_ws.sh
chmod +x firstand_last_ws.sh
```

#### Set Up Keyboard Shortcuts
> this is for linux mint, the os this script was made on, your os might not be supported for this script
> **System Settings** > **Keyboard** > **Shortcuts** > **Custom Shortcuts** and add:  

| **Name**          | **Command**                          | **Shortcut**         |
|-------------------|-------------------------------------|----------------------|
| "Move Left (Wrap)" | `~/last_ws.sh left`           | `Ctrl+Alt+Left`      |
| "Move Right (Wrap)"| `~/last_ws.sh right`          | `Ctrl+Alt+Right`     |

#### !!! Disable Default Shortcuts !!!  
**System Settings** > **Keyboard** > **Workspaces** (to avoid conflicts).  

---

### **How It Works**  
- **Ctrl+Alt+Right** → Moves right in order (`0 → 1 → 2 → 3 → 0...`).  
- **Ctrl+Alt+Left** → Moves left in order (`0 → 3 → 2 → 1 → 0...`).  
  - If you're on **Workspace 0**, pressing **Left** takes you to the **last workspace** (like a loop).  

---
 
> If you **only** want **Left** to swap between **first & last workspace** (skipping middle ones) use `firstand_last_ws.sh`


This makes:  
- **Left** = Toggle between **WS 0** and **last WS**.  
- **Right** = Move normally.  

---

### **Which One Should You Use?**  
| **Behavior**                     | **Use Case**                          |
|----------------------------------|---------------------------------------|
| **Left wraps to last WS**        | Best for normal navigation (default-like but smarter). |
| **Left toggles first/last only** | Best if you mostly use two workspaces but have extras. |
