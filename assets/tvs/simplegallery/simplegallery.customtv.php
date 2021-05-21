<?php
/** @var $modx DocumentParser */
/** @var $row array */
/** @var $content array */
include_once(MODX_BASE_PATH . 'assets/plugins/simplegallery/lib/plugin.class.php');
global $richtexteditorIds;

$oldEventParams = $modx->event->params;

if ($modx->pluginCache['SimpleGalleryProps']) {
    $props = $modx->parseProperties($modx->pluginCache['SimpleGalleryProps'], 'SimpleGallery', 'plugin');

    $props['id'] = $content['id'];
    $props['template'] = $content['template'];

    $modx->event->params = $props;
}


$plugin = new \SimpleGallery\sgPlugin($modx, $modx->getConfig('lang_code'));
$plugin->tpl = 'assets/tvs/simplegallery/tv.tpl';

if ($content['id']) {
    $output = $plugin->render();
} else {
    $output = $plugin->renderEmpty();
}


$modx->event->params = $oldEventParams;

echo $output;
