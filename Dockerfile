FROM python:3.11-slim
# discord_app.py will read from this env var for discord bot token
ENV DISCORD_BOT_TOKEN default

ARG USERNAME=botuser
ARG USER_UID=1011
ARG USER_GID=1011

# Install required dependencies
RUN apt update && \
    apt upgrade -y && \
    apt install -y --no-install-recommends libffi-dev libnacl-dev python3-dev

# Create bot user and switch to bot user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME
USER $USERNAME

# Install python req
RUN mkdir /home/$USERNAME/app
ADD requirements.txt discord_app.py /app/
RUN python3 -m pip install -r /app/requirements.txt --user

CMD ["python3", "/app/discord_app.py"]