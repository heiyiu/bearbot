FROM python:3.11-slim
# Get discord bot token
RUN --mount=type=secret,id=discord_bot_token

# Install required dependencies
RUN apt update && \
    apt upgrade -y && \
    apt install --no-install-recommends libffi-dev libnacl-dev python3-dev

# Install python req
RUN mkdir /app
ADD requirements.txt discord_app.py /app/
RUN python3 -m pip install -r /tmp/requirements.txt

CMD ["python3", "/app/discord_app.py", "/run/secrets/discord_bot_token"]