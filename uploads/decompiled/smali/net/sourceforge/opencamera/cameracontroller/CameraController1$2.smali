.class Lnet/sourceforge/opencamera/cameracontroller/CameraController1$2;
.super Ljava/lang/Object;
.source "CameraController1.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setContinuousFocusMoveCallback(Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

.field final synthetic val$cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$2;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$2;->val$cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;

    .line 1719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 0

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$2;->val$cb:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;

    .line 1724
    invoke-interface {p2, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;->onContinuousFocusMove(Z)V

    return-void
.end method
