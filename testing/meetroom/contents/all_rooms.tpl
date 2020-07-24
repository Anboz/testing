 <section id="maincontent">
        <div class="container"> 
	         
	    <div class="row">   			
            <div class="span12">
              <input type="hidden" value="<?=(isset($_GET['index']))?$_GET['index']:1; ?>" id="index" /> 
              <input type="hidden" value="all_rooms" id="page" /> 
              <div class="row">
              <? for($i = 0; $i < count($all_rooms); $i++) { ?>          
                 <? if(isset($all_rooms[$i]['title'])){ ?>
                
                <div class="span3">
                  <h6> </h6>
                  <div class="color-box <?=$all_rooms[$i]['color']?>">
                    <p class="first">
                      <?=$all_rooms[$i]['title']?><br>
                      <span id="status<?=$i;?>"><?=($all_rooms[$i]['color']=='orange')?substr($all_rooms[$i]['status'],0, -5): $all_rooms[$i]['status'];?></span>
                
                        
                        <span id="minute<?=$i?>"><?=($all_rooms[$i]['color'] == 'orange')?substr($all_rooms[$i]['status'],-5, 2):""?></span> 
                        <span id="time<?=$i?>"> <?if($all_rooms[$i]['color']=='orange')echo ':';?> </span>
                         <span id="second<?=$i?>"><?=($all_rooms[$i]['color'] == 'orange')?substr($all_rooms[$i]['status'],-2, 2):""?></span>
                    	
                  
                        <input type="hidden" id="<?=$i?>" value="<?=($all_rooms[$i]['color']=='orange')? 'wbl'.$i :(($all_rooms[$i]['status']=='Свабодно')?('a'):(($all_rooms[$i]['color']=='green')?(-(strtotime(substr($all_rooms[$i]['status'],-5)) - time())):(strtotime(substr($all_rooms[$i]['status'],-5))-time())));?>" />                  
                    </p>
                    <p class="sec">
                      <? if($all_rooms[$i]['color']=="green"){ ?>
                       <a href="?page=bookRoom&id=<?=$all_rooms[$i][id]?>" class="btn"> Бронировать</a>
                       <? } else { ?>
                         <span>  <a class="btn noBook"> Х </a></span>
                       <? } ?>
                    </p>
                  </div>
                </div>
                <style>
                	.noBook{
                	  border-radius: 50%;
                	  color: red;                		
                	}
                	
                </style>
                   <? } ?>
                <? } ?>
              </div>
              
            </div>
         
          </div>
	 
	              
             
	  <div align="center" style="background-color:#b6adb1" >
	 	<br>
	    <?if($_GET['index'] > 2){ ?> 
	    	 <a href="?page=all_rooms&index=1" class="btn btn-primary">1</a>	  
		  	<a href="?page=all_rooms&index=<?=($_GET['index'] - 1)?>" class="btn btn-primary">
		  	<<
		  	</a>
	   <? } ?>	  
	  	<a href="?page=all_rooms&index=<?=($_GET['index'] > 1 && $_GET['index'] < count($index)) ? $_GET['index'] - 1 :(($_GET['index'] == count($index))? count($index) - 2 : 1) ?>" class="btn btn-<?=($_GET['index'] == 1) ? 'dark' : 'primary'?>">
	  	<?=($_GET['index'] > 1 && $_GET['index'] < count($index)) ? $_GET['index'] - 1 : (($_GET['index'] == count($index))? count($index) - 2 : 1)?>	  		
	  	</a>
	  	
	    <? if( count($index) > 1){ ?>
	       
		  	<a href="?page=all_rooms&index=<?=($_GET['index']!= 1 && $_GET['index']!=count($index)) ? $_GET['index'] :( ($_GET['index']== 1) ? 2 : count($index) - 1)  ?>" class="btn btn-<?=($_GET['index']!= 1 && $_GET['index']!=count($index)) ? 'dark' :'primary'?>">
		  		<?=($_GET['index']!= 1 && $_GET['index']!=count($index)) ? $_GET['index'] :( ($_GET['index']== 1) ? 2 : count($index) - 1)  ?>	  		
		  	</a>	
	  	 <? } ?>
	  	 
	  	 <? if( count($index) > 2){ ?> 
		  	<a href="?page=all_rooms&index=<?=($_GET['index'] < count($index) && $_GET['index'] != 1) ? $_GET['index'] + 1 :(($_GET['index'] == 1) ? 3 : count($index) )?>" class="btn btn-<?=($_GET['index'] == count($index) && count($index) > 2) ? 'dark' : 'primary'?>">
		  		<?=($_GET['index'] < count($index) && $_GET['index'] != 1) ? $_GET['index'] + 1 :(($_GET['index'] == 1) ? 3 : count($index) )?>
		  	</a>
	  	 <? } ?>
	  	 
	  	 
	  	<?if($_GET['index'] < count($index) - 1 && count($index) > 3){  ?>
	  	
		     	<a href="?page=all_rooms&index=<?=($_GET['index'] + 1)?>" class="btn btn-primary">
		     	>>		     		
		     	</a>	     			  	   		  	   	
	     		<a href="?page=all_rooms&index=<?=count($index)?>" class="btn btn-primary">	     		
	     		<?=count($index)?>	     		
	     		</a>		  	  
	  	<? } ?>	
	  	<br>  		<br> 
	  </div>
	 <br>
        </div>
         
      </section>