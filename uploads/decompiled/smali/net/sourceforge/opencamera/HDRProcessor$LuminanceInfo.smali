.class public Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;
.super Ljava/lang/Object;
.source "HDRProcessor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/HDRProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LuminanceInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final hi_value:I

.field final median_value:I

.field final min_value:I

.field final noisy:Z


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 2556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->min_value:I

    iput p2, p0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->median_value:I

    iput p3, p0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->hi_value:I

    iput-boolean p4, p0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->noisy:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2550
    check-cast p1, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->compareTo(Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;)I
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->median_value:I

    .line 2571
    iget v1, p1, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->median_value:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->min_value:I

    .line 2574
    iget v1, p1, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->min_value:I

    sub-int/2addr v0, v1

    :cond_0
    if-nez v0, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->hi_value:I

    .line 2578
    iget p1, p1, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->hi_value:I

    sub-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2566
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "min: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->min_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , median: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->median_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , hi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->hi_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , noisy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->noisy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
