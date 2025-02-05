<script>
	import SectionHeading from '../../components/section-heading.svelte';
	import ValueBlock from '../../components/value-block.svelte';
	import diamond from '$lib/icons/value-icons/diamond.svg';
	import eye from '$lib/icons/value-icons/eye.svg';
	import trophy from '$lib/icons/value-icons/trophy.svg';
</script>

<section>
	<SectionHeading adjective="What Guides Us" id="values" />

	<div class="w-full flex items-center gap-8 relative">
		<ValueBlock
			heading="Vision"
			description="To provide to our clients Total Peace of Mind, and in doing so, become a momentous role
			player in the security industry."
			src={eye}
			alt="an eye"
		/>
		<svg width="18" height="6" viewBox="0 0 18 6" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M18 3L13 0.113249V5.88675L18 3ZM13.5 2.5L0 2.5V3.5L13.5 3.5V2.5Z" fill="#F1BB27" />
		</svg>
		<ValueBlock
			heading="Mission"
			description={[
				'Providing exceptional service and quality products without compromise.',
				'Building lasting relationships through honesty and ethical practices.'
			]}
			src={trophy}
			alt="a trophy"
		/>
		<svg width="18" height="6" viewBox="0 0 18 6" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M18 3L13 0.113249V5.88675L18 3ZM13.5 2.5L0 2.5V3.5L13.5 3.5V2.5Z" fill="#F1BB27" />
		</svg>
		<ValueBlock
			heading="Value"
			description="Our high-quality security solutions help businesses build sustainable enterprises by reducing risk, preventing loss, and ensuring peace of mind."
			src={diamond}
			alt="a diamond"
		/>
	</div>
</section>
