#!/bin/bash

. "`dirname $0`/spec.sh"

exists_command wine
exists_command winetricks

package_installed winehq-stable
package_installed cabextract
