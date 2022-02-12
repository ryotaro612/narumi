(require 'ert)
(require 'narumi-mode)

(ert-deftest narumi-mode-update-image-scale-no-scale-test ()
  (let ((res
	 (narumi--update-image-scale
	  '(image :type png :file "~/116c816f95ab782fbe611ebb640.png") 0.2)))
    (should (equal '(image :type png :file "~/116c816f95ab782fbe611ebb640.png" :scale 0.2)
		   res))))

(ert-deftest narumi-mode-update-image-scale-exist-scale-test ()
  (let ((res
	 (narumi--update-image-scale
	  '(image :type png :file "~/116c816f95ab782fbe611ebb640.png" :scale 1) 0.2)))
    (should (equal '(image :type png :file "~/116c816f95ab782fbe611ebb640.png" :scale 0.2)
		   res))))
;;; narumi-mode.el ends here
