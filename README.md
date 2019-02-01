# 基于SSH的游戏商城及后台管理
sshGameShop&amp;Admin
<hr>
<h3>1 概述<h3/>
<h5>1.1 工作环境</h5>
Eclipse Version: Oxygen.3 Release (4.7.3)<br/>
Navicat for MySQL Version: 11.1.13<br/>
MySQL Version: 5.7<br/>
<h5>1.2 涉及技术</h5>
Struts2+Spring+Hibernate+jQuery+Bootstrap<br/>
<hr>
<h3>2 功能需求</h3>
	<h5>2.1 面向用户部分功能</h5>
2.1.1 登录功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果是游戏商城的用户，购买前需要填写用户名和密码才能享受购买、评论等服务，否则只能浏览主页及游戏详细介绍。<br/>
2.1.2 注册功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;顾客要想使用登录功能从而购买、评论游戏首先得注册为游戏商城的用户。注册时需要填写登录用户名、密码、电子邮箱以及联系方式。注册后用户可以查看和修改个人信息。<br/>
2.1.3 购买功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户登录后可以浏览游戏商城，点击自己想购买的游戏，查看游戏的详细。若该用户之前没有购买该游戏，则系统会提供一个购买按钮，用户可以点击该按钮进行购买，每次只能买一个游戏，系统会为该用户提供一条订单记录保存在后台。<br/>
2.1.4 评论功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户登录后可以在游戏的详细介绍页面中进行评论，只需要输入评论的内容点击提交按钮即可。用户可以对每个游戏进行无限次评论。在个人信息页面中，用户可以点击我的评论按钮，查看自己以往的所有评论，且可以在看详细评论的页面进行评论的删除。<br/>
2.1.5 付款功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户在点击购买后可以进行支付宝付款操作，系统会跳到一个支付页面，查看支付订单的详细，并可以选择扫二维码登录或支付宝账号密码登录然后进行付款。在用户付款完毕后，订单会修改为已付款状态，用户的游戏库会增加购买的游戏。<br/>
2.1.6 反馈功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户在网页的最下方点击邮箱，系统将会自动跳转到邮件软件，用户可以发电子邮件给我们进行信息的反馈。<br/>
2.1.7 下载功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户在购买或拥有某游戏后，可以从游戏详细介绍页面或者游戏库页面中选择下载游戏，原来的购买按钮将会改为下载按钮，用户可以将游戏保存在任意地方。<br/>
	<h5>2.2 后台管理部分功能</h5>
2.2.1 登录功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理员必须登录后才能进行其余操作，管理员可以在登录页面输入名称和密码进行登录。<br/>
2.2.2 管理游戏功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理员可以添加、查询、修改和删除游戏。<br/>
2.2.3 管理用户功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理员可以添加、查询、修改和删除用户，以及可以导出用户报表。<br/>
2.2.4 查看订单功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理员可以对后台的订单进行查看操作。<br/>
2.2.5 查看评论功能<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理员可以对所有用户的评论进行查看操作。<br/>
<hr>

