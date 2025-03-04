<script lang="ts">
	import facebook from '$lib/icons/footer/facebook.svg';
	import insta from '$lib/icons/footer/insta.svg';
	import linkedin from '$lib/icons/footer/linkedin.svg';
</script>

<footer class="bg-[#45360F] w-screen fixed bottom-0 left-0 py-2 z-50">
	<div class="flex gap-4 items-center mx-auto w-fit">
		<div class="text-onSurfaceLight w-fit font-bold">10 Years of Oakshield Security</div>
		<div class="h-2 w-[2px] bg-onSurfaceLight rounded-full"></div>
		<div class="footer-icons flex gap-3">
			<a href="https://www.facebook.com/oakshield7" target="_blank">
				<img src={facebook} alt="Facebook logo" />
			</a>
			<a href="https://www.instagram.com/oakshield_securityptyltd/" target="_blank">
				<img src={insta} alt="Instagram logo" />
			</a>
			<a href="https://www.linkedin.com/company/oakshieldsecurity-pty-ltd/" target="_blank">
				<img src={linkedin} alt="LinkedIn logo" />
			</a>
		</div>
	</div>
</footer>
