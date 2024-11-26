.class Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;
.super Ljava/lang/Object;
.source "CameraController1.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->takePictureNow(Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

.field final synthetic val$error:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

.field final synthetic val$picture:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->val$picture:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iput-object p3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->val$error:Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    .line 1768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1774
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$600(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$700(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_4

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1775
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1776
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$700(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)I

    move-result p2

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1779
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$700(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)I

    move-result p2

    if-le p1, p2, :cond_0

    .line 1780
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "pending_burst_images size "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is greater than n_burst "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$700(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraController1"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1784
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$900(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setExposureCompensation(I)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1789
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 1790
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1793
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1796
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1799
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->val$picture:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    .line 1802
    invoke-interface {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onBurstPictureTaken(Ljava/util/List;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1803
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->val$picture:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    .line 1804
    invoke-interface {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onCompleted()V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1810
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$900(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->access$800(Lnet/sourceforge/opencamera/cameracontroller/CameraController1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->setExposureCompensation(I)Z

    :try_start_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController1;

    .line 1815
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1;->startPreview()V
    :try_end_0
    .catch Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1820
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerException;->printStackTrace()V

    .line 1823
    :goto_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 1824
    new-instance p2, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3$1;

    invoke-direct {p2, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3$1;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->val$picture:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    .line 1837
    invoke-interface {p2, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onPictureTaken([B)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController1$3;->val$picture:Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    .line 1838
    invoke-interface {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onCompleted()V

    :goto_3
    return-void
.end method
