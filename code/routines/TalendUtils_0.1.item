package routines;

import java.text.SimpleDateFormat;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.Buffer;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import java.util.stream.Collectors;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
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
public class TalendUtils {

	public StringBuilder strCreateFile = new StringBuilder().append("PUT\n\n\n\n\ntext/plain; charset=utf-8\n\n\n\n\n\n\nx-ms-content-length:{2}\nx-ms-date:{0}\nx-ms-type:file\nx-ms-version:2018-03-28\n{3}/{1}");
	
	public StringBuilder strPutRange = new StringBuilder().append("PUT\n\n\n{3}\n\napplication/xml\n\n\n\n\n\n\nx-ms-date:{0}\nx-ms-range:bytes=0-{2}\nx-ms-version:2017-07-29\nx-ms-write:Update\n{4}/{1}\ncomp:range");
	
	public String dateModification = "";
	
	public long fileSize = 0;
	
	public byte[] fileContent= null;
	
	public String fileName = "";
	
	public String azureRepository = "";
	
	public String azureRepositoryURL = "";
	
	public String sharePointpostURL = "";
	
	public String sharepointFolder = "";
	
	public String sharepointToken = "";
	// Fields
	//public String signature = "kS4vtLxoBWXCQMNQdqhwWtDUYEh59751htQ9ESCOIdKu481J1VYYdOKPymxcW18npF9RUtwBIxkOEo7kNhyF0Q==";
	public String signature = "";
	
	// Constructor
	public TalendUtils(String sPath, String sFileName, String sAzureRepository, String sAzureRepositoryURL, String ssignature )
	{
		this.dateModification = this.toUTCString(new Date());
		System.out.println("sPath + sFile : " + sPath + sFileName); 
		File file = new File(sPath + sFileName);
		FileInputStream fileInputStream = null;
		this.fileContent = new byte[(int) file.length()];
		this.fileSize =  file.length();
		this.fileName = sFileName;
		this.azureRepository = sAzureRepository;
		this.azureRepositoryURL = sAzureRepositoryURL;

		this.signature = ssignature;
		System.out.println("TalendUtils ssignature : " + this.signature); 
		
		try
		{
		   //Read bytes with InputStream
		   fileInputStream = new FileInputStream(file);
		   fileInputStream.read(this.fileContent);
		   fileInputStream.close();

		   System.out.println("TalendUtils -- this.fileContent : " + this.fileContent); 
		   System.out.println("TalendUtils -- this.fileSize : " + this.fileSize); 
		}
		catch (Exception e)
		{
		   e.printStackTrace();
		}
	}
	
	public TalendUtils(String sPath, String sFileName, String sharePointpostURL, String sharepointFolder, String sharepointToken, boolean isSharepoint )
	{
		this.dateModification = this.toUTCString(new Date());
		System.out.println("sPath + sFile : " + sPath + sFileName); 
		File file = new File(sPath + sFileName);
		FileInputStream fileInputStream = null;
		this.fileContent = new byte[(int) file.length()];
		this.fileSize =  file.length();
		this.fileName = sFileName;
		this.sharePointpostURL = sharePointpostURL;
		this.sharepointFolder = sharepointFolder;
		this.sharepointToken = sharepointToken;

		
		try
		{
		   //Read bytes with InputStream
		   fileInputStream = new FileInputStream(file);
		   fileInputStream.read(this.fileContent);
		   fileInputStream.close();

		   System.out.println("TalendUtils -- this.fileContent : " + this.fileContent); 
		   System.out.println("TalendUtils -- this.fileSize : " + this.fileSize); 
		}
		catch (Exception e)
		{
		   e.printStackTrace();
		}
	}
	
	public String getContentString()
	{
		 return new String(this.fileContent, StandardCharsets.UTF_8);
		
	}

	
	// Methods
	public String toUTCString(Date date)
	{
		SimpleDateFormat formatter = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss",java.util.Locale.ENGLISH);
		return formatter.format(date) + " GMT";
	}
	
	public String getSharedKey()
	{
		  byte[] hmacSha256 = calcHmacSha256( Base64.getDecoder().decode(signature), strCreateFile.toString().replace("{0}", this.dateModification).replace("{1}", this.fileName).replace("{2}", String.valueOf(this.fileSize)).replace("{3}", this.azureRepository).getBytes(StandardCharsets.UTF_8));
		  
		  String base64HmacSha256 = Base64.getEncoder().encodeToString(hmacSha256);
		  System.out.println("getSharedKey -- this.dateModification : " + this.dateModification ); 
		  System.out.println("getSharedKey -- Shared key Create File : " + base64HmacSha256); 
		  System.out.println("getSharedKey -- this.signature : " + this.signature); 
		  return base64HmacSha256;
	}

	public String getSharedKeyPutRange()
	{
		  byte[] hmacSha256 = calcHmacSha256( Base64.getDecoder().decode(this.signature), strPutRange.toString().replace("{0}", this.dateModification).replace("{1}", this.fileName).replace("{2}", String.valueOf(this.fileSize-1)).replace("{3}", String.valueOf(this.fileSize)).replace("{4}", this.azureRepository).getBytes(StandardCharsets.UTF_8));
		  
		  String base64HmacSha256 = Base64.getEncoder().encodeToString(hmacSha256);
		  
		  System.out.println("getSharedKeyPutRange -- Shared key Put Range : " + base64HmacSha256); 
		  System.out.println("getSharedKeyPutRange -- this.signature : " + this.signature); 
		  return base64HmacSha256;
	}

	
	public void callCreateFile(String sSharedKey) throws Exception {
		  HttpURLConnection connection = null;
		  System.out.println("callCreateFile -- this.dateModification : " + this.dateModification ); 
		  try {
		    //Create connection
		    URL url = new URL("https://haddadtestfs.file.core.windows.net{1}/{0}".replace("{0}", this.fileName).replace("{1}", this.azureRepositoryURL));
		    connection = (HttpURLConnection) url.openConnection();
		    connection.setRequestMethod("PUT");
		    connection.setRequestProperty("Content-Type","text/plain; charset=utf-8");
		    connection.setRequestProperty("Content-Length", "0");
		    connection.setRequestProperty("x-ms-date", this.dateModification);  
		    connection.setRequestProperty("x-ms-version", "2018-03-28");
		    connection.setRequestProperty("x-ms-content-length",String.valueOf(this.fileSize) );
		    connection.setRequestProperty("Authorization", "SharedKey haddadtestfs:" + sSharedKey);
		    connection.setRequestProperty("x-ms-type", "file");

		    connection.setUseCaches(false);
		    connection.setDoOutput(true);

		    //Send request
		    DataOutputStream wr = new DataOutputStream (
		        connection.getOutputStream());
		    wr.close();
	    	
		    //Get Response  
		    InputStream is = connection.getInputStream();
		    BufferedReader rd = new BufferedReader(new InputStreamReader(is));
		    StringBuilder response = new StringBuilder(); // or StringBuffer if Java version 5+
		    String line;
		    while ((line = rd.readLine()) != null) {
		      response.append(line);
		      response.append('\r');
		    }
		    rd.close();
		    
		  } catch (Exception e) {
		    throw new Exception(e);
		    //return null;
		  } finally {
		    if (connection != null) {
		      connection.disconnect();
		    }
		  }
		}
	
	
	public void callPutRange(String sSharedKey) throws Exception {
		  HttpURLConnection connection = null;

		  try {
		    //Create connection
		    URL url = new URL("https://haddadtestfs.file.core.windows.net{1}/{0}?comp=range".replace("{0}", this.fileName).replace("{1}", this.azureRepositoryURL));
		    connection = (HttpURLConnection) url.openConnection();
		    connection.setRequestMethod("PUT");
		    connection.setRequestProperty("Content-Type","application/xml");
		    connection.setRequestProperty("x-ms-date", this.dateModification);  
		    connection.setRequestProperty("x-ms-version", "2017-07-29");
		    connection.setRequestProperty("x-ms-range", "bytes=0-" +  String.valueOf(this.fileSize-1) );
		    connection.setRequestProperty("x-ms-write", "Update");
		    connection.setRequestProperty("Content-Length",String.valueOf(this.fileSize) );
		    connection.setRequestProperty("Authorization", "SharedKey haddadtestfs:" + sSharedKey);
		   
		    byte[] content = "ENT;SalJ;FA22-RRP-EUR-20220407\r\nLIG;SalJ;Price (Sales);Group;FA22-RRP;Table;15JST01;023;STKALTLABL;12M;30.00;EUR;01122021;30122025;PCS;Yes;;;;;".toString().getBytes(StandardCharsets.UTF_8);
		    
		    System.out.println("callPutRange -- content : " + content ); 
		    System.out.println("callPutRange -- bytes=0- : " + "bytes=0-" +  String.valueOf(this.fileSize-1)  ); 
		    
		    connection.setUseCaches(false);
		    connection.setDoOutput(true);

		    //Send request
		    DataOutputStream wr = new DataOutputStream (
		        connection.getOutputStream());
		    wr.write(this.fileContent);
		    wr.close();
	    	
		    //Get Response  
		    InputStream is = connection.getInputStream();
		    BufferedReader rd = new BufferedReader(new InputStreamReader(is));
		    StringBuilder response = new StringBuilder(); // or StringBuffer if Java version 5+
		    String line;
		    while ((line = rd.readLine()) != null) {
		      response.append(line);
		      response.append('\r');
		    }
		    rd.close();
		    
		  } catch (Exception e) {
		    throw new Exception(e);
		    //return null;
		  } finally {
		    if (connection != null) {
		      connection.disconnect();
		    }
		  }
		}
	
	static public byte[] calcHmacSha256(byte[] secretKey, byte[] message) {
		byte[] hmacSha256 = null;
		try {
			Mac mac = Mac.getInstance("HmacSHA256");
			SecretKeySpec secretKeySpec = new SecretKeySpec(secretKey, "HmacSHA256");
			mac.init(secretKeySpec);
			hmacSha256 = mac.doFinal(message);
		} 
		catch (Exception e) {
			throw new RuntimeException("calcHmacSha256 -- Failed to calculate hmac-sha256", e);
		}
		return hmacSha256;
	}
		
	public void callUploadSharepoint() throws Exception {
		  HttpURLConnection connection = null;

		  try {
		    //Create connection
		    URL url = new URL(this.sharePointpostURL + "_api/web/GetFolderByServerRelativeUrl('" + this.sharepointFolder + "')/Files/add(url='" + this.fileName + "',overwrite=true)");
		    connection = (HttpURLConnection) url.openConnection();
		    connection.setRequestMethod("POST");
		    connection.setRequestProperty("Content-Type","application/xml");
		    connection.setRequestProperty("Content-Length",String.valueOf(this.fileSize) );
		    connection.setRequestProperty("Authorization", "Bearer " + this.sharepointToken);
		   
		    connection.setUseCaches(false);
		    connection.setDoOutput(true);

		    //Send request
		    DataOutputStream wr = new DataOutputStream (
		        connection.getOutputStream());
		    wr.write(this.fileContent);
		    wr.close();
	    	
		    //Get Response  
		    InputStream is = connection.getInputStream();
		    BufferedReader rd = new BufferedReader(new InputStreamReader(is));
		    StringBuilder response = new StringBuilder(); // or StringBuffer if Java version 5+
		    String line;
		    while ((line = rd.readLine()) != null) {
		      response.append(line);
		      response.append('\r');
		    }
		    rd.close();
		    
		  } catch (Exception e) {
		    throw new Exception(e);
		    //return null;
		  } finally {
		    if (connection != null) {
		      connection.disconnect();
		    }
		  }
		}
	
}
