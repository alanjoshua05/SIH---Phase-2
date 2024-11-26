.class Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraController1.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->autoFocus(Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAutoFocusCallback"
.end annotation


# instance fields
.field done_autofocus:Z

.field private final handler:Landroid/os/Handler;

.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

.field final synthetic val$cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->val$cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    .line 1636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->done_autofocus:Z

    .line 1638
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->handler:Landroid/os/Handler;

    .line 1639
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback$1;

    invoke-direct {p1, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback$1;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$400(Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;)V
    .locals 0

    .line 1636
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->setTimeout()V

    return-void
.end method

.method private setTimeout()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    .line 1653
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->runnable:Ljava/lang/Runnable;

    .line 1660
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->done_autofocus:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->done_autofocus:Z

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1MyAutoFocusCallback;->val$cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;

    .line 1668
    invoke-interface {p2, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;->onAutoFocus(Z)V

    :cond_0
    return-void
.end method
