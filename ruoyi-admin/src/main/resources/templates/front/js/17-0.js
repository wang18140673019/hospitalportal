document.writeln("<div class=\"related_l\">");
document.writeln("   <div class=\"joinus\">");
document.writeln("      <ul>");
document.writeln("         <li><a href=\"#\" onclick=\"SetHome(this);\">设为主页</a></li>");
document.writeln("         <li><a href=\"#\" onclick=\"addFavorite();\">加入收藏</a></li>");
document.writeln("         <li><a href=\"http://e.weibo.com/u/3561505435\" target=\"_blank\">官方微博</a></li>");
document.writeln("      </ul>");
document.writeln("   </div>");
document.writeln("   <div class=\"top_serch\">");
document.writeln("   <form id=\"productSearch\" method=\"post\" action=\"/List/News\" name=\"Search\">");
document.writeln("   <input class=\"search_text\" type=\"text\" title=\"输入您想找的关键字或词...\" name=\"key\">");
document.writeln("   <input class=\"search_btn\" onclick=\"if(Search.key.value==''){alert('请输入关键字!');return false;}\"type=\"submit\" align=\"middle\" title=\"输入您想找的关键字或词...\" value=\"\">");
document.writeln("   </form>");
document.writeln("   </div>");
document.writeln("</div>");
function SetHome(obj) {   
        try {   
  var url = window.location.href; //获取当前url地址
  obj.style.behavior = 'url(#default#homepage)';   
  obj.setHomePage(url);   
        } catch (e) {   
  if (window.netscape) {   
      try {   
netscape.security.PrivilegeManager   
        .enablePrivilege("UniversalXPConnect");   
      } catch (e) {   
alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");   
      }   
      var prefs = Components.classes['@mozilla.org/preferences-service;1']   
    .getService(Components.interfaces.nsIPrefBranch);   
      prefs.setCharPref('browser.startup.homepage', vrl);   
  }   
        }   
}
function addFavorite()
{
    var url = window.location.href; 
    var title = document.title; 
    try {
        window.external.addFavorite(url, title);
    } catch (e) {
        try {
  window.sidebar.addPanel(title, url, "");
        } catch (e) {
  alert("加入收藏失败,请手动添加.");
        }
    }
}
