 <section id="maincontent">
        <div class="container">
          <div class="row">
            <div class="span12">             
            </div>
          </div>
          <div class="row">
            <div class="span12">          
              <div class="row">
              <? for($i = 0; $i < $n = count($rooms); $i++){ ?>
                <div class="span3">
                <br>
                  <h6><?=$rooms[$i]['title']?></h6>
                  <div class="color-box green">
                    <p class="first">                       
                    </p>
                    <p class="sec">
                       <a href="?page=delete_room&id=<?=$rooms[$i]['id']?>" style="color: #2d0000" class="btn"> Удалить</a>
                    </p>
                  </div>
                </div>                
                <? } ?>
              </div>             
            </div>
          </div>
        </div>
      </section>