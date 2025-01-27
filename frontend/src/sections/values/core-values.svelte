<script>
	import SectionHeading from '../../components/section-heading.svelte';
	import ValueBlock from '../../components/value-block.svelte';
</script>

<section class="w-full flex flex-col items-center gap-14 relative">
	<SectionHeading adjective="Our core values" />

	<ValueBlock
		heading="Safety Assured"
		description="Lorem ipsum dolor sit amet consectetur. Facilisis elementum proin id lectus tempus mattis massa id. Nisl congue quam lorem commodo eget nibh integer integer sed nunc."
	/>
	<ValueBlock
		heading="Guaranteed Quality"
		description="Lorem ipsum dolor sit amet consectetur. Facilisis elementum proin id lectus tempus mattis massa id. Nisl congue quam lorem commodo eget nibh integer integer sed nunc."
	/>
	<ValueBlock
		heading="Peace of Mind"
		description="Lorem ipsum dolor sit amet consectetur. Facilisis elementum proin id lectus tempus mattis massa id. Nisl congue quam lorem commodo eget nibh integer integer sed nunc."
	/>

	<svg width="1" height="852" viewBox="0 0 1 852" fill="none" xmlns="http://www.w3.org/2000/svg" class="line absolute">
		<line x1="0.5" y1="-2.18557e-08" x2="0.500037" y2="852" stroke="url(#paint0_linear_193_46)" />
		<defs>
			<linearGradient
				id="paint0_linear_193_46"
				x1="-0.5"
				y1="2.18557e-08"
				x2="-0.499963"
				y2="852"
				gradientUnits="userSpaceOnUse"
			>
				<stop stop-color="#1E1E1E" />
				<stop offset="0.17" stop-color="#F1BB27" />
				<stop offset="0.805" stop-color="#F1BB27" />
				<stop offset="1" stop-color="#1E1E1E" />
			</linearGradient>
		</defs>
	</svg>
</section>

<style lang="scss">
	.line {
		left: calc(50% - 235px);
		bottom: -5%;
		z-index: -1;
	}
</style>
