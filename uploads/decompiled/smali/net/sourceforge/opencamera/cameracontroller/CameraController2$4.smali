.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$4;
.super Ljava/lang/Object;
.source "CameraController2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;-><init>(Landroid/content/Context;ILnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

.field final synthetic val$myStateCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$4;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$4;->val$myStateCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;

    .line 2274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$4;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2279
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$4;->val$myStateCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;

    .line 2284
    iget-boolean v1, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->callback_done:Z

    if-nez v1, :cond_0

    const-string v1, "CameraController2"

    const-string v2, "timeout waiting for camera callback"

    .line 2286
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$4;->val$myStateCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;

    const/4 v2, 0x1

    .line 2287
    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->first_callback:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$4;->val$myStateCallback:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;

    .line 2288
    iput-boolean v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->callback_done:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$4;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2289
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2291
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
