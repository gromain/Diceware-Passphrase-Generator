# Diceware Passphrase Firefox Addon Generator

A [Diceware](http://world.std.com/~reinhold/diceware.html) passphrase generator,
implemented in JavaScript, accessible directly from your browser.
This uses the
[Cryptographically Secure Pseudo Random Number Generator](https://en.wikipedia.org/wiki/Cryptographically_secure_pseudorandom_number_generator)
(CSPRNG) in your browser as its source of entropy instead of rolling physical dice.

## Important Features

* All random number generation is done in your browser using [window.crypto.getRandomValues()](https://developer.mozilla.org/en-US/docs/Web/API/RandomSource/getRandomValues)
* Single page JavaScript application with no communication back to a server
* Git tags and commits are [signed with my public code signing key](https://keybase.io/gromain)
* Can be run without a network connection. No logging or analytics
* All assets are served locally from the addon folder
* NOT ACTIVATED YET All [CSS/JS](https://sritest.io/#report/e0d1efa0-cc91-46d9-9450-8669cfe3bfe2) have [Subresource Integrity](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity) hashes
* Support for many language specific word lists

It may just be the closest thing to rolling your own dice. You can do that too
of course, and just use this app as a quick way to lookup your passphrase
in the word lists.

## Using It

Just choose a language and click a button corresponding to the number of
words you want to generate. You'll get a new passphrase with each click.
Each generation rolls a set of five virtual dice for **each** word. Words are
chosen from the included Diceware word lists. The die roll numbers are shown
next to each word.

## Security

If you are security conscious you are of course encouraged to download
the [source code](https://github.com/gromain/Diceware-Passphrase-Generator) for
this addon and check the code yourself.

### Tin Foil Hat Version
If you want to be *REALLY REALLY* secure. Roll the dice with a flashlight under
a black hood with a printout of the Diceware word list available [here](http://world.std.com/~reinhold/diceware.html). No computers needed!

*Not really kidding*

### Installation Security : Signed Git Commits

Most, if not all, of the commits and tags in the repository for this code are
signed with my PGP/GPG code signing key. I have uploaded my code signing public
keys to GitHub and you can now verify those signatures with the GitHub UI.
See [this list of commits](https://github.com/gromain/Diceware-Passphrase-Generator/commits/master)
and look for the `Verified` tag next to each commit. You can click on that tag
for additional information.

You can also clone the repository and verify the signatures locally using your
own GnuPG installation. You can find my certificates and read about how to conduct
this verification at [https://keybase.io/gromain](https://keybase.io/gromain).

### Contributing

Bug reports and pull requests are welcome on GitHub
at [https://github.com/gromain/Diceware-Passphrase-Generator](https://github.com/gromain/Diceware-Passphrase-Generator). This
project is intended to be a safe, welcoming space for collaboration, and contributors
are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Legal

### Copyright

(c) 2020 Romain Bazile <[romain@bazile.io](mailto:romain@bazile.io)> ([https://romain.bazile.io/](https://romain.bazile.io/))

### License

This addon is available as open source under the terms of
the [MIT License](http://opensource.org/licenses/MIT).

### Warranty

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
either express or implied. See the LICENSE.txt file for the
specific language governing permissions and limitations under
the License.

## Thanks

This implementation was inspired by the very nicely done [https://github.com/yesiamben/diceware](https://github.com/yesiamben/diceware).
I took the opportunity to upgrade some security aspects and the UI.

This addon is very largely based on the work of Glenn Rempe, available at [https://github.com/grempe/diceware](https://github.com/grempe/diceware). Many thanks for the provided source code.
