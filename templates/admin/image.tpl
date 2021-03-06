{include file='header.tpl'}

<!-- Image variable dump

{$image|print_r}

-->

<h2>Image Admin</h2>

<div id='image_data'>
 <p><a href='{$image.page_url}'>{$image.uid}</a></p>
 {if !$image.display}<p class='alert'>HIDDEN</p>{/if}
 {if !$image.approved}<p class='alert'>NOT APPROVED</p>{/if}
 {if $image.report}<p>Reported as: <span class='alert'>{$image.report.value}</span></p>{/if}
 {if $image.nsfw}<p>NSFW</p>{/if}
 {if $image.uploader.username}<p>Uploaded by <a href='/u/{$image.uploader.username}'>{$image.uploader.username}</a></p>{/if}
 {if $image.c_link}<p><a href='{$image.c_link}'>External comments</a></p>{/if}
 {if $image.tags}
 <p>Tags:
  {foreach name=tags from=$image.tags item=tag}<p class='tag'>{$tag.name}</p>{/foreach}
 {/if}
 
 <p>Images: {$stats.images}</p>
 <p><a href='/admin/approve'>Approved:</a> {$stats.approved} ({$stats.approved_percent}%)</p>
 {if $stats.reports}<p><a href='/admin/reported'>Reported:</a> {$stats.reports}</p>{/if}
</div>

<div id='content'>

	<p><button id='approve'>Approve</button> <button id='nsfw'>Approve as NSFW</button> <button id='reject'>Reject</button> <button id='skip'>Skip</button></p>
	<section id='img_container' itemscope itemtype="http://schema.org/ImageObject">
     <a id='rand_link' href='/admin/approve?{$rand}' rel='nofollow'>
      <img id="{$image.uid}" class="image" alt='Main Image' src='{$image.image_url}' height='{$image.height}' width='{$image.width}' itemprop='contentUrl' />
     </a>
	</section>

</div>	
{include file='footer.tpl'}