//Array to hold all tags 
var arr:[String] = [];

/*************************************************************
* Name: AddTag
* Description: Fuction accepts a new string value. It adds a new tag to the array
* Author(s): Deepika & Miles
* Parameter(s): String -> Element to append to array
* Output(s): Int -> Return array length
*************************************************************/
func AddTag(target:String) {
    //Validated tag
    let validated:String = ValidateTag(target:target);
    //Check if validated did not return "error"
    if validated != "error" {
        //Add item to tag array
        arr.append(target);
    }
}

/*************************************************************
* Name: RemoveTag
* Description: Function accepts a singular string as its argumet. Array elements are read and the matching one is removed. 
* Author(s): Deepika & Miles
* Parametere(s): String -> Element to remove;
* Output(s): None
**************************************************************/
func RemoveTag(target:String)  {
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
}

/*************************************************************
* Name: UpdateTag
* Description: Fuction accepts two string values; Target element and change value. Array elments are read and the matching one changes values.
* Note(s): This function keeps current indexing, simply changing array values
* Author(s): Deepika & Miles
* Parameter(s): String -> Element to update; String -> Value to update;
* Output(s): Int -> Return length of array or 0
*************************************************************/
func UpdateTag(from:String, to:String) {
    //Validated tag
    let validated:String = ValidateTag(target:to);
    //Check if validated did not return "error"
    if validated != "error" {
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
    }
}

/*************************************************************
* Name: ValidateTag
* Description: Function accepts a string and ensures instances of illegal characters are null
* Author(s): Deepika & Miles
* Parameter(s): String -> Name of tag to be validated
* Output(s): String -> Return validated string, or error code
*************************************************************/
func ValidateTag(target:String) -> String {
    //Declare error message
    var error = "Error";
    //If target is less than or equal to length of 25
    if target.count <= 25 {
        //Loop through arr
        for tag in arr {
            //If target is not already a tag in arr
            if target != tag {
                //Return target
                return target;
            }
            return error;
        }
    }
    return error;
}