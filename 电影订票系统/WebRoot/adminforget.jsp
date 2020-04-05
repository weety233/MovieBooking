<%@ page contentType="text/html; charset=gb2312" %>
<html>
<body>
<form action="adminpassword" method=post>

<table>
  <tr><td colspan="2" align="center">身份验证</td></tr>
  <tr>
    <td>真实姓名</td>
    <td><input type=text name=realName>（必填）</td>
  </tr>
  <tr>
    <td>身份证号</td>
    <td><input type=text name=cardNum>（必填）</td>
  </tr>
  <tr>
    <td>手机号码</td>
    <td><input type=text name=telephone>（必填）</td>
  </tr>
</table>
<input type="submit" name="next" value="下一步">
</form>
</body></html>