<script>
	import SectionHeading from '../../components/section-heading.svelte';
	import mail from '$lib/icons/contact/mail.svg';
	import gps from '$lib/icons/contact/gps.svg';
	import phone from '$lib/icons/contact/phone.svg';
</script>

<section id="contact" class="flex flex-col items-center mb-20">
	<SectionHeading adjective="Let's get in touch" id="contact" />

	<form action="POST" class="w-96 flex flex-col gap-6 mb-20">
		<div class="flex justify-between">
			<label for="name">Name</label>
			<input type="text" id="name" class="w-[275px] bg-surfacAlternate" />
		</div>
		<div class="flex justify-between">
			<label for="name">Company</label>
			<input type="text" id="name" class="w-[275px] bg-surfacAlternate" />
		</div>
		<div class="flex justify-between">
			<label for="name">Email</label>
			<input type="text" id="name" class="w-[275px] bg-surfacAlternate" />
		</div>

		<div class="flex flex-col gap-2">
			<label for="textfield">Leave a Message?</label>
			<textarea name="textfield" id="textfield" class="bg-surfacAlternate min-h-20"></textarea>
		</div>

		<button
			type="submit"
			class="border border-onSurfacePrimary rounded bg-transparent text-onSurfacePrimary w-fit mx-auto px-4 py-1 hover:text-surface hover:bg-onSurfacePrimary transition"
		>
			Submit
		</button>
	</form>

	<div class="flex flex-col gap-6 w-96">
		<div class="flex gap-6">
			<img src={mail} alt="mail icon" />
			<div class="w-px h-2 bg-onSurfacePrimary rounded-full my-auto"></div>
			<p>security@oakshield.co.za</p>
		</div>
		<div class="flex gap-6">
			<img src={gps} alt="gps icon" />
			<div class="w-px h-2 bg-onSurfacePrimary rounded-full my-auto"></div>
			<p>58 Main Road, Mamre, 7347</p>
		</div>
		<div class="flex gap-6">
			<img src={phone} alt="phone icon" />
			<div class="w-px h-2 bg-onSurfacePrimary rounded-full my-auto"></div>
			<p>021 576 0027</p>
		</div>
	</div>
</section>

<style lang="scss">
	input,
	textarea {
		padding: 2px 10px;
		color: #d3d3d3;
	}

	label {
		color: rgb(228, 228, 228);
	}

	img {
	  width: 20px;
	  height: 20px;
	}

	p {
	  color: #d3d3d3;
	}
</style>
