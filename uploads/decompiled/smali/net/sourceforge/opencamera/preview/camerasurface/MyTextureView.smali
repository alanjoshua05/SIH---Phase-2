.class public Lnet/sourceforge/opencamera/preview/camerasurface/MyTextureView;
.super Landroid/view/TextureView;
.source "MyTextureView.java"

# interfaces
.implements Lnet/sourceforge/opencamera/preview/camerasurface/CameraSurface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MyTextureView"


# instance fields
.field private final measure_spec:[I

.field private final preview:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MyTextureView;->measure_spec:[I

    iput-object p2, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MyTextureView;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 34
    invoke-virtual {p0, p2}, Lnet/sourceforge/opencamera/preview/camerasurface/MyTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MyTextureView;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MyTextureView;->measure_spec:[I

    .line 76
    invoke-virtual {v0, v1, p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->getMeasureSpec([III)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MyTextureView;->measure_spec:[I

    const/4 p2, 0x0

    .line 77
    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-super {p0, p2, p1}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/camerasurface/MyTextureView;->preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 64
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setPreviewDisplay(Lnet/sourceforge/opencamera/cameracontroller/CameraController;)V
    .locals 0

    .line 47
    :try_start_0
    invoke-virtual {p1, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setPreviewTexture(Landroid/view/TextureView;)V
    :try_end_0
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setVideoRecorder(Landroid/media/MediaRecorder;)V
    .locals 0

    return-void
.end method
