################################################################################
#
# dspprofiles
#
################################################################################

DSP_PROFILE_VERSION=10
define DSPPROFILES_INSTALL_TARGET_CMDS
     -mkdir -p $(TARGET_DIR)/opt/beocreate/beo-dsp-programs
     -mkdir -p $(TARGET_DIR)/opt/hifiberry/contrib

     $(INSTALL) -D -m 0644 $(BR2_EXTERNAL_HIFIBERRY_PATH)/package/dspprofiles/dspdac-96-11.xml \
		$(TARGET_DIR)/opt/beocreate/beo-dsp-programs/dacdsp-96-11.xml
     $(INSTALL) -D -m 0644 $(BR2_EXTERNAL_HIFIBERRY_PATH)/package/dspprofiles/dspdac-10.xml \
                $(TARGET_DIR)/opt/beocreate/beo-dsp-programs/dacdsp-10.xml
     $(INSTALL) -D -m 0644 $(BR2_EXTERNAL_HIFIBERRY_PATH)/package/dspprofiles/dsp-addon-96-11.xml \
		$(TARGET_DIR)/opt/beocreate/beo-dsp-programs/dsp-addon-96-11.xml

     # Temporary script to set I2S for DSP module
     $(INSTALL) -D -m 0755 $(BR2_EXTERNAL_HIFIBERRY_PATH)/package/dspprofiles/dsp-i2s-slave \
		$(TARGET_DIR)/opt/hifiberry/contrib/dsp-i2s-slave
endef

$(eval $(generic-package))
