.class public Lnet/sourceforge/opencamera/JavaImageFunctions$ZebraStripesApplyFunction;
.super Ljava/lang/Object;
.source "JavaImageFunctions.java"

# interfaces
.implements Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/JavaImageFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZebraStripesApplyFunction"
.end annotation


# instance fields
.field private final zebra_stripes_background:I

.field private final zebra_stripes_foreground:I

.field private final zebra_stripes_threshold:I

.field private final zebra_stripes_width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 2708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ZebraStripesApplyFunction;->zebra_stripes_threshold:I

    iput p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ZebraStripesApplyFunction;->zebra_stripes_foreground:I

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ZebraStripesApplyFunction;->zebra_stripes_background:I

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ZebraStripesApplyFunction;->zebra_stripes_width:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 2722
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 2755
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 6

    .line 2727
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object p1

    const/4 p2, 0x0

    move v0, p5

    const/4 v1, 0x0

    :goto_0
    add-int v2, p5, p7

    if-ge v0, v2, :cond_3

    move v2, p4

    :goto_1
    add-int v3, p4, p6

    if-ge v2, v3, :cond_2

    .line 2731
    aget v3, p3, v1

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 2733
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    and-int/lit16 v3, v3, 0xff

    .line 2734
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ZebraStripesApplyFunction;->zebra_stripes_threshold:I

    if-lt v3, v4, :cond_1

    add-int v3, v2, v0

    iget v4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ZebraStripesApplyFunction;->zebra_stripes_width:I

    .line 2737
    div-int/2addr v3, v4

    .line 2738
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    iget v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ZebraStripesApplyFunction;->zebra_stripes_background:I

    .line 2739
    aput v3, p1, v1

    goto :goto_2

    :cond_0
    iget v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ZebraStripesApplyFunction;->zebra_stripes_foreground:I

    .line 2742
    aput v3, p1, v1

    goto :goto_2

    .line 2746
    :cond_1
    aput p2, p1, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
