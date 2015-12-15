# Drupal Site Scaffolder

## Main goal
Easily start a new Drupal 7 / 8 project with main modules built over composer

## Dependencies
This *scaffolder* require **composer**, a PHP dependencies manager.


##What it does ?
It will download the last 7.x or 8.x release of Drupal, and a list of useful modules.

It copy the **default.settings.php** to **settings.php**, create the **files** 
and **tmp** folder (within **sites/default**).

The **.gitignore** file is here to prevent you to put under versioning core and 
modules. (See [.gitignore section](#gitignore) for more information.)

At the end, a script ask you if you want to create a MySQL database.

##Get started

Open a terminal and move to the folder you want to use, it should be empty, then 
launch the command :

**For Drupal 7 :**
```composer create-project kgaut/drupal-site-scaffolder ./ 7.*```

**For Drupal 8 :**
```composer create-project kgaut/drupal-site-scaffolder ./ 8.*```

The script is **loooong** and it does not output much, if you wish, you can use
```-vvv``` parameter in order to set it more verbose.

**For Drupal 7 :**
```composer create-project kgaut/drupal-site-scaffolder ./ 7.* -vvv```

**For Drupal 8 :**
```composer create-project kgaut/drupal-site-scaffolder ./ 8.* -vvv```

If you'd rather install it in a custom folder you can specify it with :

**For Drupal 7 :**
```composer create-project kgaut/drupal-site-scaffolder my_custom_folder 7.*```

**For Drupal 8 :**
```composer create-project kgaut/drupal-site-scaffolder my_custom_folder 8.*```

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

##Update drupal core and contrib modules

In order to update core and modules, you should launch the command
```
composer update
```
It will update the composer.lock file with the new version for updated 
dependencies.

If you prefer to check the available updates you can do a __dry run__ :  
```
composer update --dry-run
```
this will only simulate the changes.

Also you can update only one dependency by specifying it : 

```
composer update drupal/zen
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

##Links
  - [The project on Packagist](https://packagist.org/packages/kgaut/drupal-site-scaffolder)



##Thanks to
Based on the work of [webflo](https://github.com/webflo/) on [drupal-project](https://github.com/drupal-composer/drupal-project).
