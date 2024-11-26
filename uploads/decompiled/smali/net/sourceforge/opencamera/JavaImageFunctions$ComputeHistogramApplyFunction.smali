.class public Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;
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
    name = "ComputeHistogramApplyFunction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;
    }
.end annotation


# instance fields
.field private histograms:[[I

.field private pixels_rgb_f:[F

.field private pixels_width:I

.field private final type:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;


# direct methods
.method public constructor <init>(Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;)V
    .locals 1

    .line 2552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->type:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 7

    iget-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->type:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    .line 2571
    sget-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_VALUE:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    .line 2573
    aget-object v0, p1, p2

    if-nez v0, :cond_0

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 2574
    aput-object v0, p1, p2

    :cond_0
    move p1, p4

    :goto_0
    add-int v0, p4, p6

    if-ge p1, v0, :cond_2

    iget v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->pixels_width:I

    mul-int v0, v0, p1

    add-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x3

    move v1, p3

    :goto_1
    add-int v2, p3, p5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->pixels_rgb_f:[F

    add-int/lit8 v3, v0, 0x1

    .line 2578
    aget v4, v2, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v6, v0, 0x2

    .line 2579
    aget v3, v2, v3

    add-float/2addr v3, v5

    float-to-int v3, v3

    add-int/lit8 v0, v0, 0x3

    .line 2580
    aget v2, v2, v6

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 2581
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2582
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0xff

    .line 2583
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    .line 2584
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    .line 2585
    aget-object v3, v3, p2

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 2572
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "type not supported: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->type:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 2

    iget-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    .line 2668
    aget-object p4, p1, p2

    if-nez p4, :cond_0

    const/16 p4, 0x100

    new-array p4, p4, [I

    .line 2669
    aput-object p4, p1, p2

    :cond_0
    const/4 p1, 0x0

    const/4 p4, 0x0

    :goto_0
    mul-int/lit8 p5, p6, 0x4

    mul-int p5, p5, p7

    if-ge p4, p5, :cond_4

    add-int/lit8 p5, p4, 0x1

    .line 2671
    aget-byte v0, p3, p4

    add-int/lit8 v1, p4, 0x2

    .line 2672
    aget-byte p5, p3, p5

    .line 2673
    aget-byte v1, p3, v1

    if-gez v0, :cond_1

    add-int/lit16 v0, v0, 0x100

    :cond_1
    if-gez p5, :cond_2

    add-int/lit16 p5, p5, 0x100

    :cond_2
    if-gez v1, :cond_3

    add-int/lit16 v1, v1, 0x100

    :cond_3
    add-int/lit8 p4, p4, 0x4

    .line 2682
    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 2683
    invoke-static {p5, v1}, Ljava/lang/Math;->max(II)I

    move-result p5

    const/16 v0, 0xff

    .line 2684
    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 2685
    invoke-static {p5, p1}, Ljava/lang/Math;->max(II)I

    move-result p5

    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    .line 2686
    aget-object v0, v0, p2

    aget v1, v0, p5

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p5

    goto :goto_0

    :cond_4
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 6

    iget-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    .line 2594
    aget-object p4, p1, p2

    const/16 p5, 0x100

    if-nez p4, :cond_1

    iget-object p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->type:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    .line 2595
    sget-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_RGB:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    if-ne p4, v0, :cond_0

    const/16 p4, 0x300

    goto :goto_0

    :cond_0
    const/16 p4, 0x100

    :goto_0
    new-array p4, p4, [I

    aput-object p4, p1, p2

    .line 2597
    :cond_1
    sget-object p1, Lnet/sourceforge/opencamera/JavaImageFunctions$1;->$SwitchMap$net$sourceforge$opencamera$JavaImageFunctions$ComputeHistogramApplyFunction$Type:[I

    iget-object p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->type:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    invoke-virtual {p4}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->ordinal()I

    move-result p4

    aget p1, p1, p4

    const/4 p4, 0x0

    const/4 v0, 0x1

    const/16 v1, 0xff

    if-eq p1, v0, :cond_6

    const/4 p5, 0x2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-eq p1, p5, :cond_5

    const/4 p5, 0x3

    if-eq p1, p5, :cond_4

    const/4 p5, 0x4

    if-eq p1, p5, :cond_3

    const/4 p5, 0x5

    if-ne p1, p5, :cond_2

    :goto_1
    mul-int p1, p6, p7

    if-ge p4, p1, :cond_7

    .line 2645
    aget p1, p3, p4

    shr-int/lit8 p5, p1, 0x10

    and-int/2addr p5, v1

    shr-int/lit8 v4, p1, 0x8

    and-int/2addr v4, v1

    and-int/2addr p1, v1

    .line 2649
    invoke-static {p5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2650
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2651
    invoke-static {p5, v4}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 2652
    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr p1, v5

    int-to-float p1, p1

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p1, p5

    float-to-double v4, p1

    .line 2654
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    double-to-int p1, v4

    .line 2655
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    .line 2656
    aget-object p5, p5, p2

    aget v4, p5, p1

    add-int/2addr v4, v0

    aput v4, p5, p1

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 2660
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unknown: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->type:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    mul-int p1, p6, p7

    if-ge p4, p1, :cond_7

    .line 2632
    aget p1, p3, p4

    shr-int/lit8 p5, p1, 0x10

    and-int/2addr p5, v1

    int-to-float p5, p5

    shr-int/lit8 v4, p1, 0x8

    and-int/2addr v4, v1

    int-to-float v4, v4

    and-int/2addr p1, v1

    int-to-float p1, p1

    add-float/2addr p5, v4

    add-float/2addr p5, p1

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr p5, p1

    float-to-double v4, p5

    .line 2637
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    double-to-int p1, v4

    .line 2638
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    .line 2639
    aget-object p5, p5, p2

    aget v4, p5, p1

    add-int/2addr v4, v0

    aput v4, p5, p1

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    mul-int p1, p6, p7

    if-ge p4, p1, :cond_7

    .line 2623
    aget p1, p3, p4

    shr-int/lit8 p5, p1, 0x10

    and-int/2addr p5, v1

    shr-int/lit8 v2, p1, 0x8

    and-int/2addr v2, v1

    .line 2624
    invoke-static {p5, v2}, Ljava/lang/Math;->max(II)I

    move-result p5

    and-int/2addr p1, v1

    .line 2625
    invoke-static {p5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    .line 2626
    aget-object p5, p5, p2

    aget v2, p5, p1

    add-int/2addr v2, v0

    aput v2, p5, p1

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    mul-int p1, p6, p7

    if-ge p4, p1, :cond_7

    .line 2610
    aget p1, p3, p4

    shr-int/lit8 p5, p1, 0x10

    and-int/2addr p5, v1

    int-to-float p5, p5

    shr-int/lit8 v4, p1, 0x8

    and-int/2addr v4, v1

    int-to-float v4, v4

    and-int/2addr p1, v1

    int-to-float p1, p1

    const v5, 0x3e991687    # 0.299f

    mul-float p5, p5, v5

    const v5, 0x3f1645a2    # 0.587f

    mul-float v4, v4, v5

    add-float/2addr p5, v4

    const v4, 0x3de978d5    # 0.114f

    mul-float p1, p1, v4

    add-float/2addr p5, p1

    float-to-double v4, p5

    .line 2615
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    double-to-int p1, v4

    .line 2616
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    .line 2617
    aget-object p5, p5, p2

    aget v4, p5, p1

    add-int/2addr v4, v0

    aput v4, p5, p1

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    mul-int p1, p6, p7

    if-ge p4, p1, :cond_7

    .line 2601
    aget p1, p3, p4

    iget-object v2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    .line 2602
    aget-object v2, v2, p2

    shr-int/lit8 v3, p1, 0x10

    and-int/2addr v3, v1

    aget v4, v2, v3

    add-int/2addr v4, v0

    aput v4, v2, v3

    shr-int/lit8 v3, p1, 0x8

    and-int/2addr v3, v1

    add-int/2addr v3, p5

    .line 2603
    aget v4, v2, v3

    add-int/2addr v4, v0

    aput v4, v2, v3

    and-int/2addr p1, v1

    add-int/lit16 p1, p1, 0x200

    .line 2604
    aget v3, v2, p1

    add-int/2addr v3, v0

    aput v3, v2, p1

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public getHistogram()[I
    .locals 9

    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    const/4 v1, 0x0

    .line 2691
    aget-object v2, v0, v1

    array-length v2, v2

    new-array v2, v2, [I

    .line 2693
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    const/4 v6, 0x0

    .line 2694
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 2695
    aget v7, v2, v6

    aget v8, v5, v6

    add-int/2addr v7, v8

    aput v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public init(I)V
    .locals 0

    .line 2565
    new-array p1, p1, [[I

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->histograms:[[I

    return-void
.end method

.method setPixelsRGBf([FI)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->pixels_rgb_f:[F

    iput p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->pixels_width:I

    return-void
.end method
