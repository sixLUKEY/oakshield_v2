<script lang="ts">
	let { heading, description } = $props();
</script>

<div class="flex items-center gap-14 value-item w-[500px]">
	<div class="w-12">
		<div
			class="dot origin-center w-8 h-8 border border-onSurfacePrimaryDim rounded-full bg-surface transition"
		></div>
	</div>
	<div class="p-3 transition border border-onSurfacePrimary rounded w-96 text-block">
		<h3 class="text-onSurfacePrimary text-4xl font-bebas">{heading}</h3>
		<p class="text-xl text-onSurfaceLight">{description}</p>
	</div>
</div>

<style lang="scss">
	.value-item {
		&:hover {
			.text-block {
				transform: translateX(20px);
			}

			.dot {
				transform: scale(1.3);
				background-color: #f1bb27;
			}
		}
	}
</style>
