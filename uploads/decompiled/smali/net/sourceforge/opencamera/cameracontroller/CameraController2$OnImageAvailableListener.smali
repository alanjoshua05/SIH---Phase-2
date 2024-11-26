.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;
.super Ljava/lang/Object;
.source "CameraController2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnImageAvailableListener"
.end annotation


# instance fields
.field private skip_next_image:Z

.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->skip_next_image:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V
    .locals 0

    .line 1518
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    return-void
.end method

.method static synthetic access$8202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;Z)Z
    .locals 0

    .line 1518
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->skip_next_image:Z

    return p1
.end method

.method private takePhotoCompleted()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1781
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 v2, 0x0

    .line 1782
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    .line 1783
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1784
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    return-void

    :catchall_0
    move-exception v1

    .line 1783
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private takePhotoPartial()V
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1647
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1651
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1652
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1657
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    move-result-object v1

    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_FOCUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1677
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    :try_start_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1679
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$16()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1683
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$16()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1685
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CaptureRequest;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1693
    :try_start_2
    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1694
    invoke-static {v1, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1695
    invoke-static {v1, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1696
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1697
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    move-result-object v1

    move-object v2, v1

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1699
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1702
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1706
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1716
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v1, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1719
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1720
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1721
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1722
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1726
    invoke-static {v1, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2802(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1727
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1728
    invoke-static {v1, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    :cond_2
    :goto_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1736
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;

    .line 1737
    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;->CAPTURE:Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;

    invoke-static {v1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;->access$3600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagObject;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$RequestTagType;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1742
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$17()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1746
    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$7()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1747
    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$17()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3, v5, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1749
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-static {v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CaptureRequest;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 1757
    :try_start_4
    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1758
    invoke-static {v1, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1759
    invoke-static {v1, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1760
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1502(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1761
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;

    move-result-object v1

    move-object v2, v1

    :goto_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1763
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    .line 1766
    :cond_4
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_5

    .line 1770
    invoke-interface {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;->onError()V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 1766
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 7

    const-string v0, "pending_burst_images size "

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1525
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->skip_next_image:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->skip_next_image:Z

    .line 1538
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/ImageReader;)Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1540
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Image;)V

    :cond_1
    return-void

    .line 1548
    :cond_2
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/ImageReader;)Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "CameraController2"

    const-string v0, "onImageAvailable: image is null"

    .line 1551
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1556
    :cond_3
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Image;)[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Image$Plane;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1557
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 1560
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1561
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Image;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1563
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1564
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1808(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1570
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1571
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1575
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v6

    if-lt p1, v6, :cond_5

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1578
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v5

    if-le p1, v5, :cond_4

    const-string p1, "CameraController2"

    .line 1579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is greater than n_burst "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 1592
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_7

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1596
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    move-result-object v0

    invoke-interface {v0, v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onBurstPictureTaken(Ljava/util/List;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1598
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1599
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onPictureTaken([B)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1602
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz v5, :cond_9

    :try_start_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1604
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_3
    move v4, p1

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1608
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1609
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2810(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1612
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    move-result-object v1

    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_CONTINUOUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1620
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_b
    move v4, p1

    .line 1627
    :cond_c
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_d

    .line 1631
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->takePhotoPartial()V

    goto :goto_5

    :cond_d
    if-eqz v2, :cond_e

    .line 1634
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnImageAvailableListener;->takePhotoCompleted()V

    :cond_e
    :goto_5
    return-void

    :catchall_0
    move-exception p1

    .line 1627
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 1592
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_f
    :goto_6
    const-string v0, "CameraController2"

    const-string v1, "no picture callback available"

    .line 1528
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/ImageReader;)Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1531
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Image;)V

    :cond_10
    return-void
.end method
