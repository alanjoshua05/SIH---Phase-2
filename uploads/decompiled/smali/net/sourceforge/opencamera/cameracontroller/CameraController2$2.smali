.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2;
.super Ljava/lang/Object;
.source "CameraController2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->onError(Landroid/hardware/camera2/CameraDevice;)V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2021
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    return-void
.end method
