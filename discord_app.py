import discord
from discord.ext import commands
import os

intents = discord.Intents.default()
intents.message_content = True
bot = commands.Bot(command_prefix='bb:', intents=intents)

@bot.command()
async def ping(ctx):
    await ctx.send('pong')

@bot.command()
async def joke(ctx):
    await ctx.send('What do you call a bear with no teeth? A gummy bear!')

@bot.command()
async def preston(ctx):
    await ctx.send("The man, the myth, the legend himself")

bot.run(os.getenv('DISCORD_BOT_TOKEN'))