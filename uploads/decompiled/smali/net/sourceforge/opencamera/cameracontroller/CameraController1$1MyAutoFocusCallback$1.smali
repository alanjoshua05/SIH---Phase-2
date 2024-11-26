.class Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback$1;
.super Ljava/lang/Object;
.source "CameraController1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;

    .line 1639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;

    .line 1644
    iget-boolean v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->done_autofocus:Z

    if-nez v0, :cond_0

    const-string v0, "CameraController1"

    const-string v1, "autofocus timeout!"

    .line 1645
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;

    const/4 v1, 0x1

    .line 1646
    iput-boolean v1, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->done_autofocus:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback$1;->this$1:Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;

    .line 1647
    iget-object v0, v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->val$cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;->onAutoFocus(Z)V

    :cond_0
    return-void
.end method
