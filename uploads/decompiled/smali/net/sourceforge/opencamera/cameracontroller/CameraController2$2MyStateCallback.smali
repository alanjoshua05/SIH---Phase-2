.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->createCaptureSession(Landroid/media/MediaRecorder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyStateCallback"
.end annotation


# instance fields
.field private callback_done:Z

.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

.field final synthetic val$video_recorder:Landroid/media/MediaRecorder;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/media/MediaRecorder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->val$video_recorder:Landroid/media/MediaRecorder;

    .line 5895
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method static synthetic access$12200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;)Z
    .locals 0

    .line 5895
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->callback_done:Z

    return p0
.end method


# virtual methods
.method onConfigureFailed()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5950
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->callback_done:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5952
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5953
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 5962
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->onConfigureFailed()V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    const/4 v0, 0x0

    .line 5946
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method onConfigured(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5899
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5903
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->callback_done:Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5905
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 5906
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5909
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5910
    invoke-static {v2, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5911
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$11802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5912
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$11900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/view/Surface;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->val$video_recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5917
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/view/Surface;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    :try_start_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5920
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5928
    :try_start_3
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 p2, 0x0

    .line 5931
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5932
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$11802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    .line 5934
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5935
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_4
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->callback_done:Z

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$2MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 5937
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 5938
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2

    :catchall_2
    move-exception p1

    .line 5934
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method
