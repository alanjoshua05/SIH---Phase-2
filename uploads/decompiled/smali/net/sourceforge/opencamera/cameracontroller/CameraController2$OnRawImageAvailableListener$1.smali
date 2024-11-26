.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener$1;
.super Ljava/lang/Object;
.source "CameraController2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->setCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    .line 1807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;

    .line 1813
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->access$3900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;)V

    return-void
.end method
