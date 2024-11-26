.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$6;
.super Ljava/lang/Object;
.source "CameraController2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->takePictureAfterPrecapture()V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$6;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 6705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$6;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 6710
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->release()V

    return-void
.end method
