
var unsortedString = [String]()
var line : String?
repeat {
    line = readLine()
    if line != nil {
        unsortedString.append(line!)
    }

} while line != nil

func sort () {
    var tempCount = 0
    var totalCount = 0
    var functionInvoke = true
    var unsortedArray = unsortedString

    while(functionInvoke){
        for i in 0 ..< unsortedArray.count{
            for j in 1 ..< unsortedArray.count - i{
                if(unsortedArray[j] < unsortedArray[j-1]){
                    functionInvoke = true
                    tempCount += 1
                    totalCount += 1
                    unsortedArray.swapAt(j, j-1)
                }
            }


            if(tempCount == 0){
                functionInvoke = false
                break
            }
            tempCount = 0
        }
    }
    print(unsortedArray)
}
sort()
