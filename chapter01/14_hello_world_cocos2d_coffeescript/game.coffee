cc.game.onStart = () ->
    designSize = cc.size(480, 800)
    screenSize = cc.view.getFrameSize()

    if !cc.sys.isNative && screenSize.height < 800
        designSize = cc.size(320, 480)
        cc.loader.resPath = "res/Normal"
    else
        cc.loader.resPath = "res/HD"
    
    cc.view.setDesignResolutionSize(
        designSize.width
        designSize.height
        cc.ResolutionPolicy.SHOW_ALL)

    cc.LoaderScene.preload(
        g_resources
        () -> cc.director.runScene(new MyScene())
        this)

cc.game.run()
