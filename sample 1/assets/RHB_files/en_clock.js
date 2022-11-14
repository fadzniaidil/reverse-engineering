function fourdigits(number)	
{
	return (number < 1000) ? number + 1900 : number;
}

function updateClock2 ( )
{
  
  var currentTime = new Date ( );
  
  // Array list of days.
  var days = new Array('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

  // Array list of months.
  var months = new Array('January','February','March','April','May','June','July','August','September','October','November','December');
 
  var currentHours = currentTime.getHours ( );
  var currentMinutes = currentTime.getMinutes ( );
  var currentSeconds = currentTime.getSeconds ( );
 
  // Calculate the number of the current day in the week.
  //[Start] LihChyun    02/09/2009  -     To modify today’s date from 01st to 1st 
//  var date = ((currentTime.getDate()<10) ? "0" : "")+ currentTime.getDate();
  var date = ((currentTime.getDate()<10) ? "" : "")+ currentTime.getDate();
  //[End]   LihChyun    02/09/2009
  
  var dateExt = ordinal(date);
      
  // Join it all together
  var today =  days[currentTime.getDay()] + ", " + dateExt + " " + months[currentTime.getMonth()] + " " + (fourdigits(currentTime.getYear())) ;

  // Pad the minutes and seconds with leading zeros, if required
  currentMinutes = ( currentMinutes < 10 ? "0" : "" ) + currentMinutes;
  currentSeconds = ( currentSeconds < 10 ? "0" : "" ) + currentSeconds;

  // Choose either "AM" or "PM" as appropriate
  var timeOfDay = ( currentHours < 12 ) ? "AM" : "PM";

  // Convert the hours component to 12-hour format if needed
  currentHours = ( currentHours > 12 ) ? currentHours - 12 : currentHours;

  // Convert an hours component of "0" to "12"
  currentHours = ( currentHours == 0 ) ? 12 : currentHours;

  // Compose the string for display
  var currentTimeString = currentHours + ":" + currentMinutes + ":" + currentSeconds + " " + timeOfDay + " | " + today;

  // Update the time display
  return currentTimeString;
}

function ordinal(num)
{		
    var mod1 = num%100; // get the divided "remainder" of 100
    var mod2 = num%10; // get the divided "remainder" of 10
    var ord; // ste the ordinal variable
    
    if((mod1-mod2) == 10){ // capture 10
        ord = "th"; // set the oridnal to th as in: 10th
    }else{// for everything else
        switch(mod2){  // check the remainder of the 10th place
            case 1: // if 1 as in 1st
                ord = "st"; // set the ordinal
            break;
            case 2: // if 2 as in 2nd
                ord = "nd";// set the ordinal
            break;
            case 3: // if 3 as in 3rd
                ord = "rd";// set the ordinal
            break;
            default: // for everything else
                ord = "th";// set the ordinal
            break;
        }
    }
   
    return num+ord;

}

//[S][Beng Keat][12/09/2016][UIUX Reskin] - Modify existing function to display new format.
function updateClock ( )
{
  var currentTime = new Date ( );
  
  // Array list of days.
  var days = new Array('Sun','Mon','Tue','Wed','Thu','Fri','Sat');

  // Array list of months.
  var months = new Array('Jan','Feb','Mar','Apr','May','June','July','Aug','Sept','Oct','Nov','Dec');
 
  var currentHours = currentTime.getHours ( );
  var currentMinutes = currentTime.getMinutes ( );
  var currentSeconds = currentTime.getSeconds ( );
 
  // Calculate the number of the current day in the week.
  //[Start] LihChyun    02/09/2009  -     To modify today’s date from 01st to 1st 
  //var date = ((currentTime.getDate()<10) ? "0" : "")+ currentTime.getDate();
  var date = ((currentTime.getDate()<10) ? "" : "")+ currentTime.getDate();
  //[End]   LihChyun    02/09/2009
      
  // Join it all together
  var today =  days[currentTime.getDay()] + " " + date + " " + months[currentTime.getMonth()] + " " + (fourdigits(currentTime.getYear())) ;

  // Pad the minutes and seconds with leading zeros, if required
  currentMinutes = ( currentMinutes < 10 ? "0" : "" ) + currentMinutes;
  //currentSeconds = ( currentSeconds < 10 ? "0" : "" ) + currentSeconds;

  // Choose either "AM" or "PM" as appropriate
  var timeOfDay = ( currentHours < 12 ) ? "am" : "pm";

  // Convert the hours component to 12-hour format if needed
  currentHours = ( currentHours > 12 ) ? currentHours - 12 : currentHours;

  // Convert an hours component of "0" to "12"
  currentHours = ( currentHours == 0 ) ? 12 : currentHours;

  // Compose the string for display
  var currentTimeString = currentHours + "." + currentMinutes + timeOfDay + " " + today;

  // Update the time display
  return currentTimeString;
}
//[E][Beng Keat][12/09/2016][UIUX Reskin]
