package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	buf := make([]byte, 10241024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)

	// scanner := bufio.NewScanner(os.Stdin)
	// scanner.Scan()
	// inputLine1 := scanner.Text()
	K, N := nextInt(), nextInt()
	// scanner.Scan()
	// inputLine2 := scanner.Text()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}
	var distanceMax int
	for i := 1; i < N; i++ {
		distance := A[i] - A[i-1]
		if distance > distanceMax {
			distanceMax = distance
		}
		// fmt.Println("i : ", i, "distace :", distance, "distanceMax", distanceMax)
	}
	distance := K + A[0] - A[N-1]
	if distance > distanceMax {
		distanceMax = distance
	}
	fmt.Print(K - distanceMax)
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
