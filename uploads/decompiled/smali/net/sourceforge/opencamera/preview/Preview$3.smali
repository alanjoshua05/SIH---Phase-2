.class Lnet/sourceforge/opencamera/preview/Preview$3;
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$3;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$3;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1837
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onFailedStartPreview()V

    return-void
.end method
