.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;
.super Ljava/lang/Object;
.source "CameraController2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->postNextSlowBurst()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1477
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1479
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/media/ImageReader;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->imageQueueWouldBlock(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1483
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1487
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_FOCUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1492
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1495
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    move-result-object v2

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1503
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1504
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1505
    invoke-static {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 v1, 0x0

    .line 1506
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1507
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1508
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1509
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    :cond_3
    :goto_1
    return-void
.end method
