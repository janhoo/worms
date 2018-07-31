# worms
## Retriving Aphia Information from World Register of Marine Species (www.marinespecies.org) using [WoRMS´](http://www.marinespecies.org) RESTful Webservice
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
* compose a friendly e-mail to:janmholstein[at]gmail(dot)com

----

### License

This code is licensed to you under the terms of the [GNU AFFERO GENERAL PUBLIC LICENSE](http://choosealicense.com/licenses/agpl-3.0/) version 3.0 or higher.

----

#### Version History
**1.0.0** major update of *wormsbynames* breaks backwards compatibility + minor bugfixes
* different arguments and defaults for *wormsbynames*
* *wormsbymatchnames* is deprecated. Functionality is in *wormsbynames* now
* *wormsbynames* alway outputs a dataframe of input vector length, even if not a single hit.

**0.2.2** error fixes
* fixed an error in examples where wormsbynames() would terminate due to changes in dependencies.
* changed default. Now wormsaccepted(..., once = FALSE, ...) which is the supposed usecase.


**0.2.1** better documentation, verbose behavior

* WoRMS copyright information and proper citation
* removed 7 non-ASCII containing entries from data(northseamacrozoobenthos)
* some code hardening

**0.2.0** implements new methods and data

* search by id (wormsbyid)
* fuzzy matching (wormsbymatchnames)
* based on dataset, add taxa to represent every taxon with the respective accepted taxa (if possible)
* add reference to the current accepted species (must not be valid AphiaID)
* wormsbynames now can do fuzzy maching as well 
* fixes issue where deleted or resurrected entries are preferred
* fixes issue where a single non-empty result returned will break the code
 
*Todo / Known Bugs*

* proper error handling
* wormsconsolidate does not properly communicates only partial successful operations
* wormsbynames: better rules for deciding which entry to take
* a basic function or switch in wormsbynames() that retrieves all entries for a given name

**0.1.0** retrieves WoRMS Aphia information and turns them into a data.frame

---

#### Versioning Semantics
Releases will be numbered with the following semantic versioning format:
major.minor.patch

And constructed with the following guidelines:

* Breaking backward compatibility bumps the major (resets minor and patch)
* New additions without breaking backward compatibility bumps the minor (resets patch)
* Bug fixes and misc changes bumps the patch





