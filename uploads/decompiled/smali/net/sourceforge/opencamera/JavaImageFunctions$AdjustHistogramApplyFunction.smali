.class Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;
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
    name = "AdjustHistogramApplyFunction"
.end annotation


# instance fields
.field private final c_histogram:[I

.field private final hdr_alpha:F

.field private final height:I

.field private final n_tiles:I

.field private final width:I


# direct methods
.method constructor <init>(FIII[I)V
    .locals 0

    .line 2334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->hdr_alpha:F

    iput p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->n_tiles:I

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->width:I

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->height:I

    iput-object p5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->c_histogram:[I

    return-void
.end method

.method private getEqualValue(II)I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->c_histogram:[I

    add-int/2addr p2, p1

    .line 2343
    aget p2, v0, p2

    .line 2344
    aget v1, v0, p1

    add-int/lit16 p1, p1, 0xff

    .line 2345
    aget p1, v0, p1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p2, p1

    mul-float p2, p2, v0

    float-to-int p1, p2

    return p1
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 2359
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 20

    move-object/from16 v0, p0

    .line 2450
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsB()[B

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p5

    :goto_0
    add-int v4, p5, p7

    if-ge v3, v4, :cond_d

    move/from16 v4, p4

    :goto_1
    add-int v5, p4, p6

    if-ge v4, v5, :cond_c

    .line 2453
    aget-byte v5, p3, v2

    add-int/lit8 v6, v2, 0x1

    .line 2454
    aget-byte v7, p3, v6

    add-int/lit8 v8, v2, 0x2

    .line 2455
    aget-byte v9, p3, v8

    if-gez v5, :cond_0

    add-int/lit16 v5, v5, 0x100

    :cond_0
    if-gez v7, :cond_1

    add-int/lit16 v7, v7, 0x100

    :cond_1
    if-gez v9, :cond_2

    add-int/lit16 v9, v9, 0x100

    .line 2464
    :cond_2
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2465
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v11, v4

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->n_tiles:I

    int-to-float v13, v12

    mul-float v11, v11, v13

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->width:I

    int-to-float v13, v13

    div-float/2addr v11, v13

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float/2addr v11, v13

    int-to-float v14, v3

    int-to-float v15, v12

    mul-float v14, v14, v15

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->height:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    sub-float/2addr v14, v13

    move/from16 p2, v14

    float-to-double v13, v11

    const-wide/16 v15, 0x0

    cmpl-double v17, v13, v15

    float-to-int v13, v11

    if-ltz v17, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v13, -0x1

    :goto_2
    move/from16 v14, p2

    move/from16 v17, v3

    move/from16 p2, v4

    float-to-double v3, v14

    cmpl-double v18, v3, v15

    float-to-int v3, v14

    if-ltz v18, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v13, :cond_5

    add-int/lit8 v15, v12, -0x1

    if-ge v13, v15, :cond_5

    if-ltz v3, :cond_5

    add-int/lit8 v15, v12, -0x1

    if-ge v3, v15, :cond_5

    mul-int v15, v13, v12

    add-int/2addr v15, v3

    mul-int/lit16 v15, v15, 0x100

    add-int/lit8 v16, v13, 0x1

    mul-int v18, v16, v12

    add-int v4, v18, v3

    mul-int/lit16 v4, v4, 0x100

    mul-int v18, v13, v12

    add-int v18, v18, v3

    move/from16 v19, v8

    add-int/lit8 v8, v18, 0x1

    mul-int/lit16 v8, v8, 0x100

    mul-int v16, v16, v12

    add-int v16, v16, v3

    add-int/lit8 v12, v16, 0x1

    mul-int/lit16 v12, v12, 0x100

    .line 2484
    invoke-direct {v0, v15, v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v15

    .line 2485
    invoke-direct {v0, v4, v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v4

    .line 2486
    invoke-direct {v0, v8, v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v8

    .line 2487
    invoke-direct {v0, v12, v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v12

    int-to-float v13, v13

    sub-float/2addr v11, v13

    int-to-float v3, v3

    sub-float/2addr v14, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v13, v3, v11

    int-to-float v15, v15

    mul-float v15, v15, v13

    int-to-float v4, v4

    mul-float v4, v4, v11

    add-float/2addr v15, v4

    int-to-float v4, v8

    mul-float v13, v13, v4

    int-to-float v4, v12

    mul-float v11, v11, v4

    add-float/2addr v13, v11

    sub-float v4, v3, v14

    mul-float v4, v4, v15

    mul-float v14, v14, v13

    add-float/2addr v4, v14

    float-to-int v3, v4

    goto :goto_4

    :cond_5
    move/from16 v19, v8

    if-ltz v13, :cond_7

    add-int/lit8 v4, v12, -0x1

    if-ge v13, v4, :cond_7

    if-gez v3, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    mul-int v4, v13, v12

    add-int/2addr v4, v3

    mul-int/lit16 v4, v4, 0x100

    add-int/lit8 v8, v13, 0x1

    mul-int v8, v8, v12

    add-int/2addr v8, v3

    mul-int/lit16 v8, v8, 0x100

    .line 2499
    invoke-direct {v0, v4, v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v3

    .line 2500
    invoke-direct {v0, v8, v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v4

    int-to-float v8, v13

    sub-float/2addr v11, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v12, v8, v11

    int-to-float v3, v3

    mul-float v12, v12, v3

    int-to-float v3, v4

    mul-float v11, v11, v3

    add-float/2addr v12, v11

    float-to-int v3, v12

    goto :goto_4

    :cond_7
    if-ltz v3, :cond_9

    add-int/lit8 v4, v12, -0x1

    if-ge v3, v4, :cond_9

    if-gez v13, :cond_8

    add-int/lit8 v13, v13, 0x1

    :cond_8
    mul-int v4, v13, v12

    add-int/2addr v4, v3

    mul-int/lit16 v4, v4, 0x100

    mul-int v13, v13, v12

    add-int/2addr v13, v3

    add-int/lit8 v13, v13, 0x1

    mul-int/lit16 v13, v13, 0x100

    .line 2508
    invoke-direct {v0, v4, v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v4

    .line 2509
    invoke-direct {v0, v13, v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v8

    int-to-float v3, v3

    sub-float/2addr v14, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v11, v3, v14

    int-to-float v3, v4

    mul-float v11, v11, v3

    int-to-float v3, v8

    mul-float v14, v14, v3

    add-float/2addr v11, v14

    float-to-int v3, v11

    goto :goto_4

    :cond_9
    if-gez v13, :cond_a

    add-int/lit8 v13, v13, 0x1

    :cond_a
    if-gez v3, :cond_b

    add-int/lit8 v3, v3, 0x1

    :cond_b
    mul-int v13, v13, v12

    add-int/2addr v13, v3

    mul-int/lit16 v13, v13, 0x100

    .line 2517
    invoke-direct {v0, v13, v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v3

    :goto_4
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->hdr_alpha:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v4

    int-to-float v10, v10

    mul-float v8, v8, v10

    int-to-float v3, v3

    mul-float v4, v4, v3

    add-float/2addr v8, v4

    float-to-int v3, v8

    int-to-float v3, v3

    div-float/2addr v3, v10

    int-to-float v4, v5

    mul-float v4, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v8, 0xff

    .line 2530
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    int-to-float v4, v7

    mul-float v4, v4, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 2531
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    int-to-float v4, v9

    mul-float v4, v4, v3

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 2532
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v19

    add-int/lit8 v3, v2, 0x3

    const/4 v4, -0x1

    .line 2533
    aput-byte v4, v1, v3

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v2, v2, 0x4

    move/from16 v3, v17

    goto/16 :goto_1

    :cond_c
    move/from16 v17, v3

    add-int/lit8 v3, v17, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 20

    move-object/from16 v0, p0

    .line 2364
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p5

    :goto_0
    add-int v4, p5, p7

    if-ge v3, v4, :cond_a

    move/from16 v4, p4

    :goto_1
    add-int v5, p4, p6

    if-ge v4, v5, :cond_9

    .line 2368
    aget v5, p3, v2

    shr-int/lit8 v6, v5, 0x10

    const/16 v7, 0xff

    and-int/2addr v6, v7

    shr-int/lit8 v8, v5, 0x8

    and-int/2addr v8, v7

    and-int/2addr v5, v7

    .line 2373
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2374
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v10, v4

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->n_tiles:I

    int-to-float v12, v11

    mul-float v10, v10, v12

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->width:I

    int-to-float v12, v12

    div-float/2addr v10, v12

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float/2addr v10, v12

    int-to-float v13, v3

    int-to-float v14, v11

    mul-float v13, v13, v14

    iget v14, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->height:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float/2addr v13, v12

    float-to-double v14, v10

    const-wide/16 v16, 0x0

    cmpl-double v18, v14, v16

    float-to-int v14, v10

    if-ltz v18, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v14, v14, -0x1

    :goto_2
    move v15, v8

    float-to-double v7, v13

    cmpl-double v18, v7, v16

    float-to-int v7, v13

    if-ltz v18, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, -0x1

    :goto_3
    if-ltz v14, :cond_2

    add-int/lit8 v12, v11, -0x1

    if-ge v14, v12, :cond_2

    if-ltz v7, :cond_2

    add-int/lit8 v12, v11, -0x1

    if-ge v7, v12, :cond_2

    mul-int v12, v14, v11

    add-int/2addr v12, v7

    mul-int/lit16 v12, v12, 0x100

    add-int/lit8 v16, v14, 0x1

    mul-int v17, v16, v11

    add-int v8, v17, v7

    mul-int/lit16 v8, v8, 0x100

    mul-int v17, v14, v11

    add-int v17, v17, v7

    move/from16 v19, v15

    add-int/lit8 v15, v17, 0x1

    mul-int/lit16 v15, v15, 0x100

    mul-int v16, v16, v11

    add-int v16, v16, v7

    add-int/lit8 v11, v16, 0x1

    mul-int/lit16 v11, v11, 0x100

    .line 2393
    invoke-direct {v0, v12, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v12

    .line 2394
    invoke-direct {v0, v8, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v8

    .line 2395
    invoke-direct {v0, v15, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v15

    .line 2396
    invoke-direct {v0, v11, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v11

    int-to-float v14, v14

    sub-float/2addr v10, v14

    int-to-float v7, v7

    sub-float/2addr v13, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v14, v7, v10

    int-to-float v12, v12

    mul-float v12, v12, v14

    int-to-float v8, v8

    mul-float v8, v8, v10

    add-float/2addr v12, v8

    int-to-float v8, v15

    mul-float v14, v14, v8

    int-to-float v8, v11

    mul-float v10, v10, v8

    add-float/2addr v14, v10

    sub-float v8, v7, v13

    mul-float v8, v8, v12

    mul-float v13, v13, v14

    add-float/2addr v8, v13

    float-to-int v7, v8

    goto :goto_4

    :cond_2
    move/from16 v19, v15

    if-ltz v14, :cond_4

    add-int/lit8 v8, v11, -0x1

    if-ge v14, v8, :cond_4

    if-gez v7, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    mul-int v8, v14, v11

    add-int/2addr v8, v7

    mul-int/lit16 v8, v8, 0x100

    add-int/lit8 v12, v14, 0x1

    mul-int v12, v12, v11

    add-int/2addr v12, v7

    mul-int/lit16 v12, v12, 0x100

    .line 2408
    invoke-direct {v0, v8, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v7

    .line 2409
    invoke-direct {v0, v12, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v8

    int-to-float v11, v14

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v11, v10

    int-to-float v7, v7

    mul-float v12, v12, v7

    int-to-float v7, v8

    mul-float v10, v10, v7

    add-float/2addr v12, v10

    float-to-int v7, v12

    goto :goto_4

    :cond_4
    if-ltz v7, :cond_6

    add-int/lit8 v8, v11, -0x1

    if-ge v7, v8, :cond_6

    if-gez v14, :cond_5

    add-int/lit8 v14, v14, 0x1

    :cond_5
    mul-int v8, v14, v11

    add-int/2addr v8, v7

    mul-int/lit16 v8, v8, 0x100

    mul-int v14, v14, v11

    add-int/2addr v14, v7

    add-int/lit8 v14, v14, 0x1

    mul-int/lit16 v14, v14, 0x100

    .line 2417
    invoke-direct {v0, v8, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v8

    .line 2418
    invoke-direct {v0, v14, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v10

    int-to-float v7, v7

    sub-float/2addr v13, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v11, v7, v13

    int-to-float v7, v8

    mul-float v11, v11, v7

    int-to-float v7, v10

    mul-float v13, v13, v7

    add-float/2addr v11, v13

    float-to-int v7, v11

    goto :goto_4

    :cond_6
    if-gez v14, :cond_7

    add-int/lit8 v14, v14, 0x1

    :cond_7
    if-gez v7, :cond_8

    add-int/lit8 v7, v7, 0x1

    :cond_8
    mul-int v14, v14, v11

    add-int/2addr v14, v7

    mul-int/lit16 v14, v14, 0x100

    .line 2426
    invoke-direct {v0, v14, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->getEqualValue(II)I

    move-result v7

    :goto_4
    iget v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;->hdr_alpha:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v8

    int-to-float v9, v9

    mul-float v10, v10, v9

    int-to-float v7, v7

    mul-float v8, v8, v7

    add-float/2addr v10, v8

    float-to-int v7, v10

    int-to-float v7, v7

    div-float/2addr v7, v9

    int-to-float v6, v6

    mul-float v6, v6, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v6, v8

    float-to-int v6, v6

    const/16 v9, 0xff

    .line 2439
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v10, v19

    int-to-float v10, v10

    mul-float v10, v10, v7

    add-float/2addr v10, v8

    float-to-int v10, v10

    .line 2440
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v5, v5

    mul-float v5, v5, v7

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 2441
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/high16 v7, -0x1000000

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v10, 0x8

    or-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 2443
    aput v5, v1, v2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
