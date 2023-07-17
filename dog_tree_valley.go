package main

import "fmt"

func main() {
	
	// Initializing an empty slice
	var myVoice []string
	
	// Loop to fill the slice with strings
	for i := 0; i < 2000; i++ {
		myVoice = append(myVoice, "Finding my voice...")
	}
	
	// Print out each element of the slice
	for _, element := range myVoice {
		fmt.Println(element)
	}
}