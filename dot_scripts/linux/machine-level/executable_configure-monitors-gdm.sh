cat > /var/lib/gdm/.config/monitors.xml <<- EOF
<monitors version="2">
  <configuration>
    <logicalmonitor>
      <x>0</x>
      <y>0</y>
      <scale>1</scale>
      <primary>yes</primary>
      <monitor>
        <monitorspec>
          <connector>HDMI-0</connector>
          <vendor>GSM</vendor>
          <product>LG ULTRAWIDE</product>
          <serial>0x01010101</serial>
        </monitorspec>
        <mode>
          <width>2560</width>
          <height>1080</height>
          <rate>59.978424072265625</rate>
        </mode>
      </monitor>
    </logicalmonitor>
    <logicalmonitor>
      <x>2560</x>
      <y>0</y>
      <scale>1</scale>
      <monitor>
        <monitorspec>
          <connector>HDMI-1-2</connector>
          <vendor>GSM</vendor>
          <product>23MP55</product>
          <serial>0x01010101</serial>
        </monitorspec>
        <mode>
          <width>1920</width>
          <height>1080</height>
          <rate>60</rate>
        </mode>
      </monitor>
    </logicalmonitor>
  </configuration>
</monitors>
EOF

/etc/gdm/custom.conf