# worms
## retriving Aphia information from World Register of Marine Species (www.marinespecies.org) using [WoRMS´](http://www.marinespecies.org) RESTful Webservice


This repository provides methods to scrape taxonomic information from 
WoRMS. 
Use it to check taxonimic information against the WoRMS repository.
Add the respective \emph{valid} taxons to your taxonimic dataset and for each taxon amend the Aphia ID of the currently  \emph{accepted} taxon, which is not neccessarily identical to the \emph{valid Aphia id}


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



----

### License

This code is licensed to you under the terms of the [GNU AFFERO GENERAL PUBLIC LICENSE](http://choosealicense.com/licenses/agpl-3.0/) version 3.0 or higher.
