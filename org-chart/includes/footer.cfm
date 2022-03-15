
		<div class="footer-main">
			<div class="container">
				<!---<div class="social-icons">
					<ul>
						<li>
							<a href="#" title="Facebook" target="_blank">
								<i class="fab fa-facebook-f"></i>
							</a>
						</li>
						<li>
							<a href="#" title="Twitter" target="_blank">
								<i class="fab fa-twitter"></i>
							</a>
						</li>
						<li>
							<a href="#" title="Instagram" target="_blank">
								<i class="fab fa-instagram"></i>
							</a>
						</li>
					</ul>
				</div>--->
				<p>U.S. Army Geospatial Center<br>
					Warfighter Support Directorate</p>
			</div>
		</div>
	</body>
	<script src="js/slick.min.js"></script>
	<script src="js/module_27325013768_Our_People_Filter_Tab_Nav_Vue.min.js"></script>
	<script src="js/vue_bundle.min.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<script type="text/javascript">
		//Scroll totop
		//-----------------------------------------------
		$(window).scroll(function() {
			if($(this).scrollTop() != 0) {
				$(".scrollToTop").addClass("fadeToTop");
				$(".scrollToTop").removeClass("fadeToBottom");
			} else {
				$(".scrollToTop").removeClass("fadeToTop");
				$(".scrollToTop").addClass("fadeToBottom");
			}
		});

		$(".scrollToTop").click(function() {
			$("body,html").animate({scrollTop:0},800);
		});
	</script>
</html>