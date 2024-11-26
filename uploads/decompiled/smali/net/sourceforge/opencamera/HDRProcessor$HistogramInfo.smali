.class Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;
.super Ljava/lang/Object;
.source "HDRProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/HDRProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HistogramInfo"
.end annotation


# instance fields
.field final max_brightness:I

.field final mean_brightness:I

.field final median_brightness:I

.field final total:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 3229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->total:I

    iput p2, p0, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->mean_brightness:I

    iput p3, p0, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    iput p4, p0, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->max_brightness:I

    return-void
.end method
