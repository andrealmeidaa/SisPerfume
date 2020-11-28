import wx
from FramePrincipal import FramePrincipal
if __name__ == '__main__':
    app=wx.App()
    framePrincipal=FramePrincipal(None)
    framePrincipal.Show(True)
    app.MainLoop()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
