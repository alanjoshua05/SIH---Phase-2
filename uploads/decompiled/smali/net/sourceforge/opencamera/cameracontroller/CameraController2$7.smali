.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;
.super Ljava/lang/Object;
.source "CameraController2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->takePictureBurst(Z)V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 7420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 7431
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v0

    const-wide/16 v1, 0x64

    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v0

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 7440
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    move-result-object v0

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v3

    iget-object v4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-interface {v0, v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->imageQueueWouldBlock(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 7445
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 7448
    invoke-static {v0, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$12600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$7;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 7438
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
