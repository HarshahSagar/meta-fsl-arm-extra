FILESEXTRAPATHS_prepend := "${THISDIR}:"

SRC_URI_append = " \
	file://interfaces-eth0-static \
"

# Replace previously installed interfaces file with the one that sets eth0 to static IP
do_install_append () {
	rm ${D}${sysconfdir}/network/interfaces
        install -m 0644 ${WORKDIR}/interfaces-eth0-static ${D}${sysconfdir}/network/interfaces
}
