/etc/default/locale:
  file.managed:
    - source: salt://locale/locale
    - user: root
    - mode: 644
