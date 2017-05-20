commit 06c1dc793dd193fdcc0848e074812429b3cf2e51
Merge: b212bec 25d3cae
Author: Nancy Richardson <nancytechy>
Date:   Sat May 20 22:08:49 2017 +0100

    Merge pull request #1 from technancy/continued

    Continued 4 years later.

commit 25d3caeaf6a9c2bc77c9aad49253df8cadb6e3e9
Author: Nancy <nancy.richardson>
Date:   Mon Oct 21 10:15:17 2013 +0100

    Books counted for overall total contained in library.

commit a8ce07db4c811a8e71405d4463ec5d556f8b2424
Author: Nancy <nancy.richardson>
Date:   Fri Oct 18 13:48:11 2013 +0100

    Add book bug fixed - mongodb does not return a value

commit 21bda048a59429cd6895b4dece136eff014cd545
Author: Nancy <nancy.richardson>
Date:   Thu Oct 17 15:54:45 2013 +0100

    Mongodb added for persistant storage
    Next task: create two databases, one for testing and one for production

commit 22e690c66d0822013d662cc8e149817cacbb1645
Author: Joshua Sassel <jdks>
Date:   Thu Oct 17 14:23:11 2013 +0100

    Pair changes

commit 1d251aeb4a0d1444c1427abae4c6751183aa0b1d
Author: Nancy <nancy.richardson>
Date:   Thu Oct 17 12:58:51 2013 +0100

    Books can be added, and a taylored message is shown.
    A json file has been started, for future storage experimentation.

commit 3292aa39b14677a9f65272002d43409dac9fe68c
Author: Joshua Sassel <jdks>
Date:   Wed Oct 16 16:04:31 2013 +0100

    Fix search button to match cuke expectations

commit c674cd3dca4db6b065afe0bd3de86a634646cbf9
Author: Joshua Sassel <jdks>
Date:   Wed Oct 16 15:34:53 2013 +0100

    Modify application setup using Sinatra::Base

    Previously, the application was defined at the top-level.  It is now
    defined in a separate class using Sinatra::Base.  The appropriate
    environment setup has been added for Cucumber.

commit 0be9bd5a8a7fa413b17a462084cada88ffbd3145
Author: Joshua Sassel <jdks>
Date:   Wed Oct 16 14:13:51 2013 +0100

    Remove dead file

commit 53efe2d181a0d84c87b6acb1a4fa4f1e9d718b94
Author: Joshua Sassel <jdks>
Date:   Wed Oct 16 11:25:48 2013 +0100

    Use ERB templates

commit 1ac06bb39f24d88e0621f74edd65d4e2dd002981
Author: Joshua Sassel <jdks>
Date:   Tue Oct 15 23:21:22 2013 +0100

    Whitespace

commit 0d264e9ed0adb632f1bb6cb95639c1b7ab2ccbf9
Author: Joshua Sassel <jdks>
Date:   Tue Oct 15 23:19:50 2013 +0100

    Remove dead code

commit 1013a4b88ebee869abbd345d656f869cab09e9f3
Author: Joshua Sassel <jdks>
Date:   Tue Oct 15 17:45:37 2013 +0100

    Set ruby version

commit ccdf1488d716ad9e0da4e6cbf11dd733a67d569f
Merge: b61059d 0ec530c
Author: Joshua Sassel <jdks>
Date:   Tue Oct 15 17:40:48 2013 +0100

    Merge branch 'otb-academy'

    Conflicts:
            features/support/ui_driver.rb

commit 0ec530cc25b79a9ccfbc08de8a8dc46012a3a8ae
Author: Nancy <nancy.richardson>
Date:   Tue Oct 15 15:47:13 2013 +0100

    ignore

commit 4be54568132203428d1daf2ee35e52916360b5f3
Author: Nancy <nancy.richardson>
Date:   Tue Oct 15 15:46:12 2013 +0100

    Displayed book results, all tests pass

commit 3cc01a2c2a6be408ef0bbc6bd42f185d7241d5df
Author: Nancy <nancy.richardson>
Date:   Tue Oct 15 14:49:32 2013 +0100

    Setup Sinatra app with basic search form

commit 8fb17bcf3045ad3bb3d091e20e1a25511ff03c78
Author: Steve Tooke <steve>
Date:   Tue Oct 15 10:51:21 2013 +0100

    Add a Gemfile

commit 90b067d5c97f78e1a6eb20cd4a3ee31ce2bca4f0
Author: Steve Tooke <steve>
Date:   Tue Oct 15 10:50:59 2013 +0100

    Add a Rakefile

commit b61059d865dec996cbdc9d75ba4dad0fcba54b43
Merge: e8b3d11 d09d555
Author: Chris Wilson <chris.wilson>
Date:   Mon Oct 14 12:05:06 2013 +0100

    Merge branch 'team-solution' into carls_master

commit b212becb24a6d4f138f8ccc5c54d72fb6d6e6f4d
Author: Rob Gough <robert.gough>
Date:   Mon Oct 14 11:35:57 2013 +0100

    using the correct driver

commit 9b763ebf67936b44dc6f44e5e7acc79d6764bba1
Merge: 297aa7f e8b3d11
Author: Rob Gough <robert.gough>
Date:   Mon Oct 14 11:32:00 2013 +0100

    Merge branch 'master' into new-scenarios

    Conflicts:
            features/step_definitions/steps.rb

commit 297aa7f6da81aecfa78fc00e8dadb751a475a5f4
Author: Rob Gough <robert.gough>
Date:   Mon Oct 14 10:57:31 2013 +0100

    added new scenarios for finding books

commit 641c6bb65aac24cb4ac451c2d762135b17aab948
Author: Rob Gough <robert.gough>
Date:   Mon Oct 14 10:26:07 2013 +0100

    little bit of tidy up, no major changes

commit e8b3d11760b6e1a564c965be5b6898de856dd927
Merge: d650bcd dd8b1c7
Author: carljohnstone <fade>
Date:   Mon Oct 14 02:23:51 2013 -0700

    Merge pull request #1 from zloncar/feature/no-such-book

    Feature/no such book

commit 6b042f92b54020d747b22399cc5b0d700940dc58
Author: Nancy <nancy.richardson>
Date:   Tue Oct 1 16:20:51 2013 +0100

    partial match test

commit dd8b1c719ccc7a5c0e0f5731fb07380cc070fe85
Author: Carl Johnstone <carl.johnstone>
Date:   Tue Oct 1 16:09:50 2013 +0100

    refactor search

    to be containing word rather than exact match

commit a341b45a21929d464963e87148640cc4bf561650
Author: Carl Johnstone <carl.johnstone>
Date:   Tue Oct 1 15:55:31 2013 +0100

    Searching for a single book amongst many

commit 32936559a0278a8d38c1f5958f8afdbffb729d7f
Author: Carl Johnstone <carl.johnstone>
Date:   Tue Oct 1 15:51:19 2013 +0100

    add test to search for the only book on the shelf

commit eb608cda1c0a7678e4c138638cc1ca9dfcf388c3
Author: Nancy <nancy.richardson>
Date:   Tue Oct 1 15:50:04 2013 +0100

    empty string, whitespace string, and nil tests

commit d09d55568da85db926a9c1d3a29d2c7d175ca2a4
Author: Chris Wilson <chris.wilson>
Date:   Tue Oct 1 15:49:13 2013 +0100

    Remove duplicate Library class

commit 5018bb0a372c5ea546fccabf9c1503388c7e5659
Author: Chris Wilson <chris.wilson>
Date:   Tue Oct 1 15:42:12 2013 +0100

    Change the Bookshelf c'tor to take an array

    Two classes doing the same thing but with different names have been
    created performing identical roles. As part of the process of merging
    them, the constructor of one has been modified to match the constructor
    of the other, making the eventual merge easier.

commit 958b785a84218a3847e51dd7a0f521a141124d28
Author: Chris Wilson <chris.wilson>
Date:   Tue Oct 1 15:40:07 2013 +0100

    Merch duplicate step definition files

    Two sets of step definitions had been created by teams working on the
    same feature separate from each other. This commit merges the duplicate
    files and deletes the spare.

commit d650bcd0dfe635941cc346a0167b1c3eafcf2b9b
Merge: 5901ba4 a899da8
Author: Carl Johnstone <carl.johnstone>
Date:   Tue Oct 1 15:36:13 2013 +0100

    Merge branch 'master' into feature/no-such-book

    Conflicts:
            features/support/test_driver.rb

commit 16a9cac26c8b7e20ff93c8361304a67bb01411fe
Merge: 928c03f af4511a
Author: Chris Wilson <chris.wilson>
Date:   Tue Oct 1 15:26:50 2013 +0100

    Merge branch 'search/no_results' into team-solution

    Conflicts:
            features/search.feature
            features/support/ui_driver.rb

commit 5901ba42509163637222df7c8de4afb6746f88a3
Author: Carl Johnstone <carl.johnstone>
Date:   Tue Oct 1 15:17:30 2013 +0100

    merge the world!

commit af4511a870f3b29b830c7e190137fba1092ca08e
Author: Chris Wilson <chris.wilson>
Date:   Tue Oct 1 15:11:04 2013 +0100

    Add an instance variable for Library collection

    Replace the Library#collection method, with it's hard-coded library used
    for testing, with an instance variable. The hard-coded library test
      collection is moved into the UIDriver.

commit 27f8e1b5eee1bab9e560ed5ffa1c87d5cc19babc
Merge: 8d1280c c3b5b71
Author: Carl Johnstone <carl.johnstone>
Date:   Tue Oct 1 15:07:57 2013 +0100

    Merge remote branch 'origin/master' into feature/no-such-book

    Conflicts:
            features/step_definitions/steps.rb

commit a899da8ea58696df16a05799d596fb69523aea05
Author: Zeljko Loncar <zeljko.loncar>
Date:   Tue Oct 1 15:07:15 2013 +0100

    Don't need book_count method on bookshelf.

commit 6409a1c02ea489f87ba3c16c2c75f7032162f858
Author: Nancy <nancy.richardson>
Date:   Tue Oct 1 15:05:31 2013 +0100

    first rspec test

commit 46942587a74e4f68a4aaa8acea334807223a3bf3
Author: Chris Wilson <chris.wilson>
Date:   Tue Oct 1 15:04:45 2013 +0100

    Add UIDriver modules

    Extract explicit calls to Library to a driver module to separate it from
    the step definitions.

commit dd95d190b510d9914e4d01b8485fedac598b124a
Author: Nancy <nancy.richardson>
Date:   Tue Oct 1 14:56:51 2013 +0100

    initial rspec setup

commit 8d1280cc55e114092f7084de15ee086d24895356
Author: Michael Preston <michael.preston>
Date:   Tue Oct 1 14:51:14 2013 +0100

    FInished find book implementation

commit c3b5b71a64bd2a6cb0702adcc49be84bfaffbb92
Author: Zeljko Loncar <zeljko.loncar>
Date:   Tue Oct 1 14:48:56 2013 +0100

    tidy

commit 928c03f6abcda66901a0b529845fd97fd81131a6
Author: Joshua Sassel <jdks>
Date:   Tue Oct 1 14:48:46 2013 +0100

    Add bookshelf and results libraries

commit 777874555b35b831efbcdf64ecb593c63a2253f0
Author: Nancy <nancy.richardson>
Date:   Tue Oct 1 14:46:42 2013 +0100

    World UIDriver requires library class

commit dd17dd323f50d73b1e0f59687b223267c9a2a8ea
Author: Zeljko Loncar <zeljko.loncar>
Date:   Tue Oct 1 14:45:53 2013 +0100

    test_driver module, 1st

commit 86fbf62149ae526566f4e70c64dc2d540c9b8467
Author: Zeljko Loncar <zeljko.loncar>
Date:   Tue Oct 1 14:45:09 2013 +0100

    Move stuff into test_driver.rb

commit 652868674c32727b27d0d2a8314395d604accf36
Author: Zeljko Loncar <zeljko.loncar>
Date:   Tue Oct 1 14:37:10 2013 +0100

    Methods extracted from step definitions.

commit b536058fedba124f766784b4aadde99ea8342081
Author: Chris Wilson <chris.wilson>
Date:   Tue Oct 1 14:35:07 2013 +0100

    Move Library into it's own file

commit 99af79e71483c4da4fe43804a8752830f29b10c1
Author: Chris Wilson <chris.wilson>
Date:   Tue Oct 1 14:27:29 2013 +0100

    Extract Library class

commit e1b2404b094cfe542e9e28741626bd275f73237e
Author: Nancy <nancy.richardson>
Date:   Tue Oct 1 14:20:37 2013 +0100

    tests made more flexible with regex

commit d411d1dd66dddf2e1b82c48136bf00cb5e2d789e
Author: Chris Wilson <chris.wilson>
Date:   Tue Oct 1 14:19:57 2013 +0100

    Add test for zero search results

    Returns an empty array from the search method when no items match the
    given search criteria

commit 26ca3884f6eb322ecd7ded80e4eced1462f00626
Author: Nancy <nancy.richardson>
Date:   Tue Oct 1 14:09:34 2013 +0100

    implemented the steps all to pass

commit ec0a8ae60dfafd4b602fb0a310931f14bead49c6
Author: Zeljko Loncar <zeljko.loncar>
Date:   Tue Oct 1 13:57:14 2013 +0100

    Steps added.

commit ffc39fc2e736739e15ea5c04620cca9167780475
Author: Joshua Sassel <jdks>
Date:   Tue Oct 1 13:39:07 2013 +0100

    Add search feature

commit 78a61f7ddddfab1a8b24105cfeca0f1d4626a354
Author: Zeljko Loncar <zeljko.loncar>
Date:   Tue Oct 1 12:32:24 2013 +0100

    First two scenarios for no books found.

commit 0a8205be7e13e09cb91aa2633a050acfcbc27d5a
Author: Nancy <nancy.richardson>
Date:   Tue Oct 1 12:08:52 2013 +0100

    feature started

commit 21eb35cb2c98dfbf3f898d32eb20c4214ff93091
Author: Steve Tooke <steve>
Date:   Mon Sep 30 06:55:02 2013 +0100

    Add readme.