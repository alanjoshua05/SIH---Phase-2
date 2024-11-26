.class Lnet/sourceforge/opencamera/cameracontroller/CameraController1$CameraErrorCallback;
.super Ljava/lang/Object;
.source "CameraController1.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$CameraErrorCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$CameraErrorCallback;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 1

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "camera onError: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraController1"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    const-string p1, "    CAMERA_ERROR_SERVER_DIED"

    .line 127
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$CameraErrorCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 128
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->onError()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "    CAMERA_ERROR_UNKNOWN "

    .line 131
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
