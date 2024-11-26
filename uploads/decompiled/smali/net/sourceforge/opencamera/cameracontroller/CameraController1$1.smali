.class Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;
.super Ljava/lang/Object;
.source "CameraController1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setFlashValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

.field final synthetic val$flash_mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;->val$flash_mode:Ljava/lang/String;

    .line 1228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1233
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$100(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1234
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$200(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;->val$flash_mode:Ljava/lang/String;

    .line 1235
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1236
    invoke-static {v1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$300(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method
