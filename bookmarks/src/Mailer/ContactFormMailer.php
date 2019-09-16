<?php
namespace App\Mailer;

use Cake\Mailer\Mailer;

/**
 * ContactForm mailer.
 */
class ContactFormMailer extends Mailer
{
    /**
     * Mailer's name.
     *
     * @var string
     */
    public static $name = 'ContactForm';

    public function submission(array $data)
    {
        $this->from('app@domain.com', 'Bookmarks')
              ->to('me@domain.com', 'Me')
              ->template('default', 'default')
              ->set(['data' => $data]);
    }
}
