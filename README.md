# Microsoft Teams 24/7 Availability Bot

Keep yourself "Available" on Microsoft Teams 24 hours a day, 7 days a week automatically.

## Features

✅ **Automatic Status Management** - Always shows as "Available"
✅ **Activity Simulation** - Prevents idle/away status
✅ **Configurable Updates** - Adjustable check intervals
✅ **Logging & Monitoring** - Full activity logs
✅ **Multiple Deployments** - Local, Docker, Cloud, Raspberry Pi
✅ **Error Recovery** - Auto-reconnect on failures

## Installation

### Prerequisites
- Python 3.8+
- Chrome/Chromium browser
- Microsoft Teams account

### Quick Start

1. Clone the repository:
```bash
git clone https://github.com/sidkhutwad1462-lgtm/24-7-teams.git
cd 24-7-teams
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Create .env file:
```bash
cp .env.example .env
# Edit .env with your Teams credentials
nano .env
```

4. Run the bot:
```bash
python teams_availability.py
```

## Configuration

Edit `.env` file to customize:

- **TEAMS_EMAIL** - Your Teams account email
- **TEAMS_PASSWORD** - Your Teams password
- **UPDATE_INTERVAL** - How often to check status (seconds)
- **ACTIVITY_SIMULATION** - Enable/disable activity simulation

## Deployment Options

See DEPLOYMENT.md for:
- Docker deployment
- Linux systemd service
- Cloud deployments (AWS, Azure, Heroku)
- Raspberry Pi setup

## How It Works

1. Logs into Teams automatically
2. Monitors your current status
3. Sets status to "Available" every minute
4. Simulates activity to prevent idle timeout
5. Logs all actions for troubleshooting

## Security Notes

⚠️ **Important:**
- Never commit .env file with real credentials
- Use environment variables in production
- Consider using OAuth instead of password storage
- Keep bot running on secure server

## Troubleshooting

### Bot can't authenticate
- Verify email and password in .env
- Check if 2FA is enabled (may need app password)
- Ensure Teams web version works with your account

### Status keeps resetting
- Increase UPDATE_INTERVAL in .env
- Check internet connection stability
- Review logs in teams_availability.log

## License

MIT License - See LICENSE file

## Support

For issues and questions, please create an issue on GitHub.

---

**⚠️ Disclaimer:** This tool is provided for team availability management. Ensure compliance with your organization's policies regarding activity automation.