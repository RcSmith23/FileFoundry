#! /usr/bin/env python3

class Sketch(object):

    SKETCH_TEMP = ("@ {0:<18} | {1:>6} | {2:<20} | {3:>20} | {4:<20} | "
            "{5:<20} | {6:<20}\n")

    def __init__(self, name, summ, down, tags, images, license, sett=''):
        self.name = name
        self.summary = summ
        self.downloads = down
        self.tags = tags
        self.images = images
        self.license = license
        self.settings = sett

    def __str__(self):
        return Sketch.SKETCH_TEMP.format(self.name, self.downloads,
                ', '.join(self.tags), self.images,
                self.settings, self.summary, self.license)

