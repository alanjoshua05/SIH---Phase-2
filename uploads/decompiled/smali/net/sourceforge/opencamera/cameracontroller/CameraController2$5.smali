.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$5;
.super Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
.source "CameraController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->createCaptureSession(Landroid/media/MediaRecorder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

.field final synthetic val$myStateCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$5;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$5;->val$myStateCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;

    .line 6055
    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 0

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$5;->val$myStateCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;

    .line 6069
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->onConfigureFailed()V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$5;->val$myStateCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;

    const/4 v1, 0x0

    .line 6061
    invoke-virtual {v0, v1, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method
