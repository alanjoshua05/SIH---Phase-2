.class Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1CameraFaceDetectionListener;
.super Ljava/lang/Object;
.source "CameraController1.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setFaceDetectionListener(Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraFaceDetectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

.field final synthetic val$listener:Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1CameraFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1CameraFaceDetectionListener;->val$listener:Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;

    .line 1615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4

    .line 1618
    array-length p2, p1

    new-array p2, p2, [Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    const/4 v0, 0x0

    .line 1619
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1620
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    aget-object v2, p1, v0

    iget v2, v2, Landroid/hardware/Camera$Face;->score:I

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;-><init>(ILandroid/graphics/Rect;)V

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$1CameraFaceDetectionListener;->val$listener:Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;

    .line 1622
    invoke-interface {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$FaceDetectionListener;->onFaceDetection([Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)V

    return-void
.end method
