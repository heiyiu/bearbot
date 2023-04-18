FROM python:3.11-slim
# Get discord bot token
ENV DISCORD_BOT_TOKEN default

# Install required dependencies
RUN apt update && \
    apt upgrade -y && \
    apt install -y --no-install-recommends libffi-dev libnacl-dev python3-dev

# Install python req
RUN mkdir /app
ADD requirements.txt discord_app.py /app/
RUN python3 -m pip install -r /app/requirements.txt

CMD ["python3", "/app/discord_app.py"]