<script lang="ts">
	let { heading, text, icon, alt } = $props();
</script>

<div class="text-center text-onSurfaceLight flex flex-col gap-5 bg-[#171717] rounded px-3 py-8 flex-1">
	<img src={icon} {alt} class="w-10 h-10 mx-auto"/>

	<h3 class="text-2xl font-bold">{heading}</h3>

	<p>{text}</p>
</div>
