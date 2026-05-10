#!/bin/bash
# Install system dependencies
apt-get update
apt-get install -y gcc python3-dev default-libmysqlclient-dev build-essential

# Install Python packages
pip install -r requirements.txt

# Download NLTK data
python -c "import nltk; nltk.download('punkt'); nltk.download('stopwords'); nltk.download('vader_lexicon'); nltk.download('words')"

# Download spaCy model
python -m spacy download en_core_web_sm
