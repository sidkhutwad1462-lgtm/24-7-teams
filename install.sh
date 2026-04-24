#!/bin/bash

echo "Installing Microsoft Teams 24/7 Availability Bot..."
echo "=================================================="

# Check Python version
if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 is not installed"
    exit 1
fi

echo "✓ Python 3 found"

# Create virtual environment
echo "Creating virtual environment..."
python3 -m venv venv
source venv/bin/activate

echo "✓ Virtual environment created"

# Install requirements
echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "✓ Dependencies installed"

# Setup .env file
if [ ! -f .env ]; then
    echo "Creating .env file from template..."
    cp .env.example .env
    echo "⚠ Edit .env file with your Teams credentials"
else
    echo "✓ .env file already exists"
fi

echo ""
echo "=================================================="
echo "Installation complete!"
echo ""
echo "Next steps:"
echo "1. Edit .env file with your Teams credentials"
echo "2. Run: source venv/bin/activate"
echo "3. Run: python teams_availability.py"
echo ""
echo "For 24/7 deployment, see DEPLOYMENT.md"