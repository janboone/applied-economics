;; Set the package installation directory so that packages aren't stored in the
;; ~/.emacs.d/elpa path.
(require 'package)
(setq package-user-dir (expand-file-name "./.packages"))
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; Initialize the package system
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Install dependencies
(package-install 'htmlize)

(require 'org)
(require 'org-element)
(require 'ox-publish)


(setq org-export-with-broken-links t)

(defvar yt-iframe-format
  ;; You may want to change your width and height.
  (concat "<iframe width=\"660\""
          " height=\"503\""
          " src=\"https://www.youtube.com/embed/%s\""
          " frameborder=\"0\""
          " allowfullscreen>%s</iframe>"))

;; although org-add-link-type is depreciated; org-link-set-parameters does not work at 11-11-2021

(org-add-link-type
 "yt"
 (lambda (handle)
   (browse-url
    (concat "https://www.youtube.com/embed/"
            handle)))
 (lambda (path desc backend)
   (cl-case backend
     (html (format yt-iframe-format
                   path (or desc "")))
     (latex (format "\href{%s}{%s}"
                    path (or desc "video"))))))





;; (defcustom org-yt-url-protocol "yt"
;;   "Protocol identifier for youtube links."
;;   :group 'org-yt
;;   :type 'string)

;; (defun org-yt-follow (video-id)
;;   "Open youtube with VIDEO-ID."
;;   (browse-url (concat "https://youtu.be/" video-id)))

;; (org-link-set-parameters org-yt-url-protocol :follow #'org-yt-follow)

;; (org-link-set-parameters "yt" :follow 'yt-iframe-format)


;; (defvar yt-iframe-format
;;   ;; You may want to change your width and height.
;;   (concat "<iframe width=\"660\""
;;           " height=\"503\""
;;           " src=\"https://www.youtube.com/embed/%s\""
;;           " frameborder=\"0\""
;;           " allowfullscreen>%s</iframe>"))


;; (org-link-set-parameters
;;   "yt"
;;   (lambda (handle)
;;     (browse-url
;;      (concat "https://www.youtube.com/embed/"
;;              handle)))
;;   (lambda (path desc backend)
;;     (cl-case backend
;;       (html (format yt-iframe-format
;;                     path (or desc "")))
;;       (latex (format "\href{%s}{%s}"
;;                      path (or desc "video"))))))

(setq org-html-validation-link nil
        org-html-head-include-scripts nil       ;; Use our own scripts
        org-html-head-include-default-style nil) ;; Use our own styles

(defun filter-local-links (link backend info)
    "Filter that converts all the /index.html links to /"
    (if (org-export-derived-backend-p backend 'html)
        (replace-regexp-in-string "/index.html" "/" link)))

(setq org-publish-project-alist
        '(;; Publish the posts
          ("aeadata"
           :base-directory "./org-files"
           :base-extension "org"
           :publishing-directory "./"
           :recursive t
           :publishing-function org-html-publish-to-html
           :headline-levels 4
           :section-numbers nil
           :with-toc nil
           ;; :html-head nil
           ;; :html-head-include-default-style nil
           ;; :html-head-include-scripts nil
           )

          ;; For static files that should remain untouched
          ("aeadata_img"
           :base-directory "./org-files"
           :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|eot\\|svg\\|woff\\|woff2\\|ttf\\|html"
           :publishing-directory "./"
           :recursive t
           :publishing-function org-publish-attachment
           )

          ;; Combine the two previous components in a single one
          ("aea" :components ("aeadata" "aeadata_img"))
))



;; Generate the site output
(org-publish-all t)

(message "Build complete!!!")
