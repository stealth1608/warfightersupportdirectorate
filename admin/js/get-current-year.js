$(function() {
  var getYear = new Date();
  var getcurrentYear = getYear.getFullYear();
  var policyHtml = '<a style="color: #fff;" href="https://www.constructdigital.com/privacy-policy">Privacy Policy</a>';
  var footerContent = '© ' + getcurrentYear + ' Construct Pte Ltd' + ' - ';
  
  $('.footer-bottom').find('.footer-copyright span.hs_cos_wrapper').html(footerContent + policyHtml)
  $('.social-sharing .copy-right').html(footerContent + policyHtml)
})