koodimonni.github.io
=========================
- Automatically create composer packages for wordpress translations from api.wordpress.org and github.com
- This repo provides custom satis repository for wordpress languages. See more in [languages.koodimonni.fi](http://languages.koodimonni.fi)
- I would like these to be included in Packagist or WPackagist. So use these as base for them if you want.
- Repos are updated every 30-minutes.
- If you would like to add language files please submit a pullrequest or issue. 

How to use:
===========
1. git clone https://github.com/Koodimonni/koodimonni.github.io /to/your/htdocs
2. cd /to/your/htdocs && composer install
2. Set cronjob (crontab -e)
3. */30 * * * * cd /home/onni/languages.koodimonni.fi/ && /usr/bin/php bin/wp-org-api && /usr/bin/php bin/satis build satis.json . && git commit -am "Updated languages at: `date +\"\%T \%m-\%d-\%y\"`" && git add --all && git push origin master

License
-------

Satis is produced by composer and is licensed under the MIT License - see the LICENSE file for details
wp-org-api by Koodimonni is licensed under MIT License