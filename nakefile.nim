import nake
import os

task "build", "":
  discard execShellCmd "nim c -d:release --dynlibOverride:iup -L:iup/libiup.a -L:iup/libiupcd.a -L:iup/libiupim.a -L:-lgdi32 -L:-luser32 -L:-lcomdlg32 -L:-lcomctl32 -L:-lole32 -L:-luuid .\\menu.nim"