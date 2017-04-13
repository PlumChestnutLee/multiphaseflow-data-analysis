import os
count = 0
listWLR0 = []
listWLR10 = []
listWLR20 = []
listWLR30 = []
listWLR40 = []
listWLR50 = []
listWLR60 = []
listWLR70 = []
listWLR80 = []
listWLR90 = []
listWLR100 = []
dictWLR = {}

if os.path.isfile('./testMatGVF.txt'):
    os.remove('./testMatGVF.txt')
if os.path.isfile('./testMatWLR.txt'):
    os.remove('./testMatWLR.txt')

with open('testMat.txt') as testMat, open('testMatGVF.txt', 'a') as testMatGVF:
    for each_line in testMat:
        each_line = each_line.strip()
        print("'" + each_line + ".txt', ...", file=testMatGVF)
        count = count + 1
        if count % 11 == 0:
            print(file=testMatGVF)

with open('testMat.txt') as testMat:
    for idx, each_line in enumerate(testMat):
        each_line = each_line.strip()
        if idx % 11 == 0:
            listWLR0.append(each_line)
        elif idx % 11 == 1:
            listWLR10.append(each_line)
        elif idx % 11 == 2:
            listWLR20.append(each_line)
        elif idx % 11 == 3:
            listWLR30.append(each_line)
        elif idx % 11 == 4:
            listWLR40.append(each_line)
        elif idx % 11 == 5:
            listWLR50.append(each_line)
        elif idx % 11 == 6:
            listWLR60.append(each_line)
        elif idx % 11 == 7:
            listWLR70.append(each_line)
        elif idx % 11 == 8:
            listWLR80.append(each_line)
        elif idx % 11 == 9:
            listWLR90.append(each_line)
        elif idx % 11 == 10:
            listWLR100.append(each_line)
dictWLR[0] = listWLR0
dictWLR[1] = listWLR10
dictWLR[2] = listWLR20
dictWLR[3] = listWLR30
dictWLR[4] = listWLR40
dictWLR[5] = listWLR50
dictWLR[6] = listWLR60
dictWLR[7] = listWLR70
dictWLR[8] = listWLR80
dictWLR[9] = listWLR90
dictWLR[10] = listWLR100

with open('testMatWLR.txt', 'a') as testMatWLR:
    for i in range(11):
        for each_item in dictWLR[i]:
            print("'" + each_item + ".txt', ...", file=testMatWLR)
        print(file=testMatWLR)

print(count)
print(idx + 1)