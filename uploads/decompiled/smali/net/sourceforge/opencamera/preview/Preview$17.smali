.class Lnet/sourceforge/opencamera/preview/Preview$17;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->takePhotoWhenFocused(Z)V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$17;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$17;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6548
    iget v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraTakePicture:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraTakePicture:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$17;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6552
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onPhotoError()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$17;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x0

    .line 6553
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$4602(Lnet/sourceforge/opencamera/preview/Preview;I)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$17;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6554
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->startCameraPreview()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$17;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6555
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    return-void
.end method
