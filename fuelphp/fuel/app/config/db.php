<?php
   return array (
      'production' => array (
         'type'           => 'pdo',
         'connection'     => array (
            'dsn'       => 'mysql:host=ikemen_mysql;dbname=root',
            'username'       => 'root',
            'password'       => 'YOUR_PASSWORD',
            'persistent'     => false,
            'compress'       => false,
         ),
         'identifier'     => '`',
         'table_prefix'   => '',
         'charset'        => 'utf8',
         'enable_cache'   => true,
         'profiling'      => false,
         'readonly'       => false,
      ),
   );