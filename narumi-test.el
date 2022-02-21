;;; narumi-test.el --- A dashboard that displays a ramdom sampled image -*- lexical-binding: t -*-

;; Copyright (C) 2022 Nakamura, Ryotaro <nakamura.ryotaro.kzs@gmail.com>
;; Version: 1.0.0
;; Package-Requires: ((emacs "26.1"))
;; URL: https://github.com/nryotaro/narumi
;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
;; 02110-1301, USA.

;;; Commentary:

;; Tests of narumi.

;;; Code:

(require 'ert)
(require 'narumi)

(ert-deftest narumi-test-update-image-scale-no-scale-test ()
  (let ((res
	 (narumi--update-image-scale
	  '(image :type png :file "~/116c816f95ab782fbe611ebb640.png") 0.2)))
    (should (equal '(image :type png :file "~/116c816f95ab782fbe611ebb640.png" :scale 0.2)
		   res))))

(ert-deftest narumi-test-update-image-scale-exist-scale-test ()
  (let ((res
	 (narumi--update-image-scale
	  '(image :type png :file "~/116c816f95ab782fbe611ebb640.png" :scale 1) 0.2)))
    (should (equal '(image :type png :file "~/116c816f95ab782fbe611ebb640.png" :scale 0.2)
		   res))))

(provide 'narumi-test)
;;; narumi-test.el ends here
