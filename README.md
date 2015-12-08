# drupal-site-scaffolder

## Main goal
Easily start a new Drupal project with main modules built over composer

## Dependencies
This *scaffolder* require **composer**, a PHP dependencies manager.


##What it does ?
It will download the last 7.x release of Drupal, and a list of useful modules.

The **.gitignore** file is here to prevent you to put under versioning core and 
modules. (See [.gitignore section](#.gitignore) for more information.)



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