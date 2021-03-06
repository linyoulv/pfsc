 package com.yq.weixin.pay.http;
 
 import java.security.KeyManagementException;
 import java.security.NoSuchAlgorithmException;
 import javax.net.ssl.SSLContext;
 import javax.net.ssl.TrustManager;
 import org.apache.http.conn.ssl.SSLSocketFactory;
 
 public class MySSLSocketFactory extends SSLSocketFactory
 {
   private static MySSLSocketFactory mySSLSocketFactory = null;
 
   private static SSLContext createSContext()
   {
     SSLContext sslcontext = null;
     try {
       sslcontext = SSLContext.getInstance("SSL");
     } catch (NoSuchAlgorithmException e) {
       e.printStackTrace();
     }
     try {
       sslcontext.init(null, new TrustManager[] { new TrustAnyTrustManager() }, null);
     } catch (KeyManagementException e) {
       e.printStackTrace();
       return null;
     }
     return sslcontext;
   }
 
   private MySSLSocketFactory(SSLContext sslContext) {
     super(sslContext);
     setHostnameVerifier(ALLOW_ALL_HOSTNAME_VERIFIER);
   }
 
   public static MySSLSocketFactory getInstance() {
     if (mySSLSocketFactory != null) {
       return mySSLSocketFactory;
     }
     return MySSLSocketFactory.mySSLSocketFactory = new MySSLSocketFactory(createSContext());
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.pay.http.MySSLSocketFactory
 * JD-Core Version:    0.6.2
 */