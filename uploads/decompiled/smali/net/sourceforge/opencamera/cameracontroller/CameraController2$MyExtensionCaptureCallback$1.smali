.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback$1;
.super Ljava/lang/Object;
.source "CameraController2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;->onCaptureProcessProgressed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;

    iput p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback$1;->val$progress:I

    .line 8151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;

    .line 8156
    iget-object v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;

    .line 8157
    iget-object v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyExtensionCaptureCallback$1;->val$progress:I

    invoke-interface {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onExtensionProgress(I)V

    :cond_0
    return-void
.end method
