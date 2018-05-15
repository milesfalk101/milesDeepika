//Array to hold all tags 
var arr:[String] = [];

/*************************************************************
* Name: RemoveTag
* Description: Function accepts a singular string as its argumet. Array elements are read and the matching one is removed. 
* Author(s): Deepika & Miles
* Parametere(s): String -> Element to remove; Bool -> Return length of array
* Output(s): -> Int -> Return length of array or 0
**************************************************************/
func RemoveTag(target:String, returnLength:Bool = false) -> Int {

    //Initilize counter at 0
    var counter = 0;

    //Loop over all array elements
    for tag in arr {

        //Make sure current element is not NIL
        if tag != nil {

            //Check if the current elmenet matches the parameter passed
            if tag == target {

                //Remove array target
                arr.remove(at: counter);
            }
            counter = counter + 1;
        }

    }

    //Return array count
    if returnLength == true {
        return arr.count;
    }
    //Return 0
    return 0;
}

/*************************************************************
* Name: UpdateTag
* Description: Fuction accepts two string values; Target element and change value. Array elments are read and the matching one changes values.
* Note(s): This function keeps current indexing, simply changing array values
* Author(s): Deepika & Miles
* Parameter(s): String -> Element to update; String -> Value to update; Bool -> Return length of array
* Output(s): Int -> Return length of array or 0
*************************************************************/
func UpdateTag(from:String, to:String, returnLength:Bool = false) -> Int {

    //Initilize counter to 0
    var counter = 0;

    //Loop through entire array
    for tag in arr {

        //Make sure value is not NIl
        if tag != nil {

            //Check if current element is target
            if tag == from {

                //Change target value from current to change value
                arr[counter] = to;
            }
        }

        //Update counter
        counter = counter + 1;
    }

    //Return array length
    if returnLength == true {
        return arr.count;
    }

    //Return 0
    return 0;
}

/*************************************************************
* Name: AddTag
* Description: Fuction accepts a new string value. It adds a new tag to the array
* Author(s): Deepika & Miles
* Parameter(s): String -> Element to append to array
* Output(s): Int -> Return array length
*************************************************************/
func AddTag(target:String) -> Int {
    
    //Add item to tag array
    arr.append(target);
    
    //Return array length
    return arr.count;
}