#! /usr/bin/env python3

import urllib.request
import urllib.error
import sys, os

from sketch import Sketch

from bs4 import BeautifulSoup

BASE_URL = "http://www.thingiverse.com/thing:"

def sketchFetch(itemNumber, fout):
    req = urllib.request.Request(
            BASE_URL + str(itemNumber),
            data=None,
            headers={
                'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.47 Safari/537.36'
                }
            )

    try:
        html = urllib.request.urlopen(req)
    except urllib.error.HTTPError as e:
        print(e.code)
    else:
        soup = BeautifulSoup(html.read(), 'html.parser')
        name = soup.find(class_='thing-header-data').h1.text
        dl = soup.find(class_='thing-downloads').find('span').text
        summ = soup.find(id='description').text
        tags = [c.text for c in soup.find(class_='taglist').find_all('a')]
        imglink = soup.find(class_='thing-page-image').find('img')
        if imglink: imglink = imglink['src'] 
        else: imglink = ''
        license = soup.find(class_='thing-license')
        sketch = Sketch(name, summ, dl, tags, imglink, license.prettify())
        fout.write(str(sketch))

if __name__ == '__main__':
    fout = open('output.txt', 'a')
    for i in range(321098, 322000):
        print(i)
        sketchFetch(i, fout)
    fout.close()
