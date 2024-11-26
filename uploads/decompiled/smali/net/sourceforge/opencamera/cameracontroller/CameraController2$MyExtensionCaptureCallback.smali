.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;
.super Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
.source "CameraController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyExtensionCaptureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8064
    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V
    .locals 0

    .line 8064
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .line 8107
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public onCaptureProcessProgressed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;I)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8150
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 8151
    new-instance p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback$1;

    invoke-direct {p2, p0, p3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback$1;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .line 8098
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public onCaptureResultAvailable(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8141
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    move-result-object p1

    invoke-static {p1, p3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->access$13000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .locals 0

    .line 8136
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8121
    iget v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_capture_results:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->test_capture_results:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 v1, 0x0

    .line 8122
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8124
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->access$12900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;)V

    .line 8126
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 8086
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 v1, 0x1

    .line 8087
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12702(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    .line 8092
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;J)V

    return-void
.end method
