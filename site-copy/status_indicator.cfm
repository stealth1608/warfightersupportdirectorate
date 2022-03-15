<cfinclude template="includes/header_new.cfm">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<style>
	body{
		background: none !important;
	}
</style>

<cfinclude template="includes/page_menus_new.cfm">

	<div class="container" style="color:white">
		<div class="row">
		  	<div class="col-md-12 mt-4">
				<button type="button" class="btn btn-primary btn-lg btn-block" style="background:#563d7c;border-color:#563d7c;pointer-events: none;cursor: default;">
					Degraded Performance <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
				</button>
		  	</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					
					<div class="card-body">
						<div class="alert alert-warning alert-dismissible fade show" role="alert" style="background-color: #f7f7f9;border-color:#f7f7f9">
							<span style="color:grey">
								CDN
							</span>
							<span style="float:right;color:#563d7c">
								Degraded Performance <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
							</span>
						</div>
						<div class="alert alert-warning alert-dismissible fade show" role="alert" style="background-color: #f7f7f9;border-color:#f7f7f9">
							<span style="color:grey">
								Conversions <i class="fas fa-question-circle"></i>
							</span>
							<span style="float:right;color:green">
								Operational <i class="fas fa-check-circle"></i>
							</span>
						</div>
						<div class="alert alert-warning alert-dismissible fade show" role="alert" style="background-color: #f7f7f9;border-color:#f7f7f9">
							<span style="color:grey">
								Site delivery 
							</span>
							<span style="float:right;color:green">
								Operational <i class="fas fa-check-circle"></i>
							</span>
						</div>
						<div class="alert alert-warning alert-dismissible fade show" role="alert" style="background-color: #f7f7f9;border-color:#f7f7f9">
							<span style="color:grey">
								API <i class="fas fa-question-circle"></i>
							</span>
							<span style="float:right;color:#563d7c">
								Degraded Performance <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
							</span>
						</div>
					</div>
				</div>	
			</div>
		</div>
	</div>

	<cfinclude template="includes/footer.cfm">
	<script type="application/javascript">
		$('.scroll').hide()
	</script>