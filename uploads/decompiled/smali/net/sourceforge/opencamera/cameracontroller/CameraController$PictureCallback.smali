.class public interface abstract Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PictureCallback"
.end annotation


# virtual methods
.method public abstract imageQueueWouldBlock(II)Z
.end method

.method public abstract onBurstPictureTaken(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation
.end method

.method public abstract onCompleted()V
.end method

.method public abstract onExtensionProgress(I)V
.end method

.method public abstract onFrontScreenTurnOn()V
.end method

.method public abstract onPictureTaken([B)V
.end method

.method public abstract onRawBurstPictureTaken(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/RawImage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRawPictureTaken(Lnet/sourceforge/opencamera/cameracontroller/RawImage;)V
.end method

.method public abstract onStarted()V
.end method
