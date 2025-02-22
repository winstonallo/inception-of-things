    1  ssh-keygen
    2  cat .ssh/id_rsa.pub
    3  gcl github.com:winstonallo/dotfiles.git
    4  gcl git@github.com:winstonallo/dotfiles.git
    5  rm -rf .zshrc
    6  ln -s .zshrc dotfiles/.zshrc
    7  ln -s dotfiles/.zshrc .zshrc
    8  ln -s dotfiles .config
    9  ls
   10  l
   11  source .zshrc
   12  nvim .zshrc
   13  vim .zshrc
   14  vi .zshrc
   15  echo PATH="$PATH:/opt/nvim-linux64/bin" >> .zshrc
   16  source .zshrc
   17  nvim .
   18  ls
   19  l
   20  cd .config
   21  ls
   22  cd ..
   23  rm -rf .config/dotfiles
   24  ln -s dotfiles/nvim .config/nvim
   25  nvim .
   26  cd .config
   27  ls
   28  cd nvim
   29  l
   30  cd ..
   31  ls
   32  rm -rf .config/nvim
   33  ln -s /home/winstonallo/dotfiles/nvim .config/nvim
   34  nvim .
   35  gcl git@github.com:winstonallo/inception-of-things.git
   36  sudo apt install curl wget gnupg2 lsb-release -y
   37  curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc\|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/vbox.gpg
   38  ls
   39  curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc\|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/vbox.gpg
   40  wget https://download.virtualbox.org/virtualbox/7.1.4/virtualbox-7.1_7.1.4-165100\~Debian\~bookworm_amd64.deb
   41  cd inception-of-things
   42  ls
   43  cd p1
   44  vagrant up
   45  wget https://download.virtualbox.org/virtualbox/7.0.18/virtualbox-7.0_7.0.18-162988\~Debian\~bookworm_amd64.deb
   46  ls
   47  sudo apt install ./virtualbox-7.0_7.0.18-162988~Debian~bookworm_amd64.deb
   48  apt list virtualbox-7.0
   49  vagrant up
   50  nvim .
   51  vagrant up
   52  cd P
   53  cd inception-of-things
   54  ls
   55  nvim .
   56  cd p1
   57  rm -rf .vagrant
   58  vagrant up
   59  nvim .
   60  rm virtualbox-7.0_7.0.18-162988\~Debian\~bookworm_amd64.deb
   61  nvim .
   62  vagrant up
   63  nvim .
   64  vagrant up
   65  nvim .
   66  vagrant up
   67  nvim .
   68  vagrant up
   69  vagrant list
   70  ls
   71  clear
   72  ssh vagrant@localhost -p 2200
   73  vagrant halt
   74  vagrant destrot
   75  vagrant destroy
   76  ls
   77  rm -rf .vagrant
   78  nvim .
   79  vagrant up
   80  nvim .
   81  vagrant up
   82  nvim .
   83  vagrant up
   84  vagrant up --provision
   85  ssh vagrant@localhost -p 2200
   86  ssh-keygen -f "/home/winstonallo/.ssh/known_hosts" -R "[localhost]:2200"
   87  ssh vagrant@localhost -p 2200
   88  ssh vagrant@localhost -p 2222
   89  vagrant halty
   90  vagrant halt
   91  vagrant destroy
   92  nvim .
   93  cd inception-of-things/p1
   94  ls
   95  nvim .
   96  vagrant up --provision
   97  ssh vagrant@localhost -p 2222
   98  ssh-keygen -f "/home/winstonallo/.ssh/known_hosts" -R "[localhost]:2222"\n
   99  ssh-keygen -f "/home/winstonallo/.ssh/known_hosts" -R "[localhost]:2200"\n
  100  ssh vagrant@localhost -p 2222
  101  ssh vagrant@localhost -p 2200
  102  ls
  103  rm node-token abied-chS*
  104  vagrant halt && vagrant destroy
  105  nvim ..
  106  vagrant up
  107  ls
  108  cd ..
  109  ls
  110  cat README.md
  111  vagrant halt && vagrant destroy
  112  vagrant up
  113  ssh -p 2222 vagrant@192.168.56.110
  114  ssh -p 2222 vagrant@192.168.56.111
  115  nvim .
  116  vagrant halt && vagrant destroy
  117  vagrant up
  118  ssh -p 2222 vagrant@192.168.56.111
  119  ssh -p 2222 vagrant@192.168.56.110
  120  ssh -p 2222 192.168.56.110
  121  ssh 192.168.56.110
  122  ssh vagrant192.168.56.110
  123  ssh vagrant@192.168.56.110
  124  ssh vagrant@192.168.56.111
  125  ls
  126  clear
  127  nvim .
  128  vagrant halt && vagrant destroy
  129  vagrant up
  130  ssh vagrant@192.168.56.111
  131  ssh vagrant@192.168.56.110
  132  vagrant halt && vagrant destroy
  133  nvim .
  134  vagrant up
  135  nvim .
  136  ssh vagrant@192.168.56.110
  137  ssh-keygen -f "/home/winstonallo/.ssh/known_hosts" -R "192.168.56.110"
  138  ssh-keygen -f "/home/winstonallo/.ssh/known_hosts" -R "192.168.56.111"
  139  ssh vagrant@192.168.56.110
  140  ssh vagrant@192.168.56.111
  141  cd ..
  142  ga .
  143  gcam "fix: use alpine for faster build time + moved all scripts into Vagrantfile for simplicity"
  144  gp
  145  git config --global --edit
  146  mkdir p2
  147  nvim p2
  148  ssh vagrant@192.168.56.111
  149  ssh vagrant@192.168.56.110
  150  ls
  151  nvim p2
  152  cd p2
  153  nvim Vagrantfile
  154  nvim ..
  155  mkdir deployment
  156  nvim .
  157  touch deployment/app{1..3}.yaml
  158  nvim deployment
  159  nvim deployment/ingress.yaml
  160  nvim deployment/services.yaml
  161  vagrant up
  162  nvim .
  163  vagrant up
  164  ssh vagrant@192.168.56.110
  165  curl -H "Host: app1.com" 192.168.56.110
  166  cd ../p1
  167  vagrant halt
  168  curl -H "Host: app1.com" 192.168.56.110
  169  cd ../p2
  170  vagrant halt
  171  vagrant destroy
  172  vagrant up
  173  curl -H "Host: app1.com" 192.168.56.110
  174  ssh vagrant@192.168.56.110
  175  curl -H "Host: app1.com" 192.168.56.110
  176  curl -H "Host: app1.com" 192.168.56.110 -p 80
  177  curl -H "Host: app1.com" 192.168.56.110
  178  curl -v -H "Host: app1.com" 192.168.56.110
  179  nvim .
  180  vagrant halt && vagrant destroy
  181  vagrant up
  182  curl -v -H "Host: app1.com" 192.168.56.110
  183  vagrant halt && vagrant destroy
  184  nvim .
  185  vagrant up
  186  curl -v -H "Host:app1.com" 192.168.56.110
  187  nvim .
  188  curl -v -H "Host:app1.com" 192.165.56.110
  189  ssh vagrant@192.168.56.110
  190  ssh-keygen -f "/home/winstonallo/.ssh/known_hosts" -R "192.168.56.110"
  191  ssh vagrant@192.168.56.110
  192  ls
  193  nvim .
  194  vagrant up --provision
  195  vagrant halt && vagrant destroy
  196  nvim .
  197  vagrant up
  198  curl -v -H "Host:app1.com" 192.165.56.110
  199  curl -v -H "Host:app1.com" 192.168.56.110
  200  cat *
  201  cat deployment/*
  202  ssh vagrant@192.168.56.110
  203  ssh-keygen -f "/home/winstonallo/.ssh/known_hosts" -R "192.168.56.110"\n
  204  curl -v -H "Host:app1.com" 192.168.56.110
  205  ssh vagrant@192.168.56.110
  206  curl -v -H "Host:app1.com" 192.168.56.110:30427
  207  curl -v 192.168.56.110:30427
  208  nvim .
  209  cat deployment/ingress.yaml
  210  ssh vagrant@192.168.56.110
  211  nvim .
  212  vagrant up --provision
  213  vagrant halt && vagrant destroy
  214  nvim .
  215  vagrant up --provision
  216  cd inception-of-things
  217  ls
  218  cd cd p2
  219  cd p2
  220  ls
  221  nvim .
  222  vagrant up
  223  vagrant halt
  224  vagrant destroy
  225  vagrant up
  226  curl -v 192.168.56.110
  227  curl -v -H "Host: app1.com" 192.168.56.110
  228  ssh vagrant@192.168.56.110
  229  curl -v -H "Host: app1.com" 192.168.56.110
  230  curl -v -H "Host: app2.com" 192.168.56.110
  231  curl -v -H "Host: app3.com" 192.168.56.110
  232  gst
  233  cd ..
  234  gst
  235  ga .
  236  gcam "add: working apps for p2"
  237  gp
  238  nvim .
  239  curl -v  192.168.56.110
  240  curl -v -H "host: app1.com" 192.168.56.110
  241  wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
  242  docker
  243  sudo apt-get update
  244  sudo apt-get install ca-certificates curl\n
  245  sudo install -m 0755 -d /etc/apt/keyrings\n
  246  sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc\n
  247  sudo chmod a+r /etc/apt/keyrings/docker.asc\n
  248  echo \\n  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \\n  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \\n  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null\nsudo apt-get update
  249  sudo apt-get update\n
  250  k3d cluster create argocd
  251  sudo usermod -aG docker winstonallo
  252  cd inception-of-things
  253  k3d cluster create argocd
  254  groups
  255  sudo k3d cluster create argocd
  256  kubectl cluster-info
  257  sudo apt install kubectl
  258  sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
  259  kubectl version --client
  260  kubectl cluster-info
  261  kubectl create namespace argocd
  262  sudo k3d cluster create argocd
  263  sudo kubectl cluster-ingo
  264  sudo kubectl cluster-info
  265  k3d cluster --help
  266  k3d cluster delete argocd
  267  sudo k3d cluster delete argocd
  268  groups
  269  cd inception-of-things
  270  ls
  271  mkdir p3
  272  ls
  273  cd p3
  274  ls
  275  k3d version
  276  k3d cluster create argocd 
  277  kubectl cluster-info
  278  wget https://github.com/argoproj/argo-cd/raw/v1.6.2/manifests/install.yaml\n
  279  nvim .
  280  kubectl create namespace argocd
  281  kubectl apply -f install.yaml -n argocd
  282  nvim ingress.yaml
  283  kubectl apply -f ingress.yaml -n argocd
  284  nvim ingress.yaml
  285  nvim ..
  286  kubectl apply -f ingress.yaml -n argocd
  287  nvim .
  288  kubectl apply -f ingress.yaml -n argocd
  289  nvim .
  290  kubectl apply -f ingress.yaml -n argocd
  291  nvim .
  292  kubectl apply -f ingress.yaml -n argocd
  293  nvim .
  294  kubectl apply -f ingress.yaml -n argocd
  295  nvim .
  296  cat ingress.yaml
  297  nvim .
  298  kubectl apply -f ingress.yaml
  299  dps
  300  kubectl apply -f ingress.yaml -n argocd
  301  dps
  302  kubectl get pods
  303  kubectl get pods -n argocd
  304  kubectl cluster delete argocd
  305  k3d cluster delete argocd
  306  dps
  307  kubectl delete namespace argocd
  308  sudo kubectl delete namespace argocd
  309  clear
  310  k3d cluster create abied-chC --api-port 6443 8080:80@loadbalancer --agents 2
  311  k3d cluster create abied-chC --api-port 644 -p3 8080:80@loadbalancer --agents 2
  312  k3d cluster create abied-chC --api-port 6443 -p 8080:80@loadbalancer --agents 2
  313  kubectl cluster-info
  314  kubectl cluster-info -n abied-chC
  315  kubectl create namespace argocd
  316  kubectl apply -f install.yaml
  317  kubectl apply -f install.yaml -n argocd
  318  dps
  319  kubectl apply -f ingress.yaml -n argocd
  320  dps
  321  kubectl get pods -n argocd
  322  kubectl logs argocd-server-5d5c7d54d7-7gll8 
  323  kubectl logs argocd-server-5d5c7d54d7-7gll8 -n argocd
  324  cat install.yaml
  325  kubectl get crd | grep argoproj\n\n
  326  kubectl delete -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml\n
  327  kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml\n
  328  dps
  329  kubectl get pods -n argocd
  330  kubectl logs argocd-server-5d5c7d54d7-7gll8 -n argocd
  331  kubectl get pods -n argocd
  332  kubectl logs argocd-server-5c768cdd96-dggcr  -n argocd
  333  kubectl get pods -n argocd
  334  kubectl logs argocd-application-controller-5f95b8d5d9-8t9dw  -n argocd
  335  kubectl get serviceaccount -n argocd
  336  kubectl get clusterrolebinding -n argocd | grep argocd\n
  337  kubectl logs argocd-application-controller-5f95b8d5d9-8t9dw  -n argocd
  338  kubectl logs argocd-server-5c768cdd96-dggcr  -n argocd
  339  kubectl get pods -n argocd
  340  kubectl get nodes -o wide
  341  kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d
  342  curl -k localhost
  343  curl -k localhost:8080
  344  curl -k localhost/argocd:8080
  345  curl -k http://localhost/argocd:8080
  346  curl -k http://172.18.0.4/argocd:8080
  347  curl -L -k http://172.18.0.4/argocd:8080
  348  curl -location -k http://172.18.0.4/argocd:8080
  349  curl -L --max-redirs 100 -k http://172.18.0.4/argocd:8080
  350  curl -L --max-redirs 100 -k http://localhost/argocd:8080
  351  curl -L --max-redirs 100 -k http://172.18.0.3/argocd:8080
  352  curl -L --max-redirs 100 -k http://172.18.0.2/argocd:8080
  353  curl -L --max-redirs 100 -k http://172.18.0.2:8080/argocd
  354  nvim .
  355  cat ingress.yaml
  356  nvim .
  357  kubectl apply -f ingress.yaml -n argocd
  358  cat cation
  359  rm cation
  360  ls
  361  ga .
  362  gcam "add: beginning of p3"
  363  gp
  364  gcl https://github.com/winstonallo/ft_traceroute.git
  365  rm -rf ft_traceroute
  366  gcl --recursive https://github.com/winstonallo/ft_traceroute.git
  367  cd ft_traceroute
  368  ls libft
  369  gcl --recursive git@github.com:winstonallo/ft_traceroute.git
  370  cd ..
  371  rm -rf ft_traceroute
  372  gcl git@vogsphere.42vienna.com:vogsphere/intra-uuid-1f8a0153-2ca4-4c8e-9dd2-bf903e0c4b5f-6355796-abied-ch
  373  cat .ssh/id_rsa.pub
  374  gcl git@vogsphere.42vienna.com:vogsphere/intra-uuid-1f8a0153-2ca4-4c8e-9dd2-bf903e0c4b5f-6355796-abied-ch
  375  cd in
  376  cd intra-uuid-1f8a0153-2ca4-4c8e-9dd2-bf903e0c4b5f-6355796-abied-ch
  377  la
  378  make
  379  sudo ./ft_traceroute 1.1.1.1
  380  sudo ./ft_traceroute google.com
  381  sudo ./ft_traceroute he
  382  gcl git@github.com:Zekao/Inception-of-Things.git
  383  cd Inception-of-Things
  384  ls
  385  cd p3
  386  ls
  387  vagrant up
  388  ls
  389  dps
  390  docker stop 81ddcd932cb3 c51f687cb73e dd92d39c5b70 02f28d722544
  391  dps
  392  ls
  393  cd Inception-of-Things
  394  ls
  395  nvim .
  396  vagrant destroy
  397  vagrant up
  398  nvim p3
  399  ls
  400  cd inception-of-things
  401  ls
  402  cd p1
  403  vagrant up
  404  nvim Vagrantfile
  405  vagrant up
  406  vagrant -c
  407  vagrant -v
  408  history | grep vagrant
  409  history
  410  bash
  411  sh
  412  nvim .
  413  ls
  414  vagrant up
  415  ssh vagrant@abied-chS
  416  nvim .
  417  ssh vagrant@192.168.56.110
  418  ssh vagrant@abied-chS
  419  ssh abied-chS
  420  ssh -v vagrant@abied-chS
  421  cd inception-of-things
  422  vagrant destroy
  423  cd p1
  424  vagrant destroy
  425  vagrant up
  426  ssh -v vagrant@abied-chS
  427  ssh vagrant@192.168.56.110
  428  ssh-keygen -f "/home/winstonallo/.ssh/known_hosts" -R "192.168.56.110"\n
  429  ssh -v vagrant@abied-chS
  430  ls
  431  nvim .
  432  nslookup abied-chS
  433  nslookup abied-chS@
  434  nslookup abied-chSW
  435  nvim .
  436  cat Vagrantfile
  437  ls
  438  cat /etc/host
  439  cat /etc/hosts
  440  vagrant status abied-chS
  441  vagrant halt
  442  vagrant destroy
  443  vagrant list
  444  vagrant global-status
  445  vagrant halt 168c037
  446  vagrant halt 4ed2a81
  447  vagrant up
  448  ssh -v vagrant@abied-chS
  449  ssh vagrant@192.168.56.110
  450  nvim .
  451  vagrant destroy
  452  vagrant up
  453  ssh -v vagrant@abied-chS
  454  ssh -v vagrant@abied-chSW
  455  ssh -v abied-ch@abied-chSW
  456  ssh -v root@abied-chSW
  457  ssh -v vagrant@abied-chSW
  458  nvim .
  459  ssh vagrant@192.168.56.110
  460  cat ~/.ssh/known_hosts
  461  ssh vagrant@192.168.56.110
  462  ssh vagrant@192.168.56.111
  463  ssh vagrant@192.168.56.110
  464  ls
  465  cd ../p2
  466  ls
  467  cd deployment
  468  ls
  469  nvim .
  470  clear
  471  ls
  472  cd Inception-of-things
  473  cd Inception-of-Things
  474  ls
  475  cd p3
  476  ls
  477  vagrant up
  478  nvim .
  479  vagrant provision
  480  nvim .
  481  vagrant destroy
  482  vagrant haly
  483  vagrant halt
  484  vagrant up
  485  vagrant destroy
  486  nvim .
  487  vagrant up
  488  cd Inception-of-Things
  489  cd p3
  490  vagrant destroy
  491  vagrant up
  492  nvim .
  493  vagrant destroy
  494  cd ../p2
  495  vagrant destroy
  496  cd ../p1
  497  vagrant destroy
  498  cd ../p3
  499  vagrant up
  500  ls
  501  rm -rf Inception-of-Things
  502  rm -rf in
  503  rm -rf intra-uuid-1f8a0153-2ca4-4c8e-9dd2-bf903e0c4b5f-6355796-abied-ch
  504  ls
  505  rm virtualbox-7.1_7.1.4-165100\~Debian\~bookworm_amd64.deb
  506  cd VirtualBox\ VMs
  507  ls
  508  cd ..
  509  ls
  510  df -h
  511  cd inception-of-things
  512  ls
  513  cd p1
  514  ls
  515  vagrant destroy
  516  vagrant up
  517  nvim .
  518  ssh vagrant@192.168.56.110
  519  ssh abied-chS
  520  ssh vagrant@192.168.56.110
  521  nslookup abied-chS
  522  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/mkasberg/ghostty-ubuntu/HEAD/install.sh)"\n
  523  ls
  524  clear
  525  ls
  526  cd inception-of-things
  527  ls
  528  cd p
  529  cd p1
  530  ls
  531  ssh vagrant@192.168.56.110
  532  ssh vagrant@192.168.56.111
  533  ssh-keygen -f "/home/winstonallo/.ssh/known_hosts" -R "192.168.56.111"
  534  ls
  535  ssh vagrant@192.168.56.111
  536  cd ../p2
  537  ls
  538  vagrant destroy 
  539  rm ~/.ssh/known_hosts  && vagrant destroy -f && vagrant up
  540  rm ~/.ssh/known_hosts; vagrant destroy -f && vagrant up
  541  ls
  542  curl -v -H "host: app1.com" 192.168.56.110
  543  curl -v -H "host: app2.com" 192.168.56.110
  544  cd ../p1
  545  vagrant destroy
  546  vagrant destroy -f
  547  cd ../p2
  548  ls
  549  rm ~/.ssh/known_hosts; vagrant destroy -f && vagrant up
  550  curl -v -H "host: app2.com" 192.168.56.110
  551  curl -v -H "host: app1.com" 192.168.56.110
  552  curl -v -H "host: app3.com" 192.168.56.110
  553  nvim .
  554  vagrant provision
  555  nivm .
  556  nvim .
  557  ls
  558  vagrant provision
  559  curl -v -H "host: app3.com" 192.168.56.110
  560  curl -v -H "host: app2.com" 192.168.56.110
  561  curl -v -H "host: app1.com" 192.168.56.110
  562  nvim .
  563  ssh vagrant@192.168.56.110
  564  ls
  565  vagrant destroy -f
  566  cd ..
  567  ls
  568  cd p3
  569  ls
  570  vagrant destroy -f
  571  ls
  572  nvim. 
  573  nvim .
  574  ls
  575  kubectl
  576  kubectl apply -f install.yaml
  577  clear
  578  k3d
  579  nvim in
  580  nvim install.yaml
  581  history | grep namespace
  582  kubectl create namespace argocd
  583  groups
  584  kubectl --help
  585  kubectl get namespace
  586  k3d list
  587  k3d --help
  588  k3d cluster
  589  k3d cluster list
  590  k3d cluster delete abied-chC
  591  kubectl create namespace arhtur
  592  k3d create namespace argocd
  593  k3d cluster
  594  k3d cluster create p3
  595  nvim start.sh
  596  kubectl create namespace argocd
  597  kubectl apply
  598  kubectl apply -f install.yaml
  599  nvim .
  600  nvim install.yaml
  601  cat << eof 
  602  cat << eof  > install.yaml
  603  wget https://github.com/argoproj/argo-cd/blob/master/manifests/install.yaml
  604  ls
  605  rm install.yaml
  606  mv install.yaml.1 install.yaml.
  607  mv install.yaml.1 install.yaml
  608  mv install.yaml. install.yaml
  609  ls
  610  clear
  611  kubectl apply -f install.yaml
  612  nvim .
  613  rm install.yaml
  614  wget https://raw.githubusercontent.com/argoproj/argo-cd/refs/heads/master/manifests/install.yaml
  615  ls
  616  cat install.yaml
  617  kubectl apply -f install.yaml
  618  kubectl port-forward svc/argocd-server -n argocd 8080:443\n
  619  ls
  620  cd inception-of-things
  621  ls
  622  cd p3
  623  ls
  624  nvim install.yaml
  625  kubectl port-forward svc/argocd-server -n argocd 8080:443\n
  626  alias k=kubectl
  627  k service list
  628  k services list
  629  k
  630  k get all
  631  k get services
  632  kubectl port-forward argocd-server -n argocd 8080:443\n
  633  k get pods
  634  kubectl port-forward argocd-server-5b5444dfdc-7dqpv -n argocd 8080:443\n
  635  kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'\n
  636  k namespace
  637  k list namespace
  638  k get namespace
  639  wget kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml\n
  640  wget https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml\n
  641  ls
  642  diff install.yaml install.yaml.1
  643  k destroy install.yaml
  644  k destroy 
  645  k delete -f install.yaml
  646  ls
  647  kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml\n
  648  kubectl config set-context --current --namespace=argocd
  649  kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'\n
  650  kubectl port-forward svc/argocd-server -n argocd 8080:443\n
  651  argocd admin initial-password -n argocd\n
  652  VERSION=$(curl -L -s https://raw.githubusercontent.com/argoproj/argo-cd/stable/VERSION)\ncurl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/download/v$VERSION/argocd-linux-amd64\nsudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd\nrm argocd-linux-amd64
  653  argocd admin initial-password -n argocd\n
  654  docker ps
  655  k get pods
  656  nvim ~/.zshrc
  657  source .zshrc
  658  source ~/.zshrc
  659  k get pods
  660  k exec -it argocd-server-758655c49f-29f6g bash
  661  k exec -it argocd-server-758655c49f-29f6g -- bash
  662  echo | openssl s_client -showcerts -servername github.com -connect example.com:443 2>/dev/null | openssl x509 -outform PEM > example_com.crt
  663  ls
  664  cat example_com.crt
  665  ls
  666  openssl x509 -in example_com.crt -text -noout\n
  667  kubectl create configmap my-ca-cert --from-file=ca.crt=example.com.crt\n
  668  ls
  669  kubectl create configmap my-ca-cert --from-file=ca.crt=example_com.crt\n
  670  nvim .
  671  rm install.yaml
  672  rm install.yaml.1
  673  ls
  674  rm ingress.yaml
  675  argocd cert add-tls --from example_com.crt
  676  argocd cert add-tls --from example_com.crt localhost:8080
  677  argocd cert add-tls --from example_com.crt 127.0.0.1:8080
  678  k get pods
  679  k get all
  680  argocd cert list --cert-type https -n argocd
  681  history| grep argocd
  682  k get all
  683  cat example_com.crt
  684  argocd cert
  685  argocd cert add-tls --from example_com.crt
  686  argocd app list]
  687  argocd app list
  688  argocd login
  689  argocd login localhost:8080
  690  argocd admin initial-password -n argocd\n
  691  argocd login localhost:8080
  692  argocd account update-passwor
  693  argocd account update-password
  694  kubectl config get-contexts -o name
  695  kubectl config set-context --current --namespace=argocd\n
  696  argocd app create guestbook --repo https://github.com/argoproj/argocd-example-apps.git --path guestbook --dest-server https://kubernetes.default.svc --dest-namespace default\n
  697  ls
  698  history
