.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback$1;
.super Ljava/lang/Object;
.source "CameraController2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->callCheckImagesCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    .line 9001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    .line 9006
    iget-object v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    .line 9007
    iget-object v1, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$16502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    .line 9010
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;

    .line 9011
    iget-object v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$MyCaptureCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    return-void

    :catchall_0
    move-exception v1

    .line 9010
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
