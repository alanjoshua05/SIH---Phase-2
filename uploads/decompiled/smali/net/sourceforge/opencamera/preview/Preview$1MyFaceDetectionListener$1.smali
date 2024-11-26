.class Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$1;
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


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

    .line 2467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

    .line 2469
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2502(Lnet/sourceforge/opencamera/preview/Preview;[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)[Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;

    return-void
.end method
