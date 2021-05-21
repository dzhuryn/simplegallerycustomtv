<style >
    .sg_image {
        width:[+w+]px;
    }
    .sg_image .img {
        width:[+w+]px;
        height:[+h+]px;
    }
    .sg_image .name {
        width:[+w+]px;
    }

    .js-fileapi-wrapper .btn-left{
        display: none;
    }
    .js-fileapi-wrapper .btn-right{
        display: none;
    }
    #SimpleGallery{
    box-shadow: none;
    }
</style>
<script type="text/javascript">

    var sgConfig = {
        rid:[+id+],
        _modxSiteUrl:'[+site_url+]',
        _xtRefreshBtn:[+refreshBtn+],
        _xtThumbPrefix:'[+thumb_prefix+]',
        _xtAjaxUrl:'[+url+]',
        _xtTpls:'[+tpls+]',
        sgLoaded:false,
        sgSort:null,
        sgLastChecked:null,
        sgBeforeDragState:null,
        sgDisableSelectAll:null,
        clientResize:[+clientResize+]
    };
</script>
<div id="SimpleGallery" class="tab-page">

</div>


<script>
    $(window).on('load', function(){
        if (!sgConfig.sgLoaded) {
            sgHelper.init();
            sgConfig.sgLoaded = true;


            $('#sg_pages').pagination('select');
        }

    });
</script>