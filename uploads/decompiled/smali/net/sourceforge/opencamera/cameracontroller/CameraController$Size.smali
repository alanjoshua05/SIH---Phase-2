.class public Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field final fps_ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field public final height:I

.field public final high_speed:Z

.field public supported_extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public supports_burst:Z

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;-><init>(IILjava/util/List;Z)V

    return-void
.end method

.method constructor <init>(IILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "[I>;Z)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    iput p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supports_burst:Z

    iput-object p3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->fps_ranges:Ljava/util/List;

    iput-boolean p4, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->high_speed:Z

    .line 181
    new-instance p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$RangeSorter;

    invoke-direct {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$RangeSorter;-><init>()V

    invoke-static {p3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public closestFrameRate(D)I
    .locals 10

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->fps_ranges:Ljava/util/List;

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    .line 210
    aget v5, v4, v5

    int-to-double v6, v5

    const/4 v8, 0x1

    cmpg-double v9, v6, p1

    if-gtz v9, :cond_1

    aget v6, v4, v8

    int-to-double v6, v6

    cmpg-double v9, p1, v6

    if-gtz v9, :cond_1

    double-to-int p1, p1

    return p1

    :cond_1
    int-to-double v6, v5

    cmpg-double v9, p1, v6

    if-gez v9, :cond_2

    goto :goto_1

    .line 216
    :cond_2
    aget v5, v4, v8

    :goto_1
    double-to-int v4, p1

    sub-int v4, v5, v4

    .line 217
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-eq v3, v1, :cond_3

    if-ge v4, v3, :cond_0

    :cond_3
    move v3, v4

    move v2, v5

    goto :goto_0

    :cond_4
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 228
    instance-of v0, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 230
    :cond_0
    check-cast p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    .line 231
    iget v2, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    iget p1, p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    mul-int/lit8 v0, v0, 0x29

    iget v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public supportsExtension(I)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supported_extensions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsFrameRate(D)Z
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->fps_ranges:Ljava/util/List;

    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 200
    aget v2, v1, v2

    int-to-double v2, v2

    cmpg-double v4, v2, p1

    if-gtz v4, :cond_0

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-double v3, v1

    cmpg-double v1, p1, v3

    if-gtz v1, :cond_0

    :cond_1
    return v2
.end method

.method public supportsRequirements(ZZI)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supports_burst:Z

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 191
    invoke-virtual {p0, p3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->supportsExtension(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->fps_ranges:Ljava/util/List;

    .line 247
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const-string v3, " ["

    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 250
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Size;->high_speed:Z

    if-eqz v0, :cond_1

    const-string v0, "-hs"

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
