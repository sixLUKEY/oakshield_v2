<script lang="ts">
</script>

<section class="mt-20 flex flex-col gap-8">
	<div class="flex gap-4 items-center">
		<a href="/" aria-label="navigate home">
			<svg
				class="transition"
				width="17"
				height="10"
				viewBox="0 0 17 10"
				fill="none"
				xmlns="http://www.w3.org/2000/svg"
			>
				<path d="M0 5L7.5 9.33013V0.669873L0 5ZM6.75 5.75H17V4.25H6.75V5.75Z" fill="white" />
			</svg>
		</a>
		<h2 class="text-onSurfaceLight text-3xl font-bold">Our Services</h2>
	</div>

	<div class="text-xl text-onSurfaceLight flex flex-col gap-3">
	  <h4>Commercial & Industrial Security</h4>
	  <h4>Event Security</h4>
	  <h4>Alarm installation</h4>
	  <h4>CCTV & Surveillance</h4>
	  <h4>24hr Monitoring and Response</h4>
	  <h4>Drone Surveillance</h4>
	</div>
</section>

<style lang="scss">
	svg {
		&:hover {
			transform: translateX(-0.25rem);

			path {
				fill: #f1bb27;
			}
		}
	}
</style>
