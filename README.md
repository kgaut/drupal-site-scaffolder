# drupal-site-scaffolder

## Main goal
Easily start a new Drupal project with main modules built over composer

## Dependencies
This *scaffolder* require **composer**, a PHP dependencies manager.


##What it does ?
It will download the last 7.x release of Drupal, and a list of useful modules.

It copy the **default.settings.php** to **settings.php**, create the **files** 
and **tmp** folder (within **sites/default**).

The **.gitignore** file is here to prevent you to put under versioning core and 
modules. (See [.gitignore section](#gitignore) for more information.)


##Get started
[Download](https://github.com/kgaut/drupal-site-scaffolder/archive/7.x-1.x.zip), 
or clone the project (download is preferable because you may want to use your 
own versioning system).

In the newly created folder launch :  

```composer install```

##.gitignore

As said previously, the **.gitignore** file is here to prevent you to put under 
versioning core and modules. 

The modules within **sites/\*/modules/contrib/** are excluded, your customs 
modules has to be under **sites/\*/modules/** in order to not being ignored. 
(ie : **sites/all/modules/my_module** will be versioned but not 
**sites/all/modules/contrib/views**)

Same thing for themes, within **sites/\*/themes/contrib/** are excluded, those 
under **sites/\*/theme/** are not. 
(ie : **sites/all/themes/my_theme** will be versioned but not 
**sites/all/themes/contrib/zen**)

##Add contributed modules and themes
Composer use the **[Drupal Packagist](https://packagist.drupal-composer.org/)** 
repository in order to download / update modules.

If you want to add a module or a theme, let's say 
**[zen base theme](https://packagist.drupal-composer.org/packages/drupal/zen)** 
for example type the following command : 
```
composer require drupal/zen
```

##Use patchs for core and modules
If you need to patch core or a module, thanks to **cweagans/composer-patches**, 
you can !

Within the **patches** section add and adapt the following example :

```
"drupal/twitter": {
  "Allow to add tracking arguments to URL": "https://www.drupal.org/files/issues/twitter-post-allow-to-add-tracking-to-url-2582287-6.patch"
}
```

The key specify the module to patch (here : **twitter**), then the array contains 
a list of patches, the key is a description, the value is the path to the patch,
it could be an url, or a relative path to a file on your system.

Complete example : 
```
"patches": {
  "drupal/twitter": {
    "Allow to add tracking arguments to URL": "https://www.drupal.org/files/issues/twitter-post-allow-to-add-tracking-to-url-2582287-6.patch"
  }
}
```

 



##Thanks to
Based on the work of [webflo](https://github.com/webflo/) on [drupal-project](https://github.com/drupal-composer/drupal-project).