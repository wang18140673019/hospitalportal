// JavaScript Document

function switchcont(s)
{
//	alert(ph);
//	alert(content);
	for(i=1; i <8; i++)
	{

		if ("submeau"+i==s)
		{

//document.getElementById(s).className="";
			if (document.getElementById("submeau"+i).className=="content")
			{
				document.getElementById("submeau"+i).className="hidecontent";
			}else{
				document.getElementById("submeau"+i).className="content";
			//document.getElementById("nr"+i).className="";

			}
			//document.getElementById(tag).src="../images/minus.gif";

		}else{
			document.getElementById("submeau"+i).className="hidecontent";
			//document.getElementById("nr"+i).className="";

		}


	}
}



	
//	alert(content);
/*for(i=1; i <3; i++)

    {
	   if ("submeau"+i==s)
       document.getElementById(s).className="content";	
	   }	
	 else
	{
			document.getElementById("submeau"+i).className="hidecontent";
					
		}


 }

}*/




function showMenuStyle(s)
{
//	alert(content);
	for(i=1; i <5; i++)
	{

		if (i==s)
		{

//document.getElementById(s).className="";
				document.getElementById("hot"+i).className="content_w";
			    document.getElementById("menusty"+i).className="on";
			//document.getElementById(tag).src="../images/minus.gif";

		}else{
			document.getElementById("hot"+i).className="hidecontent";
			document.getElementById("menusty"+i).className="";

		}


	}
}


 function getBg(num){
  for(var id = 0;id<7;id++)
  {  
   if(id==num)
   {
	 
    document.getElementById("mynav"+id).className="on";

   }
   else
   {
    document.getElementById("mynav"+id).className="";


   }
  }
 }

function showSubLevel(Obj){
		Obj.className="hover";
	}
	function hideSubLevel(Obj){
		Obj.className="";
	}// JavaScript Document