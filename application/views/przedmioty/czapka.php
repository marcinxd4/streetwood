<script type="text/javascript" src="<?= base_url() ?>assetss/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<?= base_url() ?>assetss/js/jssor.slider.mini.js"></script>
<script type="text/javascript" src="<?= base_url() ?>assetss/js/galeria.js"></script>
<div class="col-md-5" style="height: 600px;">
    <!-- Jssor Slider Begin -->
    <!-- To move inline styles to css file/block, please specify a class name for each element. -->
    <div id="slider1_container" style="position: relative; top: 20px; left: 0px; width: 700px;
            height: 700px; background: #FFFFFF; overflow: hidden;">

        <!-- Slides Container -->
        <div u="slides" style="position: absolute; left: 0px; top: 0px; width: 600px; height: 600px; overflow: hidden;">
            <?php
            foreach ($zdjecia as $zdj) {
                echo '<div>
                            <img u="image" src="' . base_url() . 'assetss/img/products/odziez/czapki/' . $zdj->nazwa_zdjecia . '" />
                            <img u="thumb" src="' . base_url() . 'assetss/img/products/odziez/czapki/thumbs/' . $zdj->nazwa_zdjecia . '" />
                        </div>';
            }
            ?>
        </div>
        <!-- thumbnail navigator container -->
        <div u="thumbnavigator" class="jssort01" style="left: -100px; bottom: 0px;">
            <!-- Thumbnail Item Skin Begin -->
            <div u="slides" style="cursor: pointer;">
                <div u="prototype" class="p">
                    <div class=w>
                        <div u="thumbnailtemplate" class="t"></div>
                    </div>
                    <div class=c></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Jssor Slider End -->
</div>
<?= form_open('koszyk/dodaj') ?>
<?php
foreach ($produkt as $pro) {
?>
<div class="col-md-4 col-md-offset-1">
    <div class="row">
        <div class="col-md-12">
            <h1 class="nazwa-przedmiotu"><?= $pro->nazwa ?></h1>
            <p class="cena-przedmiotu"><span id="cena"><?= number_format($pro->cena, 2) ?> zł</span></p>
        </div>
    </div>

    <div class="row" style="padding-top: 20px">
        <div class="col-xs-5">
            <button id="minus" class="increment" style="background-color: #555555; border: none" type="button">
                <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
            </button>
            <input type="text" value="1" id="ilosc" class="ilosc" name="ilosc"/>
            <button id="plus" class="increment" style="background-color: #555555; border: none;" type="button">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
            </button>

            <input type="hidden" name="nazwa" value="<?= $pro->nazwa ?>">
            <input type="hidden" name="cena" value="<?= $pro->cena ?>" id="cena_glowna">
            <input type="hidden" name="id_produktu" value="<?= $pro->id_produktu ?>">
            <input type="hidden" name="actual_adress" value="<?= base_url(uri_string()) ?>">
            <div class="add-cart-div">
                <input class="dodaj-do-koszyka" type="submit" value="Dodaj do koszyka">
            </div>
        </div>
    </div>
    </form>
    <div class="row">
        <div class="col-xs-12">
            <hr/>
            <h2>Szczegóły</h2>
            <?php echo '<p>' . $pro->opis . '</p>';
            }
            ?>
        </div>
    </div>
</div>
</div>
</div>
<script type="text/javascript" src="<?= base_url() . 'assetss/js/ilosc.js' ?>"></script>