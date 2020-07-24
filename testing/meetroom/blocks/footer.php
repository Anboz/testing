  <!-- Footer
 ================================================== -->
      
    </div>
    <!-- end wrapper -->
    <a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-48 active"></i></a>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/raphael-min.js"></script>
    <script src="assets/js/jquery.easing.1.3.js"></script>
    <script src="assets/js/bootstrap.js"></script>    
    <script src="assets/js/custom.js"></script>   
      <script> 
       
         function tstart(){         
         	   var tm = setInterval('updateTime()', 1000);
         	  // var removeInfo = setInterval('rmInfo()',10)         	 
         } 


		
			function updateTime(){			       
			        
			         for(var i = 0; i < 8; i++){ 
			         	 
			           	if(document.getElementById(i).value == 'wbl'+i){ 
			           		//  sendIdForChecking(document.getElementById('id'+i).value, i, 'orange');			         	 	  		 	
			            	var s = document.getElementById('second'+i).innerHTML * 1;
			         	 	let m = document.getElementById('minute'+i).innerHTML * 1;
			         	 	 if(m == 0 && s == 0){
			         	 	  	 // sendIdForChecking(document.getElementById('id'+i).value, i, 'red');			         	 	  		 	
			         	 	  	 window.location = "?page=all_rooms&index="+document.getElementById('index').value;
			         	 	  	}
			         	 	if(s == 0 && m > 0){
			         	 	s = 60;
			         	 	
			         	 	m--;			         	 	
			         	 	if(m < 0)m = 0;
			         	 	 document.getElementById('minute'+i).innerHTML = m;	
				            } 	
				             			            
			         	 	if(s > 0)
			         	 		 s--;
			         	 	if(m == 0 && s == 0)
			         	 		s = 0; 
			         	   document.getElementById('second'+i).innerHTML = s;         	
			         	  
			         	      
					} 
					 	if(document.getElementById(i).value > 0){
					 	 
							 document.getElementById(i).value = (document.getElementById(i).value * 1) - 1; 
							 if(document.getElementById(i).value == 0){
								 window.location = "?page="+document.getElementById('page').value+"&index="+document.getElementById('index').value;	
								 } 
						}
					  	if(document.getElementById(i).value < 0){
					  		document.getElementById(i).value = (document.getElementById(i).value * 1) + 1; 
							if(document.getElementById(i).value == 0){
							   window.location = "?page="+document.getElementById('page').value+"&index="+document.getElementById('index').value;	
								}
					  		
					  	}
					 
				}
         	 }
         	
        
     </script>      
  </body>

</html>