import matplotlib.pyplot as plt
import sys

filename = sys.argv[1];
threshold = float(sys.argv[2]);
if threshold < 0 or threshold > 100:
    print "enter a number 0 - 100"


labels = []
sizes = []
full = float(0)
with open(filename, 'r') as f:
    for w in f.readlines():
        w = w.split()
        if len(w) > 2:
            labels.append(w[0])
            sizes.append(int(w[2]))
            full += int(w[2])

assert len(labels) == len(sizes)
curr = float(0)
idx = 0
result_labels= []
result_sizes = []
while(curr/full*100 < threshold):
    curr += sizes[idx]
    result_labels.append(labels[idx])
    result_sizes.append(sizes[idx])
    idx += 1

the_rest = 0
for i in range(idx, len(labels)):
    the_rest += sizes[i]

result_labels.append('The rest')
result_sizes.append(the_rest)
assert len(result_labels) == len(result_sizes)




plt.pie(result_sizes, labels = result_labels, autopct='%1.1f%%',
                        startangle = 90)

plt.axis('equal')
plt.show()
