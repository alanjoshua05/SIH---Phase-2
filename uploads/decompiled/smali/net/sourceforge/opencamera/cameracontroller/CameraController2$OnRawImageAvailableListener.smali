.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;
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
    name = "OnRawImageAvailableListener"
.end annotation


# instance fields
.field private final capture_results:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final images:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private skip_next_image:Z

.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1789
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->capture_results:Ljava/util/Queue;

    .line 1790
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->images:Ljava/util/Queue;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->skip_next_image:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1;)V
    .locals 0

    .line 1788
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    return-void
.end method

.method static synthetic access$3900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;)V
    .locals 0

    .line 1788
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->processImage()V

    return-void
.end method

.method static synthetic access$8302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;Z)Z
    .locals 0

    .line 1788
    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->skip_next_image:Z

    return p1
.end method

.method private processImage()V
    .locals 7

    const-string v0, "pending_burst_images_raw size "

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1840
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->capture_results:Ljava/util/Queue;

    .line 1841
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1844
    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->images:Ljava/util/Queue;

    .line 1846
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1849
    monitor-exit v1

    return-void

    :cond_1
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->capture_results:Ljava/util/Queue;

    .line 1851
    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->images:Ljava/util/Queue;

    .line 1852
    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/Image;

    move-result-object v3

    .line 1857
    new-instance v4, Landroid/hardware/camera2/DngCreator;

    iget-object v5, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1859
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$4100(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)I

    move-result v2

    invoke-static {v4, v2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/DngCreator;I)Landroid/hardware/camera2/DngCreator;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1860
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$4200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1861
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4000(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;->access$4200(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$CameraSettings;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v4, v2}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/DngCreator;Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    :cond_2
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1864
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    move-result-object v2

    sget-object v6, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_CONTINUOUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-eq v2, v6, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1870
    new-instance v2, Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    invoke-direct {v2, v4, v3}, Lnet/sourceforge/opencamera/cameracontroller/RawImage;-><init>(Landroid/hardware/camera2/DngCreator;Landroid/media/Image;)V

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/RawImage;)Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1872
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1873
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v2

    new-instance v6, Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    invoke-direct {v6, v4, v3}, Lnet/sourceforge/opencamera/cameracontroller/RawImage;-><init>(Landroid/hardware/camera2/DngCreator;Landroid/media/Image;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1877
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v6

    if-lt v2, v6, :cond_5

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1880
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v6, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v6}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v6

    if-le v2, v6, :cond_4

    const-string v2, "CameraController2"

    .line 1881
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is greater than n_burst_raw "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x0

    .line 1893
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1895
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1898
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    goto/16 :goto_5

    :cond_6
    if-eqz v0, :cond_7

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1904
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onRawBurstPictureTaken(Ljava/util/List;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1906
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1907
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    move-result-object v1

    new-instance v2, Lnet/sourceforge/opencamera/cameracontroller/RawImage;

    invoke-direct {v2, v4, v3}, Lnet/sourceforge/opencamera/cameracontroller/RawImage;-><init>(Landroid/hardware/camera2/DngCreator;Landroid/media/Image;)V

    invoke-interface {v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;->onRawPictureTaken(Lnet/sourceforge/opencamera/cameracontroller/RawImage;)V

    :cond_8
    :goto_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1910
    invoke-static {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    :try_start_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1912
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1916
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2600(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1917
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3510(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1920
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    move-result-object v0

    sget-object v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;->BURSTTYPE_CONTINUOUS:Lnet/sourceforge/opencamera/cameracontroller/CameraController$BurstType;

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1927
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v5, 0x0

    .line 1931
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_c

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1935
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1936
    invoke-static {v2, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2302(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Z)Z

    .line 1937
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1938
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3700(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 1937
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_c
    :goto_5
    return-void

    :catchall_1
    move-exception v0

    .line 1931
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 1893
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method


# virtual methods
.method clear()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1823
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->capture_results:Ljava/util/Queue;

    .line 1825
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->images:Ljava/util/Queue;

    .line 1826
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 1827
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1950
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->skip_next_image:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->skip_next_image:Z

    .line 1963
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/ImageReader;)Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1965
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Image;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1968
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1970
    :try_start_0
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/ImageReader;)Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "CameraController2"

    const-string v1, "RAW onImageAvailable: image is null"

    .line 1972
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    monitor-exit v0

    return-void

    :cond_3
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->images:Ljava/util/Queue;

    .line 1975
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1976
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    invoke-direct {p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->processImage()V

    return-void

    :catchall_0
    move-exception p1

    .line 1976
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_0
    const-string v0, "CameraController2"

    const-string v1, "no picture callback available"

    .line 1953
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/ImageReader;)Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1956
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Image;)V

    :cond_5
    return-void
.end method

.method setCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1796
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$2500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->capture_results:Ljava/util/Queue;

    .line 1800
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->images:Ljava/util/Queue;

    .line 1801
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 1806
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$3800(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 1807
    new-instance v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener$1;-><init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2$OnRawImageAvailableListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1817
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
