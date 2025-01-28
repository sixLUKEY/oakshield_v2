<script lang="ts">
	let { heading, text, icon, alt } = $props();
</script>

<div class="text-center flex flex-col gap-5 bg-surfacAlternate rounded">
	<img src={icon} {alt} class="w-10 h-10"/>

	<h3 class="text-2xl">{heading}</h3>

	<p>{text}</p>
</div>
