//Array to hold all tags 
var arr:[String] = [];

/*************************************************************
* Name: RemoveTag
* Description: Function accepts a singular string as its argumet. Array elements are read and the matching one is removed. 
* Author(s): Deepika & Miles
* Parametere(s): String -> Element to remove
* Output(s): -> String:Int -> Return elmenent removed and length of array in dictionary format
**************************************************************/
func RemoveTag(target:String) -> Dictionary<String, Int> {

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
    //Return removed target
    var returnMethode:[String: Int] = [target:arr.count]
    return returnMethode;
}

/*************************************************************
* Name: UpdateTag
* Description: Fuction accepts two string values; Target element and change value. Array elments are read and the matching one changes values.
* Author(s): Deepika & Miles
* Parameter(s): String -> Element to update; String -> Value to apply
* Output(s): Array<String> -> Return target string and change value
*************************************************************/
func UpdateTag(target:String, change:String) -> Array<String> {

    //Initilize counter to 0
    var counter = 0;

    //Loop through entire array
    for tag in arr {

        //Make sure value is not NIl
        if tag != nil {

            //Check if current element is target
            if tag == target {

                //Change target value from current to change value
                arr[counter] = change;
            }
        }

        //Update counter
        counter = counter + 1;
    }

    //Return target and change value
    return [target, change]
}

/*************************************************************
* Name: AddTag
* Description: Fuction accepts a new string value. It adds a new tag to the array
* Author(s): Deepika & Miles
* Parameter(s): String -> Element to add to array
* Output(s): Int -> Return array length
*************************************************************/

func AddTag(item:String) -> Int {
    arr.append(item);
    return arr.count;
}