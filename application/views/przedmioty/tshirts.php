<div class="col-md-10 col-sm-12" style="padding-top: 20px;">

    <?php
    foreach ($t_shirts as $key)
    {
        echo '<div class="col-sm-6 col-md-4">
                <a href="'.base_url().'odziez/t-shirt/'.$key->id_produktu.'-'.str_replace(' ', '-', $key->nazwa_produktu).'">
                <img class="thumbki" src="'.base_url().'assetss/img/products/odziez/t-shirt/'.$key->nazwa_zdjecia.'" alt="Zdj1"></a>
                <p class="thumb-tytul">'.$key->nazwa_produktu.'</p>
                <p class="thumb-cena">'.$key->cena.' zł</p>
            </div>';
    }
    if($t_shirts==null)
    {
        echo '<h1 class="text-center">Brak produktów w tej kategorii</h1>';
    }
    ?>
</div>
</div>
</div>