<div id='report_dialog'>
<form>
 {foreach from=$report_types item=report}
  <input type='radio' name='report_type' value='{$report.id}'>{$report.value}<br>
 {/foreach}
</form>
</div>
