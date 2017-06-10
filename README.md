# worms
## retriving Aphia information from World Register of Marine Species (www.marinespecies.org) using [WoRMS´](http://www.marinespecies.org) RESTful Webservice
Build a consistent and WoRMS complient taxonomic dataset.
Add the respective valid taxa to your taxonimic dataset. 
For your taxa, add the respective valid taxa to your taxonimic dataset. For your taxa, get the Aphia ID of the currently  **accepted** taxon, which is not neccessarily identical to the valid Aphia id provided by WoRMS (AFAIunderstood in case of deleted or resurrected taxa).


----

## Installation

Just issue
```
devtools::install_github("janhoo/worms")
```
You may need to (`install.packages("devtools")`) first.

Done.

## Usage
issue `library(worms)`,  <br />
use the package documentation, e.g.,  <br />
type `?worms` and check the index to read function  <br />

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## Contact
* submit suggestions and bug-reports at: https://github.com/janhoo/worms/issues
* send a pull request on: https://github.com/janhoo/worms/
* compose a friendly e-mail to:jm.smith[at]gmx(dot)net

----

### License

This code is licensed to you under the terms of the [GNU AFFERO GENERAL PUBLIC LICENSE](http://choosealicense.com/licenses/agpl-3.0/) version 3.0 or higher.
