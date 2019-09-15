<?php
namespace App\View\Helper;

use Cake\View\Helper;
use Cake\View\View;

/**
 * Bookmark helper
 */
class BookmarkHelper extends Helper
{
    public $helpers = ['Html'];

    /**
     * Default configuration.
     *
     * @var array
     */
    protected $_defaultConfig = [];

    public function url(\App\Model\Entity\Bookmark $bookmark)
    {
        return $this->Html->link($bookmark->url, $bookmark->url, [
            'title' => $bookmark->title
        ]);
    }
}
