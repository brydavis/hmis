// Go offers built-in support for [regular expressions](http://en.wikipedia.org/wiki/Regular_expression).
// Here are some examples of  common regexp-related tasks
// in Go.

package main

import (
	"fmt"
	"io/ioutil"
	"math"
	"os"
	"regexp"
	// "strconv"
	// "strings"
)

type Re struct {
	Open,
	Close *regexp.Regexp
}

// type float float64

type Element struct {
	Name string
	Type string
}

type Schema []Element

func main() {
	// re := new(Re)
	// schema := Schema{}
	file, err := os.Open("HUD_HMIS_Schema.xml")
	defer file.Close()
	if err != nil {
		fmt.Println(err)
		return
	}

	contents, _ := ioutil.ReadAll(file)

	// r := regexp.MustCompile("</?xs:([^>]+Type)[^>]*>")

	// re.Open = regexp.MustCompile(`(<xs:([^>]+Type) name="([^>]*)">)`)
	// re.Close = regexp.MustCompile(`(</xs:([^>]+Type)>)`)

	tags := regexp.MustCompile(`(<xs:[simple|complex]+Type[^>]*>)|(</xs:[simple|complex]+Type>)`)
	// tags := regexp.MustCompile(`(<xs:[simple|complex]+Type[^>]+>)|(</xs:[simple|complex]+Type>)`)
	output := tags.FindAllString(string(contents), -1)

	for k, v := range output {
		fmt.Print(v[:2])
		if math.Mod(float64(k), 2.0) == 0.0 && v[:2] == "</" {
			fmt.Print("SWITCH ")
		}
		fmt.Println(k, v)
	}

	// open := re.Open.FindAllString(string(contents), -1)
	// open := re.Open.FindAllStringSubmatch(string(contents), -1)

	// alt := re.Close.Split(string(contents), -1)

	// for _, v := range alt {
	// 	fmt.Println("--------------------------------")
	// 	// fmt.Println(v)
	// 	open := re.Open.FindAllStringSubmatch(v, -1)

	// 	for _, vv := range open {
	// 		fmt.Println("\t", vv)
	// 		fmt.Println("\n")
	// 	}
	// 	// fmt.Println(open[0][2])
	// 	// fmt.Println(open[0][3])

	// }
	// for _, v := range open {
	// 	e := Element{}
	// 	e.Type = strings.TrimSpace(v[2])
	// 	e.Name = strings.TrimSpace(v[3])
	// 	schema = append(schema, e)
	// }

	// fmt.Println("XML Schema (" + strconv.Itoa(len(schema)) + ")")
	// fmt.Println("---------------------------")
	// for _, v := range schema {
	// 	fmt.Println(v)

	// }

}
