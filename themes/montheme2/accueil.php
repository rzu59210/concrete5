<?php $this->inc("elements/header.php"); ?>   
  
            <div id="wrapper">   
					<?php 
						$a = new Area('banniere');
						$a->display($c);
					?>
            </div>
            <div id="wrap">
                <class>
                    <h1><b>
						<?php 
							$a = new Area('Titre');
							$a->display($c);
						?>
					</b></h1>
                </class> 
				
                <class id="Scroll">
                        <HR align="center" size="1" width="1100px" color="#DDDDDD">
                </class>

                <article id="First">
					<?php 
						$a = new Area('col1');
						$a->display($c);
					?>
                    <button id="MonBoutton">Learn More  <p class="fleche">----></p></button>   
                </article>
                <article id="Second">
					<?php 
						$a = new Area('col2');
						$a->display($c);
					?>					
					</p>
				   <button id="MonBoutton">Learn More  <p class="fleche">----></p></button>   
                </article>
                <article id="Third">
					<?php 
						$a = new Area('col3');
						$a->display($c);
					?>					
					<button id="MonBoutton">Learn More  <p class="fleche">----></p></button>
                </article>
                <article id="SocialMedia">   
					<?php 
						$a = new Area('social');
						$a->display($c);
					?>
					<button id="MonBoutton2">Subscribe  <p class="fleche">----></p></button>
                </article>
				
                <article id="Contact">
					<?php 
						$a = new Area('contact');
						$a->display($c);
					?>              
					<button id="MonBoutton2">Send it  <p class="fleche">----></p></button>
                </article>
				
               <article id="News">
                     <?php 
						$a = new Area('actualite');
						$a->display($c);
					?>
					 
					 <button id="MonBoutton2">Visit our Blog  <p class="fleche">----></p></button>
               </article>
			   
               <article id="BoutonSubmit"></article>        
            </div>
<?php $this->inc("elements/footer.php"); ?> 