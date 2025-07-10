Absolutely! Here's the adjusted, **beginner-friendly** and **SRE-style** Week 2 `README.md`, tailored to match your documentation style and goals — especially for teaching and portfolio visibility:

---

```markdown
# Week 2 – Service Crash Simulation with Bash + systemd

## 🧠 What I Learned  
- **Systemd services** allow you to manage long-running processes like background services (daemons).
- Using a simple **Bash script**, I can simulate a crashing service by randomly exiting with an error code.
- This is useful for practicing **monitoring**, **auto-restart logic**, and **resilience testing**.
- Learned how to use `systemctl` to start, stop, and inspect services, as well as use `journalctl` for logs.

---

## 🔧 What I Did  
- Wrote a script called `crashing-service.sh` that randomly crashes to simulate unreliable behavior.  
- Wrote a `systemd` unit file called `crashing-service.service` to manage the script as a Linux service.  
- Tested service behavior by observing random failures and verifying auto-restart functionality.

---

## 🛠️ Folder Structure  
```

week2/
├── crashing-service.sh          # Bash script simulating service crashes
├── crashing-service.service     # systemd unit file to manage the service
└── README.md                    # This documentation file

````

---

## 📝 How to Set It Up

### 1️⃣ Make the script executable
```bash
chmod +x crashing-service.sh
````

### 2️⃣ Copy the service file to systemd directory

```bash
sudo cp crashing-service.service /etc/systemd/system/
```

### 3️⃣ Reload systemd to recognize the new service

```bash
sudo systemctl daemon-reload
```

### 4️⃣ Start the crashing service

```bash
sudo systemctl start crashing-service
```

### 5️⃣ Enable it to start automatically on boot

```bash
sudo systemctl enable crashing-service
```

---

## 📋 Sample Output from Script

You may see either of the following when the service runs:

```bash
[START] Tue Jul 8 18:42:00 UTC 2025: Service starting...
[OK] Running smoothly.
```

Or:

```bash
[START] Tue Jul 8 18:43:05 UTC 2025: Service starting...
[CRASH] Oops! Simulating crash...
```

The randomness is intentional to help simulate **flaky or unreliable services**.

---

## 💡 Manage and Debug the Service

| Task         | Command                                   |
| ------------ | ----------------------------------------- |
| Check status | `sudo systemctl status crashing-service`  |
| Stop service | `sudo systemctl stop crashing-service`    |
| Restart      | `sudo systemctl restart crashing-service` |
| View logs    | `journalctl -u crashing-service`          |

---

## ⚠️ Notes & Gotchas

* **Permission:** All `systemctl` and `journalctl` commands require `sudo`.
* **Path matters:** Ensure the path in the `.service` file points to the actual location of your `crashing-service.sh`.
* **systemd may not run fully inside WSL** unless you're using systemd-enabled WSL2 (Ubuntu 22.04+).

---

## 📚 Resources

* [Systemd Unit Files – freedesktop.org](https://www.freedesktop.org/wiki/Software/systemd/)
* [Bash Scripting Basics](https://www.tldp.org/LDP/Bash-Beginners-Guide/html/)
* [Journalctl Reference](https://man7.org/linux/man-pages/man1/journalctl.1.html)

---

*This lab is part of my 90-day SRE hands-on journey. It’s designed to help new learners build, simulate, and debug real system issues using Linux tools.*

````

