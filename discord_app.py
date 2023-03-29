import discord
from discord.ext import commands
import os

parser = argparse.ArgumentParser()
parser.add_argument('token_file_path')
args = parser.parse_args()

intents = discord.Intents.default()
intents.message_content = True
bot = commands.Bot(command_prefix='bb:', intents=intents)

@bot.command()
async def ping(ctx):
    await ctx.send('pong')

@bot.command()
async def joke(ctx):
    await ctx.send('What do you call a bear with no teeth? A gummy bear!')

bot.run(open(args.token_file_path, 'r').read())