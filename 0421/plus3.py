import numpy as np

a = [[0, 1, np.inf, np.inf, np.inf, np.inf, np.inf, np.inf],
     [1, 0, 3, 2, np.inf, np.inf, np.inf, np.inf],
     [np.inf, 3, 0, np.inf, 1, np.inf, np.inf, np.inf],
     [np.inf, 2, np.inf, 0, np.inf, np.inf, 2, np.inf],
     [np.inf, np.inf, 1, np.inf, 0, 6, 2, np.inf],
     [np.inf, np.inf, np.inf, np.inf, 6, 0, np.inf, 3],
     [np.inf, np.inf, np.inf, 2, 2, np.inf, 0, 4],
     [np.inf, np.inf, np.inf, np.inf, np.inf, 3, 4, 0]]

end = 7
cnt = 0
book = [0, 0, 0, 0, 0, 0, 0, 0]

min_time = np.inf
min_index = 0
res = []


def dfs(pos, before, distance, steps):
    if pos == end:
        global cnt
        cnt += 1
        global res
        res.append(book[:])
        global min_time
        if distance < min_time:
            min_time = distance
            global min_index
            min_index = cnt - 1
        return
    for j in range(0, len(a[0])):
        if j == pos or book[j] != 0:
            continue
        if a[pos][j] < np.inf:
            three = 3
            if pos == 0 or pos == 2 or (before == 0 and j == 2) or (before == 2 and j == 5) or (before == 3 and j == 7):
                three = 0
            book[j] = steps + 1
            dfs(j, pos, distance + a[pos][j] + three, book[j])
            book[j] = 0


def print_res(book_list):
    now_pos = 0
    print(now_pos + 1, end='')
    while now_pos != end:
        for i in range(0, len(book_list)):
            if book_list[i] == book_list[now_pos] + 1:
                print(' ->', i + 1, end='')
                now_pos = i
                break
    print()


if __name__ == '__main__':
    res = []
    book[0] = 1
    dfs(0, 0, 0, book[0])
    print('total: ', cnt)
    for i in range(0, len(res)):
        print(str(i + 1) + ': ', end='')
        print_res(res[i])
    print()
    print('min_time: ', min_time)
    print_res(res[min_index])
