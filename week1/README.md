Sure! Here's the detailed, beginner-friendly Week 1 README in Markdown format for you to paste directly into your `week1/README.md`:

````markdown
# Week 1 – Linux Uptime & Cron Job Lab

## What I Learned  
- **Cron jobs** are scheduled tasks in Linux that run automatically at specified times or intervals. They help automate repetitive tasks without manual intervention.  
- The `uptime` command shows how long the system has been running and the system load.  
- Combining cron with bash scripts allows you to regularly run commands and save their output for monitoring or logging.

## What I Did  
- Created a simple bash script `uptime.sh` that runs the `uptime` command and appends the output to a log file `uptime-log.txt`.  
- Set up a cron job to run this script every 5 seconds (using a workaround since cron only supports per-minute scheduling).  
- Verified that the uptime data was being logged correctly over time.

## How to Run This Lab  
1. Make the script executable:  
   ```bash
   chmod +x week1/uptime.sh
````

2. Edit your crontab by running:

   ```bash
   crontab -e
   ```

3. Add the following lines to run the script every 5 seconds using multiple cron entries with `sleep` delays:

   ```cron
   * * * * * /full/path/to/site-reliability-journey/week1/uptime.sh
   * * * * * sleep 5; /full/path/to/site-reliability-journey/week1/uptime.sh
   * * * * * sleep 10; /full/path/to/site-reliability-journey/week1/uptime.sh
   * * * * * sleep 15; /full/path/to/site-reliability-journey/week1/uptime.sh
   * * * * * sleep 20; /full/path/to/site-reliability-journey/week1/uptime.sh
   * * * * * sleep 25; /full/path/to/site-reliability-journey/week1/uptime.sh
   * * * * * sleep 30; /full/path/to/site-reliability-journey/week1/uptime.sh
   * * * * * sleep 35; /full/path/to/site-reliability-journey/week1/uptime.sh
   * * * * * sleep 40; /full/path/to/site-reliability-journey/week1/uptime.sh
   * * * * * sleep 45; /full/path/to/site-reliability-journey/week1/uptime.sh
   * * * * * sleep 50; /full/path/to/site-reliability-journey/week1/uptime.sh
   * * * * * sleep 55; /full/path/to/site-reliability-journey/week1/uptime.sh
   ```

   > Replace `/full/path/to/site-reliability-journey/` with the actual full path to your project directory.

4. Save and exit the crontab editor.

5. Wait a minute, then check `week1/uptime-log.txt` to see logged uptime entries.

## Resources Used

* [Cron How-To — Ubuntu Documentation](https://help.ubuntu.com/community/CronHowto)
* [Linux `uptime` Command Manual](https://man7.org/linux/man-pages/man1/uptime.1.html)
* Google SRE Book (Basics of automation and monitoring)

## Challenges & Notes

* Cron jobs only support scheduling at a minimum of one minute intervals, so running something every 5 seconds needs the `sleep` workaround.
* Ensure the script path is absolute in the cron entries. Relative paths may cause the cron job to fail silently.
* Permissions matter! The script must be executable, and cron runs under your user context unless specified otherwise.

---

*This README is designed to help beginners understand and practice basic Linux automation using cron and bash scripting.*

```

