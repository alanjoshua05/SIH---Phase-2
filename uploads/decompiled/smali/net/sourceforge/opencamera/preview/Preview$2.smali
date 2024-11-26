.class Lnet/sourceforge/opencamera/preview/Preview$2;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->openCameraCore(I)Lnet/sourceforge/opencamera/cameracontroller/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$2;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$2;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1820
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$2;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x0

    .line 1823
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$202(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/cameracontroller/CameraController;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$2;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1824
    sget-object v1, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_CLOSED:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$1402(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;)Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$2;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1825
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onCameraError()V

    :cond_0
    return-void
.end method
