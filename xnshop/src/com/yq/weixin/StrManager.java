 package com.yq.weixin;
 
 import java.io.UnsupportedEncodingException;
import java.util.StringTokenizer;
 
 public class StrManager
 {
   private static String[] localObject;
 
   public static String[] Split(String paramString1, String paramString2)
   {
     if ((paramString1 == null) || (paramString2 == null)) {
       localObject = new String[1];
       localObject[0] = paramString1;
       return localObject;
     }
 
     Object localObject = new StringTokenizer(paramString1, paramString2);
 
     int i = ((StringTokenizer)localObject).countTokens();
     String[] arrayOfString = new String[i];
 
     for (int j = 0; j < i; j++) {
       arrayOfString[j] = ((StringTokenizer)localObject).nextToken();
     }
     return arrayOfString;
   }
 
   public static String getFileExt(String paramString) {
     String str = new String();
     int i = 0;
     int j = 0;
     if (paramString == null)
       return null;
     i = paramString.lastIndexOf('.') + 1;
 
     j = paramString.length();
     str = paramString.substring(i, j);
     if (paramString.lastIndexOf('.') > 0) {
       return str;
     }
     return "";
   }
 
   public boolean isNumeric(String paramString, boolean paramBoolean) {
     if (paramString == null) {
       return false;
     }
     char[] arrayOfChar = paramString.toCharArray();
     for (int i = 0; i < arrayOfChar.length; i++) {
       if (paramBoolean) {
         if (!Character.isDigit(arrayOfChar[i]))
           return false;
       } else if ((!Character.isDigit(arrayOfChar[i])) && 
         (arrayOfChar[i] != '.')) {
         return false;
       }
     }
     if (paramString.lastIndexOf('.') != paramString.indexOf('.'))
       return false;
     return true;
   }
 
   public static String changeChinese(String paramString) {
     String str = null;
 
     if ((paramString == null) || (paramString == ""))
       return new String("");
     try
     {
       byte[] arrayOfByte = paramString.getBytes("ISO-8859-1");
       str = new String(arrayOfByte);
     } catch (UnsupportedEncodingException localUnsupportedEncodingException) {
       System.out.println(localUnsupportedEncodingException);
     }
     return str;
   }
 
   public static String changeSybase(String paramString) {
     String str = null;
 
     if ((paramString == null) || (paramString == ""))
       return new String("");
     try
     {
       byte[] arrayOfByte = paramString.getBytes("gb2312");
       str = new String(arrayOfByte);
     } catch (UnsupportedEncodingException localUnsupportedEncodingException) {
       System.out.println(localUnsupportedEncodingException);
     }
     return str;
   }
 
   public static String Replace(String paramString1, String paramString2, String paramString3)
   {
     StringBuffer localStringBuffer = new StringBuffer();
 
     int i = paramString1.length();
     int j = paramString2.length();
 
     int k = 0;
     int m;
     while ((m = paramString1.indexOf(paramString2, k)) >= 0)
     {
       localStringBuffer.append(paramString1.substring(k, m));
 
       localStringBuffer.append(paramString3);
       k = m + j;
     }
     if (k < i) {
       localStringBuffer.append(paramString1.substring(k));
     }
     return localStringBuffer.toString();
   }
 
   public static String Left(String paramString, int paramInt) {
     if ((paramString == null) || (paramString == "") || 
       (paramString.length() <= paramInt)) {
       return paramString;
     }
     return paramString.substring(0, paramInt);
   }
 
   public static String Reverse(String paramString) {
     if (paramString == null) {
       return paramString;
     }
 
     StringBuffer localStringBuffer = new StringBuffer(paramString);
 
     localStringBuffer = localStringBuffer.reverse();
 
     return localStringBuffer.toString();
   }
 
   public static String Right(String paramString, int paramInt) {
     if ((paramString == null) || (paramString == "") || 
       (paramString.length() <= paramInt)) {
       return paramString;
     }
     return paramString.substring(paramString.length() - paramInt, 
       paramString.length());
   }
 
   public static String Mid(String paramString, int paramInt1, int paramInt2) {
     try {
       if ((paramString == null) || (paramString == "")) {
         return paramString;
       }
       int i = paramString.length();
       if ((paramInt1 > i) || (paramInt1 < 0)) {
         return null;
       }
       if (paramInt1 + paramInt2 > i)
         return paramString.substring(paramInt1, i);
       return paramString.substring(paramInt1, paramInt1 + paramInt2);
     } catch (Exception localException) {
       System.out.println(localException);
     }
     return null;
   }
 
   public static String toSql(String paramString) {
     String str = new String(paramString);
     return Replace(str, "'", "''");
   }
 
   public static String toHtmlInput(String paramString) {
     if (paramString == null) {
       return null;
     }
     String str = new String(paramString);
 
     str = Replace(str, "&", "&amp;");
     str = Replace(str, "<", "&lt;");
     str = Replace(str, ">", "&gt;");
 
     return str;
   }
 
   public static String toHtml(String paramString) {
     if (paramString == null) {
       return null;
     }
     String str = new String(paramString);
 
     str = toHtmlInput(str);
     str = Replace(str, "\r\n", "\n");
     str = Replace(str, "\n", "<br>");
     str = Replace(str, "\t", "    ");
     str = Replace(str, " ", " &nbsp;");
 
     return str;
   }
 
   public String notEmpty(String paramString) {
     if (paramString == null) {
       paramString = "";
     }
     return paramString;
   }
 
   public String yesEmpty(String paramString) {
     if (paramString.equals("")) {
       paramString = null;
     }
     return paramString;
   }
 
   public String isSelected(String paramString1, String paramString2) {
     if (paramString2.trim().equals("")) {
       paramString2 = paramString1;
     }
 
     if (paramString2.trim().equals(paramString1.trim())) {
       return "selected";
     }
     return "";
   }
 
   public String isChecked(String paramString1, String paramString2) {
     if (paramString1.trim().equals(paramString2.trim())) {
       return " checked";
     }
     return "";
   }
 
   public String isChecked(String paramString1, String paramString2, String paramString3)
   {
     if (paramString3.length() == 0) {
       paramString3 = ",";
     }
 
     StringTokenizer localStringTokenizer = new StringTokenizer(
       paramString2.trim(), paramString3);
     int i = localStringTokenizer.countTokens();
     for (int k = 0; k < i; k++) {
       String str = localStringTokenizer.nextToken();
       if (paramString1.trim().equals(str.trim())) {
         return " checked";
       }
     }
     return "";
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.StrManager
 * JD-Core Version:    0.6.2
 */