<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="left"></div>
  <div class="right"></div>
  <div class="heading">
    <h1>Transferência Eletrônica - Akatus</h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><span>Salvar</span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span>Cancelar</span></a></div>
  </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <table class="form">
	  
	  <tr><td colspan='2'><h2>Dados de Configuracoes</h2></td></tr>
	  
	        <tr>
        <td width="18%"><span class="required">*</span> Nome do Modulo:</td>
        <td width="82%">
		<input type="text" name="akatust_nome" value="<?php echo $akatust_nome; ?>" size='80' />
          <br />

      </tr>
	  
	   <tr>
        <td>Status Padrao dos Pedidos</td>
        <td><select name="akatust_padrao">
          <?php foreach ($order_statuses as $order_status) { ?>
          <?php if ($order_status['order_status_id'] == $akatust_padrao) { ?>
          <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
		  <?php echo $order_status['name']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $order_status['order_status_id']; ?>">
		  <?php echo $order_status['name']; ?></option>
          <?php } ?>
          <?php } ?>
        </select></td>
      </tr>
	  
	  	  <tr>
        <td>Zona:</td>
        <td><select name="akatust_geo_zone_id">
            <option value="0">Todas as Zonas</option>
            <?php foreach ($geo_zones as $geo_zone) { ?>

            <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>

            <?php } ?>
          </select></td>
      </tr>
	  	  

      <tr>
        <td>Ordem:</td>
        <td><input type="text" name="akatust_sort_order" value="<?php echo $akatust_sort_order; ?>" size="1" /></td>
      </tr>
	  
	 <!-- <tr>
        <td width="18%"><span class="required">*</span> Desconto em %:</td>
        <td width="82%">
		<input type="text" name="akatust_desconto" value="<?php echo $akatust_desconto; ?>" size='2' />
          <br />

      </tr> -->
	  
	  <tr>
	    <td>Status:</td>
	    <td><select name="akatust_status">
	      <?php if ($akatust_status) { ?>
	      <option value="1" selected="selected">Ativo</option>
	      <option value="0">Inativo</option>
	      <?php } else { ?>
	      <option value="1">Ativo</option>
	      <option value="0" selected="selected">Inativo</option>
	      <?php } ?>
	      </select></td></tr>
	  
	  <tr>
	    <td colspan='2'><h2>Dados da Conta Akatus</h2></td>
	    </tr>
	  <tr>
	    <td><span class="required">*</span> E-mail da conta:</td>
	    <td><input name="akatus_email_conta" type="text" id="akatus_email_conta" value="<?php echo $akatus_email_conta; ?>" size='80' />
	      <br /></td>
	    </tr>
	  <tr>
	    <td><span class="required">*</span> Token NIP </td>
	    <td><input name="akatus_token_nip" type="text" id="akatus_token_nip" value="<?php echo $akatus_token_nip; ?>" size="70" />
	      <br /></td>
	    </tr>
	  <tr>
	    <td><span class="required">*</span>API Key</td>
	    <td><input name="akatus_api_key" type="text" id="akatus_api_key" value="<?php echo $akatus_api_key; ?>" size="70" />
	      <br /></td>
	    </tr>
	  
	    <!--<tr>
        <td width="18%"><span class="required">*</span> DV Conta Cedente (digito):</td>
        <td width="82%"><input type="text" name="akatust_ccdv" value="<?php echo $akatust_ccdv; ?>" />
          <br />
		  </tr>-->
	  
	  
	  
	  


	  
	  

	  
    </table>
    </form>
  </div>
</div>
<center>
  <a href="http://www.andresa.com.br" target="_blank">Andresa Web Studio</a>
</center>
</body>
</body>
