#!/bin/bash

. $INSTALL_ROOT_DIR/spec/$INSTALL_OS/spec.sh

exists_command wine
exists_command winetricks

package_installed winehq-stable
package_installed cabextract
