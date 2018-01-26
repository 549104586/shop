# README

+# 2/16 补充知识
  
 -This README would normally document whatever steps are necessary to get the
 -application up and running.
 +範例專案: https://github.com/ihower/jdstore
 +參考資料: https://ihower.tw/rails/
  
 -Things you may want to cover:
 +1. ActiveRecord Query: where 用法
 +  * Hash Conditions
 +  * chained where
 +  * Array Conditions
 +    * AND
 +    * OR
 +	* not
  
 -* Ruby version
 +  e.g 找出某一天的订单, 根据指定状态,根据订单号码, 特定金額以上
  
 -* System dependencies
 +2. has_many :through, :source 关于参数
  
 -* Configuration
 +   e.g. 關聯的名稱可以不一樣，甚至加關聯条件
  
 -* Database creation
 +3. cookies/session 釋疑
 +    * cookie 让浏览器对这个网站记住资料
 +    * 如何用 Chrome DevTools 观察
 +    * session: 基于 cookie 机制，提供安全的儲存空间
 +      config/initializers/session_store.rb 和 config/secret.yml
  
 -* Database initialization
 +4. routing 釋疑
 +    * 设定 URL path 进入到哪一个 controller，以及 URL helper 长怎么样
 +    * rake routes
 +      * 观察 collection/member
 +      * 观察 namespace 和 scope(module, as, path 参数)
 +    * resource 单数用法 (carts 可改 cart)
  
 -* How to run the test suite
 +5. State Machine 釋疑: state, event 和 callbacks
 +   * https://github.com/aasm/aasm 用法
  
 -* Services (job queues, cache servers, search engines, etc.)
 -
 -* Deployment instructions