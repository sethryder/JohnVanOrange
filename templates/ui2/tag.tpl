{include file='head.tpl'}
<h1>Images tagged {$tag.name}</a></h1>
<div id='carousel'>
{foreach from=$images item=image}
 <a href="/v/{$image.uid}"><img class='cloudcarousel' src="/media/thumbs/{$image.filename}"></a>
{/foreach}
</div>
{include file='foot.tpl'}