<div class="row full-row">
    <div class="col-xs-12">
        <div class="find-text text-center">знайди того, хто тобі потрібен</div>
    </div>
</div>
<div class="row logo-row find-search">
    <div class="col-xs-3 nopadding">
        <div class="find-input find-select">
            <span>Город</span>
        </div>
        <ul class="find-dropdown list-unstyled filter-list">
            <? foreach ( $city as $item ) : ?>
                <li data-id="<?=$item['id']?>"><?=$item['name'];?></li>
            <? endforeach?>
        </ul>
    </div>
    <div class="col-xs-2 find-age-block">
        <label for="age-from" class="find-label">Вік</label>
        <input id="age-from" class="find-input find-age" value="от" /><div class="find-age-delim">-</div><input id="age-to" class="find-input find-age" value="до" />
    </div>
    <div class="col-xs-2">
        <div class="find-input find-bud">
            <span>Будівництво</span>
        </div>
        <ul class="find-dropdown list-unstyled filter-list">
            <li>Київ</li>
            <li>Харків</li>
            <li>Івано-Франківськ</li>
            <li>Дніпопетровськ</li>
        </ul>
    </div>
    <div class="col-xs-2">
        <div class="find-input find-bud">
            <span>Матеріал</span>
        </div>
        <ul class="find-dropdown list-unstyled filter-list">
            <li>Київ</li>
            <li>Харків</li>
            <li>Івано-Франківськ</li>
            <li>Дніпопетровськ</li>
        </ul>
    </div>
    <div class="col-xs-3 pull-right" >
        <input id="find-phone" class="find-phone find-input" />
        <div class="small-find-btn pull-right"></div>
    </div>
</div>


</div>

