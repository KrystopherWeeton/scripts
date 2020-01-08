
if __name__ == '__main__':
    f = open("MARKS")
    marks = []
    for line in open("MARKS"):
        items = line.split(" ")
        dir = items[0]
        name = items[1]
        marks.append((name, dir))
    f.close()

    marks.sort()
    f = open("MARKS", "w")

    for (name, dir) in marks:
        value = dir + " " + name
        f.write(value)
    f.close()
