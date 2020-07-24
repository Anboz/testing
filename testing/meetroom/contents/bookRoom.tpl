 <html>
 <head>
 	<meta charset="utf-8">
    <title>Митинг рум</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
  <!-- styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
   <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
  <link href="assets/css/prettyPhoto.css" rel="stylesheet">
  <link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet">
  <link href="assets/css/flexslider.css" rel="stylesheet">

  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/color/default.css" rel="stylesheet">
 
 	
 </head>
 <body>
 
 <div class="containre-fluid" style="background-color: #6fff98; height: 100%; width: 100%;">
 <br>
 <br><br><br>
 <section id="maincontent">
 <? if($checkedRoom){ ?>
  <?if($this->error != '') { ?>
  
  <div align="center"style="color:red;"><?=$this->error;?></div><br>
  <? } ?>  	
  
        <div class="container"> 
        <div class="row">
           <div class="span2"></div>
            <div class="span6">
	          <form action="" method="post" style="border-width:1px; border-style: solid; border-radius:5px; padding: 25px;">
	          <div class="row">
	          <div class="span5">
	          
	          	<input class="inp_name" type="text" name='name' value="<?=($this->error != '')? $_POST['name'] : '' ;?>" style="font-size: 20px;         	   
	      	    border-style: none;      	   
	      	    padding: 15px;  	      	       
	      	    margin:10px;
	      	    width:85%;  	          	         	    
	      	    height: 35px;" placeholder="Имя" />
	      	    <br>
	      	    	
	      	    </div>
	      	 </div>  
	      	 
	      	 <div class="row">
	      	  <div class="span5">
	         От:	<input type="date" name="fromdate" style="height:30px;"/> 
	         
	          	<input type="time" name='fromtime' value="<?=($this->error != '')? $_POST['fromtime'] : '' ;?>" style="height:30px;  width: 85px;"/><br>
	          	
	          	<input type="hidden" name="id" value="<?=$_GET['id']?>"/>
	         </div> 	
	       </div>
	       <div class="row">
	       <div class="span2" style="padding-left: 15px;">
	         До: <input type="time" name='totime' value="<?=($this->error != '')? $_POST['totime'] : '' ;?>"style="height:30px;  width: 85px;"/><br>
	        </div>
	        </div>  
	          	<input class='btn btn-info' type="submit" name="send" value="Бронировать" />  
	          	
	            <br/> 	 
	           <br/>        	
	          </form>
	        </div> 
	      <div class="span4" style=" height:330px; background-color: #6fff98; overflow-y: scroll;">
	      
 
	      	<?for($i = 0; $i < count($status); $i++){ ?>
	      	 <div style="color: red; border-style: solid; border-width: 1px; border-color:red;padding:15px; ">
	      	  <?=$status[$i]['name'];?>
	      	  <br />
	      	Занято от: <?=$status[$i]['fromdate'];?> / <?=$status[$i]['fromtime'];?>
	      	  <br />
	      	  до  <?=$status[$i]['totime'];?>	      	  
	      	  </div>
	      	  <br>
	      	<? } ?>
	      	
	      	 
	      </div> 
         </div>
        </div>          
       
   
         <? } else { ?>
        <center> <h2 style="color: red;margin-left: 25px;">Ошибка</h2></center>
         <? } ?>
      </section>
 </div>     
      
    
</body>
</html>

  