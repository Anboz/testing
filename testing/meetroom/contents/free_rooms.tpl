  <section id="maincontent">
        <div class="container"> 
	        
          
              <div class="row">
              <input type="hidden" value="<?=(isset($_GET['index']))?$_GET['index']:1; ?>" id="index" /> 
              <input type="hidden" value="free_rooms" id="page" /> 
              <? for($i = 0; $i < count($roomsForPages[$_GET['index'] - 1]); $i++) { ?>          
                 <?if(isset($roomsForPages[$_GET['index'] - 1][$i]['title'])){ ?>
                <div class="span3">
                  <h6> </h6>
                  <div class="color-box green">
                    <p class="first">
                     <span> <?=$roomsForPages[$_GET['index'] - 1][$i]['title']?></span><br>
                     <span> <?=$roomsForPages[$_GET['index'] - 1][$i]['status']?></span>                    
                    </p>
                    
                     <input type="hidden" id="<?=$i?>" value="<?=($roomsForPages[$_GET['index'] - 1][$i]['status']=='Свабодно')?('a'):(-(strtotime(substr($roomsForPages[$_GET['index'] - 1][$i]['status'],-5)) - time()))?>" />     
                    <p class="sec">                      
                       <a href="?page=bookRoom&id=<?=$roomsForPages[$_GET['index'] - 1][$i]['id']?>" class="btn"> Бронировать</a>                                               </p>
                  </div>
                </div>
                  <? } ?>     
                <? } ?>
              </div>
              
          
	         		 
	         	 
	        
          
          <br>
	  <div align="center" style="background-color:#b6adb1" >
	 	<br>
	    <?if($_GET['index'] > 2){ ?> 
	    	 <a href="?page=free_rooms&index=1" class="btn btn-primary">1</a>	  
		  	<a href="?page=free_rooms&index=<?=($_GET['index'] - 1)?>" class="btn btn-primary">
		  	<<
		  	</a>
	   <? } ?>	  
	  	<a href="?page=free_rooms&index=<?=($_GET['index'] > 1 && $_GET['index'] < count($index)) ? $_GET['index'] - 1 :(($_GET['index'] == count($index))? count($index) - 2 : 1) ?>" class="btn btn-<?=($_GET['index'] == 1) ? 'dark' : 'primary'?>">
	  	<?=($_GET['index'] > 1 && $_GET['index'] < count($index)) ? $_GET['index'] - 1 : (($_GET['index'] == count($index))? count($index) - 2 : 1)?>	  		
	  	</a>
	  	
	    <? if( count($index) > 1){ ?>
	       
		  	<a href="?page=free_rooms&index=<?=($_GET['index']!= 1 && $_GET['index']!=count($index)) ? $_GET['index'] :( ($_GET['index']== 1) ? 2 : count($index) - 1)  ?>" class="btn btn-<?=($_GET['index']!= 1 && $_GET['index']!=count($index)) ? 'dark' :'primary'?>">
		  		<?=($_GET['index']!= 1 && $_GET['index']!=count($index)) ? $_GET['index'] :( ($_GET['index']== 1) ? 2 : count($index) - 1)  ?>	  		
		  	</a>	
	  	 <? } ?>
	  	 
	  	 <? if( count($index) > 2){ ?> 
		  	<a href="?page=free_rooms&index=<?=($_GET['index'] < count($index) && $_GET['index'] != 1) ? $_GET['index'] + 1 :(($_GET['index'] == 1) ? 3 : count($index) )?>" class="btn btn-<?=($_GET['index'] == count($index) && count($index) > 2) ? 'dark' : 'primary'?>">
		  		<?=($_GET['index'] < count($index) && $_GET['index'] != 1) ? $_GET['index'] + 1 :(($_GET['index'] == 1) ? 3 : count($index) )?>
		  	</a>
	  	 <? } ?>
	  	 
	  	 
	  	<?if($_GET['index'] < count($index) - 1 && count($index) > 3){  ?>
	  	
		     	<a href="?page=free_rooms&index=<?=($_GET['index'] + 1)?>" class="btn btn-primary">
		     	>>		     		
		     	</a>	     			  	   		  	   	
	     		<a href="?page=free_rooms&index=<?=count($index)?>" class="btn btn-primary">	     		
	     		<?=count($index)?>	     		
	     		</a>		  	  
	  	<? } ?>	
	  	<br>  		<br> 
	  </div>
	 <br>
        </div>
         
      </section>