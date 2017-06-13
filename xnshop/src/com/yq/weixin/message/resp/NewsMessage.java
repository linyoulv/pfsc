 package com.yq.weixin.message.resp;
 
 import java.util.List;
 
 public class NewsMessage extends BaseMessage
 {
   private int ArticleCount;
   private List<Article> Articles;
 
   public int getArticleCount()
   {
     return this.ArticleCount;
   }
 
   public void setArticleCount(int articleCount) {
     this.ArticleCount = articleCount;
   }
 
   public List<Article> getArticles() {
     return this.Articles;
   }
 
   public void setArticles(List<Article> articles) {
     this.Articles = articles;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.message.resp.NewsMessage
 * JD-Core Version:    0.6.2
 */