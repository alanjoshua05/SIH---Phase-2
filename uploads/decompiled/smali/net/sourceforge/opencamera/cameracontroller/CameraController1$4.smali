.class Lnet/sourceforge/opencamera/cameracontroller/CameraController1$4;
.super Ljava/lang/Object;
.source "CameraController1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->takePicture(Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

.field final synthetic val$error:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

.field final synthetic val$picture:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$4;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$4;->val$picture:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iput-object p3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$4;->val$error:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    .line 1922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$4;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1927
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$100(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$4;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$4;->val$picture:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$4;->val$error:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    .line 1928
    invoke-static {v0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$1000(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V

    :cond_0
    return-void
.end method
