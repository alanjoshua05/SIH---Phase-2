.class public Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;
.super Landroid/view/SurfaceView;
.source "MySurfaceView.java"

# interfaces
.implements Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MySurfaceView"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final measure_spec:[I

.field private final preview:Lnet/sourceforge/opencamera/preview/Preview;

.field private final tick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->measure_spec:[I

    .line 28
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 41
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 45
    new-instance p1, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView$1;

    invoke-direct {p1, p0, p2}, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView$1;-><init>(Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;Lnet/sourceforge/opencamera/preview/Preview;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 88
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->measure_spec:[I

    .line 95
    invoke-virtual {v0, v1, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->getMeasureSpec([III)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->measure_spec:[I

    const/4 p2, 0x0

    .line 96
    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-super {p0, p2, p1}, Landroid/view/SurfaceView;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->tick:Ljava/lang/Runnable;

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->tick:Ljava/lang/Runnable;

    .line 117
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 83
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setPreviewDisplay(Lnet/sourceforge/opencamera/cameracontroller/CameraController;)V
    .locals 1

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 103
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setVideoRecorder(Landroid/media/MediaRecorder;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/camerasurface/MySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    return-void
.end method
