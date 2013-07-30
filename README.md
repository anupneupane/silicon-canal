## Silicon Canal

[![Build Status](https://travis-ci.org/iHiD/silicon-canal.png)](https://travis-ci.org/iHiD/silicon-canal)
[![Dependencies](https://gemnasium.com/iHiD/silicon-canal.png?travis)](https://gemnasium.com/iHiD/silicon-canal)
[![Code Climate](https://codeclimate.com/github/iHiD/silicon-canal.png)](https://codeclimate.com/github/iHiD/silicon-canal)
[![Coverage Status](https://coveralls.io/repos/iHiD/silicon-canal/badge.png)](https://coveralls.io/r/iHiD/silicon-canal)

The source code to the Silicon Canal site.

This code requires Ruby 2.

### Running It Locally

```
git clone git@github.com:iHiD/silicon-canal.git
cd silicon-canal
bundle
bundle exec rake db:migrate db:seed
bundle exec rails s
open localhost:3000
```

### Running The Tests

The tests are written in rspec. Download and bundle (as above), and then run:
```
bundle exec rake db:migrate RAILS_ENV=test
bundle exec rspec spec
```

### Licence

Copyright 2013 Jeremy Walker. Free to use under the MIT-LICENSE.
