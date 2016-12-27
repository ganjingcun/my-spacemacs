;;; packages.el --- ganjingcun layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Linus <linus@bb8.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `ganjingcun-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `ganjingcun/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `ganjingcun/pre-init-PACKAGE' and/or
;;   `ganjingcun/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst ganjingcun-packages
  '(youdao-dictionary
    company
    php-mode
    scala-mode
    web-mode
    js2-mode
    )
  )

(defun ganjingcun/init-youdao-dictionary()
  (use-package youdao-dictionary
    :defer t
    :init
    (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
    )
  )

(defun ganjingcun/post-init-company()
  (setq company-minimum-prefix-length 1))

(defun ganjingcun/init-php-mode()
  (use-package php-mode
    :defer t
    :init
    )
  )

(defun ganjingcun/init-scala-mode()
  (use-package scala-mode
    :defer t
    :init
    )
  )

(defun ganjingcun/init-web-mode()
  (use-package web-mode
    :defer t
    :init
    )
  )

(defun ganjingcun/init-js2-mode()
  (use-package js2-mode
    :defer t
    :init
    )
  )

