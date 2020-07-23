#!/usr/bin/env python

from generators.Generator import Generator
import Command
import os
from os import path

class WineGenerator(Generator):

    def generate(self, system, rom, playersControllers, gameResolution):
        romBasename = path.basename(rom)

        arch = "32"
        if system.config['core'] == "wine64":
            arch = "64"

        if system.name == "windows_installers":
            commandArray = ["batocera-wine", "install", arch, romBasename]
        else:
            commandArray = ["batocera-wine", "play", arch, romBasename]

        return Command.Command(array=commandArray)
