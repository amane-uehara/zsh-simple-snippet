# UNIX text utils
snippets_begin+=(  eh      'echo "<C0>" <CS>'                             )
snippets_begin+=(  fa      "for a in <C0> ;do <CS> ;done <CS>"            )
snippets_begin+=(  fb      "for b in <C0> ;do <CS> ;done <CS>"            )

snippets_always+=( ak      "awk '<C0>'<CS>"                               )
snippets_always+=( ap      "awk '{print $<C0>}' <CS>"                     )
snippets_always+=( gp      "egrep -dskip '<C0>' <CS>"                     )
snippets_always+=( gv      "egrep -dskip -v '<C0>' <CS>"                  )
snippets_always+=( hd      "head <C0>"                                    )
snippets_always+=( le      "less <C0>"                                    )
snippets_always+=( sd      "sed -e 's/<C0>/<CS>/<CS>' <CS>"               )
snippets_always+=( so      "sort <C0>"                                    )
snippets_always+=( tl      "tail <C0>"                                    )
snippets_always+=( tf      "tail -f <C0>"                                 )
snippets_always+=( uq      "uniq <C0>"                                    )
snippets_always+=( wl      "while read line ;do <C0> ;done <CS>"          )

# UNIX command
snippets_begin+=(  cm      "cd - <C0>"                                    )
snippets_begin+=(  ch      "cd ../<C0>"                                   )
snippets_begin+=(  ll      "ls -l <C0>"                                   )
snippets_begin+=(  la      "ls -a <C0>"                                   )
snippets_begin+=(  lla     "ls -la <C0>"                                  )
snippets_begin+=(  md      "mkdir <C0>"                                   )
snippets_begin+=(  pg      "ps aux |egrep '<C0>' <CS>"                    )
snippets_begin+=(  pa      "ps aux <C0>"                                  )
snippets_begin+=(  rd      "rmdir <C0>"                                   )
snippets_begin+=(  to      "touch <C0>"                                   )
snippets_begin+=(  vi      "vim -p <C0>"                                  )

# git
snippets_begin+=(  g       "git <C0>"                                     )
snippets_begin+=(  ga      "git add <C0>"                                 )
snippets_begin+=(  gb      "git branch --all<C0>"                         )
snippets_begin+=(  gbl     "git blame <C0>"                               )
snippets_begin+=(  gc      "git commit <C0>"                              )
snippets_begin+=(  gca     "git commit --amend <C0>"                      )
snippets_begin+=(  gd      "git diff <C0>"                                )
snippets_begin+=(  gdc     "git diff --cached <C0>"                       )
snippets_begin+=(  gf      "git fetch <C0>"                               )
snippets_begin+=(  gg      "git grep -np '<C0>' <CS>"                     )
snippets_begin+=(  gi      "git commit -m '<C0>' <CS>"                    )
snippets_begin+=(  gk      "git checkout <C0>"                            )
snippets_begin+=(  gkb     "git checkout -b <C0>"                         )
snippets_begin+=(  gkm     "git checkout master <C0>"                     )
snippets_begin+=(  gl      "git log --graph --pretty=format:'%>|(20)%C(auto)%h %C(cyan)%ad %C(green)%an %C(auto)%s %d%Creset' --date=format-local:'%Y/%m/%d %H:%M'")
snippets_begin+=(  glf     "git log --stat <C0>"                          )
snippets_begin+=(  gls     "git ls-files <C0>"                            )
snippets_begin+=(  gm      "git merge <C0>"                               )
snippets_begin+=(  gps     "git push --set-upstream origin <C0>"          )
snippets_begin+=(  gpl     "git pull <C0>"                                )
snippets_begin+=(  gr      "git reset <C0>"                               )
snippets_begin+=(  grh     "git reset --hard <C0>"                        )
snippets_begin+=(  grl     "git reflog <C0>"                              )
snippets_begin+=(  grm     "git rm --cache <C0>"                          )
snippets_begin+=(  gs      "git status <C0>"                              )
snippets_begin+=(  gsh     "git show <C0>"                                )
snippets_begin+=(  gst     "git stash <C0>"                               )
snippets_begin+=(  gsp     "git stash pop <C0>"                           )
snippets_begin+=(  gig     "vim .gitignore <C0>"                          )

# docker
snippets_begin+=(  d       "docker <C0>"                                  )
snippets_begin+=(  dr      "docker run -d -v ${DOCKER_SHARE_DIR}:/tmp/share -v $HOME/.ssh:/root/.ssh --hostname=<C0> --name <CS> -it <CS>")
snippets_begin+=(  de      "docker exec -it <C0> tmux -2 <CS>"            )
snippets_begin+=(  db      "docker build -t <C0>:latest . <CS>"           )
snippets_begin+=(  di      "docker images <C0>"                           )
snippets_begin+=(  ds      "docker ps <C0>"                               )
snippets_begin+=(  dsa     "docker ps -a <C0>"                            )
snippets_begin+=(  dst     "docker start <C0>"                            )
snippets_begin+=(  dsp     "docker stop <C0>"                             )
snippets_begin+=(  dd      "docker rm <C0>"                               )
snippets_begin+=(  ddi     "docker rmi <C0>"                              )

# build
snippets_begin+=(  gcc     "gcc --std=c99 -Wall <C0>"                     )
snippets_begin+=(  mc      "make clean <C0>"                              )

# expand compress
snippets_begin+=(  xtar    "tar xvf <C0>.tar <CS>"                        )
snippets_begin+=(  xtargz  "gzip -dc <C0>.tar.gz | tar xvf - <CS>"        )
snippets_begin+=(  xtgz    "gzip -dc <C0>.tgz | tar xvf - <CS>"           )
snippets_begin+=(  xtarxz  "xz -dc <C0>.tar.xz | tar xvf - <CS>"          )
snippets_begin+=(  xtxz    "xz -dc <C0>.txz | tar xvf - <CS>"             )
snippets_begin+=(  xtarZ   "uncompress -c <C0>.tar.Z | tar xvf - <CS>"    )
snippets_begin+=(  xtaz    "uncompress -c <C0>.taz | tar xvf - <CS>"      )
snippets_begin+=(  xtarbz2 "bzip2 -dc <C0>.tar.bz2 | tar xvf - <CS>"      )
snippets_begin+=(  xtbz2   "bzip2 -dc <C0>.tbz2 | tar xvf - <CS>"         )
snippets_begin+=(  ctar    "tar -cvf - <C0> > <CS>.tar <CS>"              )
snippets_begin+=(  ctargz  "tar -cvf - <C0> | gzip - > <CS>.tar.gz <CS>"  )
snippets_begin+=(  ctgz    "tar -cvf - <C0> | gzip - > <CS>.tgz <CS>"     )
snippets_begin+=(  ctarxz  "tar -cvf - <C0> | xz -zc > <CS>.tar.xz <CS>"  )
snippets_begin+=(  ctxz    "tar -cvf - <C0> | xz -zc > <CS>.txz <CS>"     )
snippets_begin+=(  ctarZ   "tar -cvf - <C0> | compress > <CS>.tar.Z <CS>" )
snippets_begin+=(  ctaz    "tar -cvf - <C0> | compress > <CS>.taz <CS>"   )
snippets_begin+=(  ctarbz2 "tar -cvf - <C0> | bzip2 > <CS>.tar.bz2 <CS>"  )
snippets_begin+=(  ctbz2   "tar -cvf - <C0> | bzip2 > <CS>.tbz2 <CS>"     )
