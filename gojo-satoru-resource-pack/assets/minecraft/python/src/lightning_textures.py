from PIL import Image, ImageDraw
import numpy as np
import math
import random
import os

def perpendicular(segment):
    point1, point2 = segment
    # Calculate the vector between the two points
    vector_between_points = (point2[0] - point1[0], point2[1] - point1[1])
    
    # Swap the x and y coordinates and negate one of them to get a perpendicular vector
    perpendicular_vector = (-vector_between_points[1], vector_between_points[0])
    
    return (perpendicular_vector, (0,0))

def normalize(segment):
    point1, point2 = segment
    # Calculate the distance between the two points
    distance = math.sqrt((point2[0] - point1[0])**2 + (point2[1] - point1[1])**2)
    
    # Normalize the points
    normalized_point1 = ((point1[0] - point2[0]) / distance, (point1[1] - point2[1]) / distance)
    normalized_point2 = (0,0)
    
    return (normalized_point1, normalized_point2)

def lightning(start_point, end_point):
    size = 64
    img = Image.new('RGBA', (size,size), (0, 0, 0, 0)) 
    draw = ImageDraw.Draw(img)
    offset_amount = .25
    segment_list = set([])
    segment_list.add((start_point, end_point, 255))
    for i in range(3):
        for segment in segment_list.copy():
            segment_list.remove(segment)
            start_point, end_point, brightness = segment
            x,y = (start_point[0] + end_point[0])/2, (start_point[1] + end_point[1])/2
            perpendicular_point = normalize(perpendicular(normalize((start_point, end_point))))
            dx, dy = perpendicular_point[0]
            if random.randint(0,2) == 0:
                dx *= -1
                dy *= -1
            temp_offset = random.uniform(-offset_amount, offset_amount)
            mid_point = (x+dx*temp_offset, y+dy*temp_offset)

            segment_list.add((start_point, mid_point, brightness))
            segment_list.add((mid_point, end_point, brightness))
            if random.randint(0, 2) == 0:
                direction = (mid_point[0] - start_point[0], mid_point[1] - start_point[1])
                split_end = (mid_point[0] + direction[0], mid_point[1] + direction[1])
                segment_list.add((mid_point, split_end, 128))
        offset_amount /= 2

    avg_x = sum((start[0] + end[0]/2) for start, end, brightness in segment_list)/len(segment_list)
    avg_y = sum((start[1] + end[1]/2) for start, end, brightness in segment_list)/len(segment_list)
    dx = .5 - avg_x
    dy = .5 - avg_y

    segment_list = [((start[0]+dx, start[1]+dy), (end[0]+dx, end[1]+dy), brightness) for start, end, brightness in segment_list]
    for i in range(size//8,-1,-1):
        r = i/2
        baseColor = [int(255-i*256*8/size*.25),int(255-i*256*8/size),255,int(255-i*256*8/size)]
        for start, end, brightness in segment_list:
            color = baseColor[::]
            color[-1] = int(color[-1] * brightness / 255)
            color = tuple(color)
            x1, y1 = [size * num * 1.5 for num in start]
            x2, y2 = [size * num * 1.5 for num in end]
            
            draw.ellipse((x1-r,y1-r,x1+r,y1+r),fill=color)
            draw.ellipse((x2-r,y2-r,x2+r,y2+r),fill=color)
            draw.line((x1,y1,x2,y2), fill=color, width=i)
    

    return img

for file in range(100):
    if random.randint(0,1) == 0:
        start = (random.randint(0,100)/100, 0)
        end = (random.randint(0,100)/100, 1)
    else:
        start = (0, random.randint(0,100)/100)
        end = (1, random.randint(0,100)/100)
    lightning(start, end).save(f"{os.path.dirname(__file__)}/../out/{file}.png")