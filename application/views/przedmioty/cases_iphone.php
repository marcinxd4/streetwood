<div class="col-md-10 col-sm-12" style="padding-top: 20px;">
    <?php

    foreach ($case_iphone as $key)
    {
        echo '<div class="col-sm-6 col-md-4">
                <a href="'.base_url().'case_/iphone/'.$key->id_produktu.'-'.str_replace(' ', '-', $key->nazwa_produktu).'">
                <img class="thumbki" src="'.base_url().'assetss/img/products/case_/iphone/'.$key->nazwa_zdjecia.'" alt="Zdj1"></a>
                <p class="thumb-tytul">'.$key->nazwa_produktu.'</p>
                <p class="thumb-cena">'.$key->cena.' zł</p>
            </div>';
    }
    ?>


    
</div>
</div>
</div>