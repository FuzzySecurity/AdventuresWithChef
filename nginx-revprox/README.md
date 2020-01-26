# nginx-revprox

My first Chef recipe. Set up Nginx and perform some config.

  * Install Nginx
  * Create default index.html
  * Use Ohai to add OS info to the index template
  * Modify Nginx config to proxy_pass /redirect/ to FuzzySec

```
b33f@DESKTOP-GALB1P7:~/Chef$ chef-run ssh://b33f@XXXXXXX:22 --password='XXXX' --sudo --sudo-password='XXXX' nginx-revprox
[✔] Packaging cookbook... done!
[✔] Generating local policyfile... exporting... done!
[✔] Applying nginx-revprox::default from /mnt/c/Users/b33f/Tools/Chef/nginx-revprox to target.
└── [✔] [192.168.18.133] Successfully converged nginx-revprox::default.
```