.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$3;
.super Ljava/lang/Object;
.source "CameraController2.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


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


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2068
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
