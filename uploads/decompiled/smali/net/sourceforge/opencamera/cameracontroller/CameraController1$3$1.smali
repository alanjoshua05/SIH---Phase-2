.class Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3$1;
.super Ljava/lang/Object;
.source "CameraController1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;

    .line 1824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;

    .line 1829
    iget-object v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$100(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;

    .line 1830
    iget-object v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;

    iget-object v1, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->val$picture:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;

    iget-object v2, v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->val$error:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    invoke-static {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$1000(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V

    :cond_0
    return-void
.end method
