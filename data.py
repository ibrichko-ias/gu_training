import csv
import random 
from random import randint
import os
import datetime
from datetime import timedelta, date, datetime
import time
import sys
#import mixer


# generate Product Name
def RandomNames(*args):
    names=['bass', 'drums', 'keys', 'guitars', 'sax']
    for n in names:
        random.choice(n)
    return random.choice(names)
    RandomNames()


# generate Product type
def RandomTypes(*args):
    types=['type1','type2','type3','type4']
    for n in types:
        random.choice(n)
    return random.choice(types)
    RandomTypes()



#This generate ramdom date between two examples
def strTimeProp(start, end, format, prop):

    stime = time.mktime(time.strptime(start, format))
    etime = time.mktime(time.strptime(end, format))

    ptime = stime + prop * (etime - stime)

    return time.strftime(format, time.localtime(ptime))


def randomDate(start, end, prop):
    return strTimeProp(start, end, '%m-%d-%Y %I:%M:%S', prop)


# generate IP adrees
def client_ip():
    return '.'.join(str(randint(0,255)) for _ in range(4))
    client_ip()



f = open("data.csv", 'wb')
writer = csv.writer(f)
writer.writerow( ('Product Name', 'Product Price' 'Purchase Date', 'Product Category', 'Client IP adress') )
for i in range(1000):
    row = ( 
          RandomNames(),
          random.randrange(500, 1000),
          randomDate("1-1-2018 1:00:00", "1-7-2018 1:00:00", random.random()),
          RandomTypes(),
          client_ip(),
          )
    writer.writerow(row)
f.close()

#print open("data.csv", 'rb').read()
