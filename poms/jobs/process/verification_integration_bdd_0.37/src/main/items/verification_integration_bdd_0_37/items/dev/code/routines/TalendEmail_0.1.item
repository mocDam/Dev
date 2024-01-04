package routines;

import java.io.File;
import java.io.FileInputStream;

import java.text.SimpleDateFormat;
import java.util.Base64;



/*
 * user specification: the function's comment should contain keys as follows: 1. write about the function's comment.but
 * it must be before the "{talendTypes}" key.
 * 
 * 2. {talendTypes} 's value must be talend Type, it is required . its value should be one of: String, char | Character,
 * long | Long, int | Integer, boolean | Boolean, byte | Byte, Date, double | Double, float | Float, Object, short |
 * Short
 * 
 * 3. {Category} define a category for the Function. it is required. its value is user-defined .
 * 
 * 4. {param} 's format is: {param} <type>[(<default value or closed list values>)] <name>[ : <comment>]
 * 
 * <type> 's value should be one of: string, int, list, double, object, boolean, long, char, date. <name>'s value is the
 * Function's parameter name. the {param} is optional. so if you the Function without the parameters. the {param} don't
 * added. you can have many parameters for the Function.
 * 
 * 5. {example} gives a example for the Function. it is optional.
 */
public class TalendEmail {

/*
	public static void getJSONObject(String JSONObject)
	{
		JSONObject json = new JSONObject(JSONObject);

		System.out.println("*************** JSON ************");
		System.out.println(json.get("message").get("subject"));
		
	}
	*/
	
    public static boolean isFileExists(String filePath) {
    	
		try
		{
			boolean isExists = false;

			File file = new File(filePath);
			
			isExists =  file.exists();
			
		   return isExists;
		}
		catch (Exception e)
		{
			//throw e;
		    e.printStackTrace();
		    return false;
		}    	


    }
    
    public static String getFileName(String filePath) {
    	
		try
		{
			String fileName = "";
	    	
			File file = new File(filePath);

		   fileName = file.getName();
		   
		   return fileName;
		}
		catch (Exception e)
		{
			//throw e;
		    e.printStackTrace();
		    return "";
		}    	
    }
    
    public static long getSize(String filePath) {
    	
		try
		{
	    	
			File file = new File(filePath);

			long fileSize = (long) file.length();
		   
		   return fileSize;
		}
		catch (Exception e)
		{
			//throw e;
		    e.printStackTrace();
		    return 0;
		}    	
    }
    
    
    public static String getContent(String filePath) {
    	
		try
		{    	
			File file = new File(filePath);
			FileInputStream fileInputStream = null;
			byte[] fileContent = new byte[(int) file.length()];

		   fileInputStream = new FileInputStream(file);
		   fileInputStream.read(fileContent);
		   fileInputStream.close();

		   String base64 = Base64.getEncoder().encodeToString(fileContent);
		   
		   return base64;
		}
		catch (Exception e)
		{
			//throw e;
		    e.printStackTrace();
		    return "";
		}    	


    }
    
}
