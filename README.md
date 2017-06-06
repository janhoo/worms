# worms
## retriving Aphia information from World Register of Marine Species (www.marinespecies.org)


This repository provides methods to scrape taxonomic information from 
[WoRMS](http://www.marinespecies.org)

----

## Installation

Just issue
```
devtools::install_github("janhoo/worms")
```
You may need to (`install.packages("devtools")`) first.

This package depends on `plyr` and `httr` which should be installed automatically.

However, you may need to install these packages first if automatism fails.

Done.

## Usage
issue `library(worms)`,

use the package documentation, e.g., 

type `?wormsbynames` to read how to use it

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D



----

### License

This code is licensed to you under the terms of the [GNU AFFERO GENERAL PUBLIC LICENSE](http://choosealicense.com/licenses/agpl-3.0/) version 3.0 or higher.
