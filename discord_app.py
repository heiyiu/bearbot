import discord
from discord.ext import commands
import os
import requests
import asyncio

intents = discord.Intents.default()
intents.message_content = True
bot = commands.Bot(command_prefix='bb:', intents=intents)

@bot.command()
async def ping(ctx):
    await ctx.send('pong')

@bot.command()
async def joke(ctx):
    r = requests.get("https://v2.jokeapi.dev/joke/Any")
    await ctx.send(r.json()['setup'])
    await asyncio.sleep(5)
    await ctx.send(r.json()['delivery'])

@bot.command()
async def preston(ctx):
    await ctx.send("The man, the myth, the legend himself")

bot.run(os.getenv('DISCORD_BOT_TOKEN'))