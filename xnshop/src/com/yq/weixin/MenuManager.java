 package com.yq.weixin;
 
 import com.yq.weixin.menu.Button;
 import com.yq.weixin.menu.ComplexButton;
 import com.yq.weixin.menu.Menu;
 import com.yq.weixin.menu.ViewButton;
 import com.yq.weixin.pojo.Token;
 import com.yq.weixin.util.CommonUtil;
 import com.yq.weixin.util.MenuUtil;
 import java.io.PrintStream;
 import org.slf4j.Logger;
 import org.slf4j.LoggerFactory;
 
 public class MenuManager
 {
   private static Logger log = LoggerFactory.getLogger(MenuManager.class);
   static CommonUtil commonUtil = new CommonUtil();
   //原始菜单
  /* private static Menu getMenu()
   {
     ViewButton btn13 = new ViewButton();
     btn13.setName("我的商城");
     btn13.setType("view");
     btn13.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc16c6df79a731a65&redirect_uri=http%3a%2f%2fwww.61songcai.com%2fxnshop%2fpage%2findex.html&response_type=code&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect");
 
 
     ViewButton btn21 = new ViewButton();
     btn21.setName("我的购物车");
     btn21.setType("view");
     btn21.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc16c6df79a731a65&redirect_uri=http%3a%2f%2fwww.61songcai.com%2fxnshop%2fpage%2fcartList.html&response_type=code&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect");
 
     ViewButton btn31 = new ViewButton();
     btn31.setName("我的资料");
     btn31.setType("view");
     btn31.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc16c6df79a731a65&redirect_uri=http%3a%2f%2fwww.61songcai.com%2fxnshop%2fpage%2fcenter.html&response_type=code&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect");
 
     ViewButton btn32 = new ViewButton();
     btn32.setName("我的订单");
     btn32.setType("view");
     btn32.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc16c6df79a731a65&redirect_uri=http%3a%2f%2fwww.61songcai.com%2fxnshop%2fpage%2forderList.html&response_type=code&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect");
     ViewButton btn33 = new ViewButton();
     btn33.setName("分销商城演示");
     btn33.setType("view");
     btn33.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc16c6df79a731a65&redirect_uri=http%3a%2f%2fwww.61songcai.com%2ffenxiao%26response_type%3dcode&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect");
     ComplexButton mainBtn1 = new ComplexButton();
     mainBtn1.setName("我的商城");
 
     mainBtn1.setSub_button(new Button[] { btn13 });
 
     ComplexButton mainBtn2 = new ComplexButton();
     mainBtn2.setName("购物车");
     mainBtn2.setSub_button(new Button[] { btn21 });
 
     ComplexButton mainBtn3 = new ComplexButton();
     mainBtn3.setName("个人中心");
     mainBtn3.setSub_button(new Button[] { btn31, btn32,btn33 });
 
     Menu menu = new Menu();
     menu.setButton(new Button[] { btn13, btn21, mainBtn3 });
 
     return menu;
   }*/
   
   
   private static Menu getMenu()
   {
     ViewButton btn13 = new ViewButton();
     btn13.setName("我是会员");
     btn13.setType("view");
     btn13.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc16c6df79a731a65&redirect_uri=http%3a%2f%2fwww.61songcai.com%2fxnshop%2fpage%2findex.html&response_type=code&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect");
 
 
     /*ViewButton btn21 = new ViewButton();
     btn21.setName("我是批发商");
     btn21.setType("view");
     btn21.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc16c6df79a731a65&redirect_uri=http%3a%2f%2fwww.61songcai.com%2fxnshop%2fpage%2fcartList.html&response_type=code&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect");
 
     ViewButton btn31 = new ViewButton();
     btn31.setName("我的资料");
     btn31.setType("view");
     btn31.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc16c6df79a731a65&redirect_uri=http%3a%2f%2fwww.61songcai.com%2fxnshop%2fpage%2fcenter.html&response_type=code&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect");
 
     ViewButton btn32 = new ViewButton();
     btn32.setName("我的订单");
     btn32.setType("view");
     btn32.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc16c6df79a731a65&redirect_uri=http%3a%2f%2fwww.61songcai.com%2fxnshop%2fpage%2forderList.html&response_type=code&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect");
     
     
     ViewButton btn33 = new ViewButton();
     btn33.setName("分销商城演示");
     btn33.setType("view");
     btn33.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc16c6df79a731a65&redirect_uri=http%3a%2f%2fwww.61songcai.com%2ffenxiao%26response_type%3dcode&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect");
    */
   /*  ComplexButton mainBtn1 = new ComplexButton();
     mainBtn1.setName("我的商城");
 
     mainBtn1.setSub_button(new Button[] { btn13 });
 
     ComplexButton mainBtn2 = new ComplexButton();
     mainBtn2.setName("购物车");
     mainBtn2.setSub_button(new Button[] { btn21 });
 
     ComplexButton mainBtn3 = new ComplexButton();
     mainBtn3.setName("个人中心");
     mainBtn3.setSub_button(new Button[] { btn31, btn32,btn33 });*/
 
     Menu menu = new Menu();
     menu.setButton(new Button[] { btn13});
 
     return menu;
   }
 
   public static void main(String[] args)
   {
     String appId = "wxc16c6df79a731a65";
 
     String appSecret = "c9ca763ce3825bdc4fedd9fecc8628ae";
 
     Token token = commonUtil.getToken(appId, appSecret);
 
     if (token != null)
     {
       boolean result = MenuUtil.createMenu(getMenu(), token.getAccessToken());
 
       if (result) {
         log.info("菜单创建成功！");
         System.out.println("菜单创建成功！");
       } else {
         log.info("菜单创建失败！");
         System.out.println("菜单创建失败！");
       }
     }
   }
 }

 