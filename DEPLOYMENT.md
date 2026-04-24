# Deployment Guide

Deploy your Teams Availability Bot 24/7 using these options:

## Option 1: Local Development (Testing)

```bash
python teams_availability.py
```

## Option 2: Linux Systemd Service (VPS/Dedicated Server)

1. Copy service file:
```bash
sudo cp teams-24-7.service /etc/systemd/system/
```

2. Enable and start service:
```bash
sudo systemctl daemon-reload
sudo systemctl enable teams-24-7
sudo systemctl start teams-24-7
```

3. Check status:
```bash
sudo systemctl status teams-24-7
```

## Option 3: Docker Deployment

1. Build Docker image:
```bash
docker build -t teams-bot .
```

2. Run container:
```bash
docker run -d \
  --name teams-bot \
  -e TEAMS_EMAIL=your-email@company.com \
  -e TEAMS_PASSWORD=your-password \
  teams-bot
```

## Option 4: Docker Compose

```bash
docker-compose up -d
```

Check logs:
```bash
docker-compose logs -f
```

## Option 5: Raspberry Pi

1. Install Python 3.8+:
```bash
sudo apt update
sudo apt install python3-pip
```

2. Clone and setup:
```bash
git clone https://github.com/sidkhutwad1462-lgtm/24-7-teams.git
cd 24-7-teams
bash install.sh
```

3. Run as service (see Option 2)

## Option 6: AWS Lambda

Use teams_availability_api.py with OAuth tokens for serverless deployment.

## Option 7: Azure Functions

Deploy as timed Azure Function for cloud-based 24/7 availability.

## Monitoring

Monitor your bot:
```bash
# View logs
tail -f teams_availability.log

# Check process
ps aux | grep teams_availability
```

## Troubleshooting Deployments

### Docker container exits immediately
- Check environment variables
- Verify credentials in docker-compose.yml
- View logs: docker logs teams-bot

### Systemd service fails to start
- Check file permissions
- Verify python path in service file
- Review systemd logs: journalctl -u teams-24-7

### Process keeps crashing
- Check internet connectivity
- Review logs for auth errors
- Increase UPDATE_INTERVAL