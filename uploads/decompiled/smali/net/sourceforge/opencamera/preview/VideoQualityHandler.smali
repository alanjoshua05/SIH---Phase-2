.class public Lnet/sourceforge/opencamera/preview/VideoQualityHandler;
.super Ljava/lang/Object;
.source "VideoQualityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;,
        Lnet/sourceforge/opencamera/preview/VideoQualityHandler$SortVideoSizesComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoQualityHandler"


# instance fields
.field private current_video_quality:I

.field private video_quality:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private video_sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation
.end field

.field private video_sizes_high_speed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->current_video_quality:I

    return-void
.end method

.method private addVideoResolutions([ZIII)V
    .locals 6

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes:Ljava/util/List;

    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 105
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes:Ljava/util/List;

    .line 107
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    .line 108
    iget v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    const-string v3, ""

    const/4 v4, 0x1

    if-ne v2, p3, :cond_2

    iget v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    if-ne v2, p4, :cond_2

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_quality:Ljava/util/List;

    .line 110
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    aput-boolean v4, p1, v0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 115
    iget v2, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v5, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v2, v2, v5

    mul-int v5, p3, p4

    if-lt v2, v5, :cond_4

    .line 116
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_quality:Ljava/util/List;

    .line 117
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    aput-boolean v4, p1, v0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static getMaxVideoSize(Ljava/util/List;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;)",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;"
        }
    .end annotation

    .line 194
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    if-eq v1, v0, :cond_1

    .line 195
    iget v4, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iget v5, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    mul-int v4, v4, v5

    mul-int v5, v1, v2

    if-le v4, v5, :cond_0

    .line 196
    :cond_1
    iget v1, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    .line 197
    iget v2, v3, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    goto :goto_0

    .line 200
    :cond_2
    new-instance p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    invoke-direct {p0, v1, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method findVideoSizeForFrameRate(IIDZ)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 1

    .line 181
    new-instance v0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    invoke-direct {v0, p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(II)V

    .line 182
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0, p3, p4, p5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->findSize(Ljava/util/List;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;DZ)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object p1

    if-nez p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoSizesHighSpeed()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 187
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getSupportedVideoSizesHighSpeed()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0, p3, p4, p5}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->findSize(Ljava/util/List;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;DZ)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCurrentVideoQuality()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->current_video_quality:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_quality:Ljava/util/List;

    .line 146
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getCurrentVideoQualityIndex()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->current_video_quality:I

    return v0
.end method

.method getMaxSupportedVideoSize()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes:Ljava/util/List;

    .line 206
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getMaxVideoSize(Ljava/util/List;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v0

    return-object v0
.end method

.method getMaxSupportedVideoSizeHighSpeed()Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes_high_speed:Ljava/util/List;

    .line 212
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->getMaxVideoSize(Ljava/util/List;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedVideoQuality()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_quality:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedVideoSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedVideoSizesHighSpeed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes_high_speed:Ljava/util/List;

    return-object v0
.end method

.method public initialiseVideoQualityFromProfiles(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_quality:Ljava/util/List;

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes:Ljava/util/List;

    .line 59
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 60
    aput-boolean v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 66
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 67
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v2, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;->width:I

    iget v2, v2, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$Dimension2D;->height:I

    invoke-direct {p0, v0, v3, v4, v2}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->addVideoResolutions([ZIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const-string p1, "VideoQualityHandler"

    const-string p2, "profiles and dimensions have unequal sizes"

    .line 63
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method resetCurrentQuality()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_quality:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->current_video_quality:I

    return-void
.end method

.method setCurrentVideoQualityIndex(I)V
    .locals 0

    iput p1, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->current_video_quality:I

    return-void
.end method

.method public setVideoSizes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes:Ljava/util/List;

    .line 217
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->sortVideoSizes()V

    return-void
.end method

.method public setVideoSizesHighSpeed(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes_high_speed:Ljava/util/List;

    return-void
.end method

.method public sortVideoSizes()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes:Ljava/util/List;

    .line 90
    new-instance v1, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$SortVideoSizesComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/sourceforge/opencamera/preview/VideoQualityHandler$SortVideoSizesComparator;-><init>(Lnet/sourceforge/opencamera/preview/VideoQualityHandler$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public videoSupportsFrameRate(I)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes:Ljava/util/List;

    .line 165
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supportsFrameRate(Ljava/util/List;I)Z

    move-result p1

    return p1
.end method

.method public videoSupportsFrameRateHighSpeed(I)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/VideoQualityHandler;->video_sizes_high_speed:Ljava/util/List;

    .line 171
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$CameraFeatures;->supportsFrameRate(Ljava/util/List;I)Z

    move-result p1

    return p1
.end method
