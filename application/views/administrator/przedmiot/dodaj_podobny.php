<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">Dodaj nowy przedmiot</h1>
    <script src="<?php echo base_url();?>assetss/js/upload.js"></script>
    <?php
    if (isset($_SESSION['nazwa_przedmiotu']))
    {
        echo '<div class="col-md-8 col-md-offset-2">
        <div class="alert alert-success alert-dismissible" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <p class="text-center">Dodano '.$this->session->userdata('nazwa_przedmiotu').'</p>
        </div>
      </div>';
        $this->session->unset_userdata('nazwa_przedmiotu');
    }
    ?>
    <div class="row">
        <div class="col-md-6">
            <?php
            $attributes = array('class' => 'form-horizontal');
            echo form_open_multipart('administrator/do_upload', $attributes);
            ?>
            <?php foreach($produkty as $key){ ?>
            <div class="form-group">
                <div class="col-sm-8 upload">
                    <input type="file" name="my_file[]" id="plik" multiple="" />
                </div>
            </div>
            <div class="form-group">
                <label for="nazwa" class="col-sm-3 control-label">Nazwa</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="nazwa" placeholder="Nazwa" name="nazwa" value="<?php echo $key->nazwa; ?>">
                </div>
                <?php echo "<div class='bladwalidacji'>".form_error('nazwa')."</div>"; ?>
            </div>
            <div class="form-group">
                <label for="cena" class="col-sm-3 control-label">Cena za sztuke</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="cena" placeholder="Cena" name="cena" value="<?php echo $key->cena; ?>">
                </div>
                <?php echo "<div class='bladwalidacji'>".form_error('cena')."</div>"; ?>
            </div>
                <div class="form-group">
                    <label for="kategoria" class="col-sm-3 control-label">Kategoria</label>
                    <div class="col-sm-6">
                        <select name="id_kategorii" class="form-control" id="kategoria">
                            <option value="<?=$key->id_kategorii?>" selected="selected"><?=$key->nazwa_kategorii?></option>
                            <?php foreach ($kategorie as $keyy) {
                                echo '<option value="'.$keyy->id_kategorii.'|'.$keyy->id_kategorii_1.'">'.$keyy->lev1.' > '.$keyy->lev2.'</option>';
                            } ?>
                        </select>
                    </div>
                </div>
            <div class="form-group">
                <label for="ilosc" class="col-sm-3 control-label">Stan</label>
                <div class="col-sm-6">
                    <select name="stan" id="stan"  class="form-control">
                        <option value="1">Dostępne</option>
                        <option value="0">Niedostępny</option>
                    </select>
                </div>
                <?php echo "<div class='bladwalidacji'>".form_error('stan')."</div>"; ?>
            </div>
            <div class="form-group">
                <label for="opis" class="col-sm-3 control-label">Opis</label>
                <div class="col-sm-6">
                    <textarea class="form-control" rows="5" id="opis" placeholder="opis" name="opis"><?=$key->opis;?></textarea>
                </div>
                <?php echo "<div class='bladwalidacji'>".form_error('opis')."</div>"; ?>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-danger">Dodaj przedmiot</button>
                </div>
            </div>
            <?php }?>
            </form>
        </div>
    </div>
</div>
</div>
</div>
