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
* All CSS and JS elements used have [Subresource Integrity](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity) hashes
* Support for many language specific word lists

It may just be the closest thing to rolling your own dice. You can do that too
of course, and just use this addon as a quick way to lookup your passphrase
in the word lists.

## Using It

Just open the plugin by clicking on its icon.
If you choose a new language or click the green button, a new 6 words passphrase will be generated.
Each generation rolls a set of five virtual dice for **each** word. Words are
chosen from the included Diceware word lists.

By default, a 6 words passphrase is generated. This is about ~77.55 bits of entropy
(~12.92 bits/word, ~10 bits/letter, and ~5.16 bits/symbol).
For a professional adversary can guess passwords at the rate of a 1,000,000,000,000 keys/second,
an exhaustive brute-force search on 50% of the total keyspace might take ~30,704,711
hours or ~1,279,363 days or ~3,505 years.

Depending on your security requirements, you may want to add a word or a symbol to the generated passphrase.

## Security

If you are security conscious you are of course encouraged to download
the [source code](https://github.com/gromain/Diceware-Passphrase-Generator) for
this addon and check the code yourself. The main part is located [here](https://github.com/gromain/Diceware-Passphrase-Generator/blob/master/index.js#L35).

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

### Packaging for testing or release

This addon uses a Makefile to produce the artefact for testing the addon or releasing it.

`make zip` creates the artefact for testing or releasing the addon.
To test it, simply go to `about:debugging` in your browser, chose the tab "This Firefox" and load the generated zip file.

`make clean` removes the artefact and `make update` updates the created zip file with your changes.

### Contributing

Bug reports and pull requests are welcome on GitHub
at [https://github.com/gromain/Diceware-Passphrase-Generator](https://github.com/gromain/Diceware-Passphrase-Generator). This
project is intended to be a safe, welcoming space for collaboration, and contributors
are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

### TODO
 -[ ] Addition of a landing and setting page that allows to chose the default language list used

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
