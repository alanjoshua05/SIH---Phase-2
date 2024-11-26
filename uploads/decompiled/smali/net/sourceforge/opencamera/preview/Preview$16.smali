.class Lnet/sourceforge/opencamera/preview/Preview$16;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->takePhotoWhenFocused(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private current_date:Ljava/util/Date;

.field private has_date:Z

.field private success:Z

.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;

.field final synthetic val$focus_value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iput-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->val$focus_value:Ljava/lang/String;

    .line 6382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->success:Z

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->has_date:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->current_date:Ljava/util/Date;

    return-void
.end method

.method private initDate()V
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->has_date:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->has_date:Z

    .line 6472
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->current_date:Ljava/util/Date;

    :cond_0
    return-void
.end method


# virtual methods
.method public imageQueueWouldBlock(II)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6535
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->imageQueueWouldBlock(II)Z

    move-result p1

    return p1
.end method

.method public onBurstPictureTaken(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 6505
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview$16;->initDate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->success:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6508
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->current_date:Ljava/util/Date;

    invoke-interface {v0, p1, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onBurstPictureTaken(Ljava/util/List;Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->success:Z

    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6401
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onPictureCompleted()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6402
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$4500(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6403
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$902(Lnet/sourceforge/opencamera/preview/Preview;Z)Z

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6405
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$4602(Lnet/sourceforge/opencamera/preview/Preview;I)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6406
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$4700(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$4700(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6419
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$4602(Lnet/sourceforge/opencamera/preview/Preview;I)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6420
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getPausePreviewPref()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->success:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6424
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$900(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6428
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6429
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->stopPreview()V

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6431
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$902(Lnet/sourceforge/opencamera/preview/Preview;Z)Z

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x1

    .line 6433
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$4800(Lnet/sourceforge/opencamera/preview/Preview;Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6436
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$900(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6439
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->startCameraPreview()V

    :cond_5
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6441
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6407
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$900(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6412
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->startCameraPreview()V

    :cond_7
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6416
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->cameraInOperation(ZZ)V

    :goto_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6446
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$4900(Lnet/sourceforge/opencamera/preview/Preview;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6447
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->val$focus_value:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v1, "focus_mode_continuous_picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->val$focus_value:Ljava/lang/String;

    const-string v1, "focus_mode_continuous_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6450
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->cancelAutoFocus()V

    :cond_9
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6453
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getBurstType()Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_CONTINUOUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6456
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->setupBurstMode()V

    :cond_a
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6461
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$4700(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v0

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$4700(Lnet/sourceforge/opencamera/preview/Preview;)I

    move-result v0

    if-lez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6462
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$5000(Lnet/sourceforge/opencamera/preview/Preview;)V

    :cond_c
    return-void
.end method

.method public onExtensionProgress(I)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6529
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onExtensionProgress(I)V

    return-void
.end method

.method public onFrontScreenTurnOn()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6541
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->turnFrontScreenFlashOn()V

    return-void
.end method

.method public onPictureTaken([B)V
    .locals 2

    .line 6481
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview$16;->initDate()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6482
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->current_date:Ljava/util/Date;

    invoke-interface {v0, p1, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onPictureTaken([BLjava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->success:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->success:Z

    :goto_0
    return-void
.end method

.method public onRawBurstPictureTaken(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/RawImage;",
            ">;)V"
        }
    .end annotation

    .line 6518
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview$16;->initDate()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6520
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->current_date:Ljava/util/Date;

    invoke-interface {v0, p1, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onRawBurstPictureTaken(Ljava/util/List;Ljava/util/Date;)Z

    return-void
.end method

.method public onRawPictureTaken(Lnet/sourceforge/opencamera/cameracontroller/RawImage;)V
    .locals 2

    .line 6495
    invoke-direct {p0}, Lnet/sourceforge/opencamera/preview/Preview$16;->initDate()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6496
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->current_date:Ljava/util/Date;

    invoke-interface {v0, p1, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onRawPictureTaken(Lnet/sourceforge/opencamera/cameracontroller/RawImage;Ljava/util/Date;)Z

    return-void
.end method

.method public onStarted()V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6390
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onCaptureStarted()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6391
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getBurstForNoiseReduction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->getNRModePref()Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    move-result-object v0

    sget-object v1, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->NRMODE_LOW_LIGHT:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6392
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$200(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->getBurstTotal()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$16;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const v1, 0x7f1001e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6393
    invoke-virtual {v0, v3, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;IZ)V

    :cond_0
    return-void
.end method
