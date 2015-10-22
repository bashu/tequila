include:
  - postgres.dev
  - memcached.libmemcached

{% set version = salt['pillar.get']('python:version', '2') %}

python:
  pkg:
    - installed
    - names:
      - python{{ version }}
      - python{{ version }}-dev

libraries:
  pkg:
    - installed
    - names:
      - libjpeg-dev
      - libtiff-dev 
      - zlib1g-dev
      - libfreetype6-dev
      - liblcms2-dev
      - libwebp-dev
      - libncurses-dev
      - libxslt-dev

virtualenv:
  pkg:
    - installed
    - names:
      - python-virtualenv
