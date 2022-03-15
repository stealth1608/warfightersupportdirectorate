<div class="footer-main">
        <div class="container">
            <div class="social-icons">
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
            </div>
            <p>U.S. Army Geospatial Center<br>
                Warfighter Support Directorate</p>
        </div>
    </div>
</div>
</body>
<script>
    $(document).ready(function(){
        $('.toggleBtn').removeClass('active');
        $('.toggleBtn').click(function(e){
            $(this).toggleClass('active');
            $('.nav-main').slideToggle();
        });
    });
</script>
</html>