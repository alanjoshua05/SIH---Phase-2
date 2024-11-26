.class Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;
.super Ljava/lang/Object;
.source "JavaImageFunctions.java"

# interfaces
.implements Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/JavaImageFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DROBrightenApplyFunction"
.end annotation


# instance fields
.field private final gain_A:F

.field private final gain_B:F

.field private final gamma:F

.field private final low_x:F

.field private final max_x:F

.field private final mid_x:F

.field private final value_to_gamma_scale_lut:[F


# direct methods
.method constructor <init>(FFFFF)V
    .locals 5

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [F

    iput-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->value_to_gamma_scale_lut:[F

    iput p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gamma:F

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->low_x:F

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->mid_x:F

    iput p5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->max_x:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p4, p3

    if-lez v2, :cond_0

    mul-float v2, p1, p4

    sub-float/2addr v2, p3

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    iput v2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gain_A:F

    mul-float p3, p3, p4

    sub-float/2addr v1, p1

    mul-float p3, p3, v1

    div-float/2addr p3, v3

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gain_B:F

    goto :goto_0

    :cond_0
    iput v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gain_A:F

    const/4 p1, 0x0

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gain_B:F

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_1

    int-to-float p3, p1

    div-float p4, p3, p5

    float-to-double v1, p4

    float-to-double v3, p2

    .line 443
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p4, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p4, p4, v1

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->value_to_gamma_scale_lut:[F

    div-float/2addr p4, p3

    .line 444
    aput p4, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F
    .locals 0

    .line 406
    iget p0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->max_x:F

    return p0
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F
    .locals 0

    .line 406
    iget p0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gamma:F

    return p0
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F
    .locals 0

    .line 406
    iget p0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->low_x:F

    return p0
.end method

.method static synthetic access$400(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F
    .locals 0

    .line 406
    iget p0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->mid_x:F

    return p0
.end method

.method static synthetic access$500(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F
    .locals 0

    .line 406
    iget p0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gain_A:F

    return p0
.end method

.method static synthetic access$600(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F
    .locals 0

    .line 406
    iget p0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gain_B:F

    return p0
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 455
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 515
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsB()[B

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p5

    const/4 v4, 0x0

    :goto_0
    add-int v5, p5, p7

    if-ge v3, v5, :cond_6

    move/from16 v5, p4

    :goto_1
    add-int v6, p4, p6

    if-ge v5, v6, :cond_5

    .line 518
    aget-byte v6, p3, v4

    add-int/lit8 v7, v4, 0x1

    .line 519
    aget-byte v8, p3, v7

    add-int/lit8 v9, v4, 0x2

    .line 520
    aget-byte v10, p3, v9

    if-gez v6, :cond_0

    add-int/lit16 v6, v6, 0x100

    :cond_0
    if-gez v8, :cond_1

    add-int/lit16 v8, v8, 0x100

    :cond_1
    if-gez v10, :cond_2

    add-int/lit16 v10, v10, 0x100

    :cond_2
    int-to-float v6, v6

    int-to-float v8, v8

    int-to-float v10, v10

    .line 530
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 531
    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->low_x:F

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_3

    goto :goto_3

    :cond_3
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->mid_x:F

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_4

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gain_A:F

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gain_B:F

    div-float v14, v13, v11

    add-float/2addr v14, v12

    mul-float v6, v6, v14

    div-float v14, v13, v11

    add-float/2addr v14, v12

    mul-float v8, v8, v14

    div-float/2addr v13, v11

    add-float/2addr v12, v13

    goto :goto_2

    :cond_4
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->max_x:F

    div-float v12, v11, v12

    float-to-double v12, v12

    iget v14, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gamma:F

    float-to-double v14, v14

    .line 548
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float v12, v12, v13

    div-float/2addr v12, v11

    mul-float v6, v6, v12

    mul-float v8, v8, v12

    :goto_2
    mul-float v10, v10, v12

    :goto_3
    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v6, v11

    float-to-int v6, v6

    add-float/2addr v8, v11

    float-to-int v8, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    const/16 v11, 0xff

    .line 560
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 561
    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 562
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-byte v6, v6

    .line 564
    aput-byte v6, v1, v4

    int-to-byte v6, v8

    .line 565
    aput-byte v6, v1, v7

    int-to-byte v6, v10

    .line 566
    aput-byte v6, v1, v9

    add-int/lit8 v6, v4, 0x3

    const/4 v7, -0x1

    .line 567
    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 15

    move-object v0, p0

    .line 460
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p5

    const/4 v4, 0x0

    :goto_0
    add-int v5, p5, p7

    if-ge v3, v5, :cond_3

    move/from16 v5, p4

    :goto_1
    add-int v6, p4, p6

    if-ge v5, v6, :cond_2

    .line 464
    aget v6, p3, v4

    shr-int/lit8 v7, v6, 0x10

    const/16 v8, 0xff

    and-int/2addr v7, v8

    shr-int/lit8 v9, v6, 0x8

    and-int/2addr v9, v8

    and-int/2addr v6, v8

    int-to-float v7, v7

    int-to-float v9, v9

    int-to-float v6, v6

    .line 470
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 471
    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->low_x:F

    const/high16 v12, 0x3f000000    # 0.5f

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_0

    goto :goto_2

    :cond_0
    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->mid_x:F

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_1

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gain_A:F

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->gain_B:F

    div-float v14, v13, v10

    add-float/2addr v14, v11

    mul-float v7, v7, v14

    div-float v14, v13, v10

    add-float/2addr v14, v11

    mul-float v9, v9, v14

    div-float/2addr v13, v10

    add-float/2addr v11, v13

    mul-float v6, v6, v11

    goto :goto_2

    :cond_1
    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->value_to_gamma_scale_lut:[F

    add-float/2addr v10, v12

    float-to-int v10, v10

    .line 491
    aget v10, v11, v10

    mul-float v7, v7, v10

    mul-float v9, v9, v10

    mul-float v6, v6, v10

    :goto_2
    add-float/2addr v7, v12

    float-to-int v7, v7

    add-float/2addr v9, v12

    float-to-int v9, v9

    add-float/2addr v6, v12

    float-to-int v6, v6

    .line 503
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 504
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 505
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v8, -0x1000000

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v9, 0x8

    or-int/2addr v7, v8

    or-int/2addr v6, v7

    .line 508
    aput v6, v1, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
