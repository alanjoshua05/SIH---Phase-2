.class Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->onFaceDetection([Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

.field final synthetic val$faces:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

    iput-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->val$faces:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    .line 2481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->val$faces:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    .line 2483
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->access$2600(Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

    .line 2485
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2500(Lnet/sourceforge/opencamera/preview/Preview;)[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2500(Lnet/sourceforge/opencamera/preview/Preview;)[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->val$faces:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

    .line 2489
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->val$faces:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    array-length v1, v1

    new-array v1, v1, [Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2502(Lnet/sourceforge/opencamera/preview/Preview;[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->val$faces:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

    .line 2491
    iget-object v1, v1, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2500(Lnet/sourceforge/opencamera/preview/Preview;)[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$2;->val$faces:[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
