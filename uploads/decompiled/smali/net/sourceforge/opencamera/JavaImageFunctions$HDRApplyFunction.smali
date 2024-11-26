.class Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;
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
    name = "HDRApplyFunction"
.end annotation


# instance fields
.field private final W:F

.field private final bitmap0:Landroid/graphics/Bitmap;

.field private final bitmap2:Landroid/graphics/Bitmap;

.field fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field fast_bitmap2:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field final height:I

.field private final linear_scale:F

.field final offset_x0:I

.field final offset_x2:I

.field final offset_y0:I

.field final offset_y2:I

.field parameter_A:[F

.field parameter_B:[F

.field private final tonemap_algorithm:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

.field private final tonemap_scale:F

.field final width:I


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;FFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIII[F[F)V
    .locals 0

    .line 1478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->tonemap_algorithm:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    iput p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->tonemap_scale:F

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->W:F

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->linear_scale:F

    iput-object p5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->bitmap0:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->bitmap2:Landroid/graphics/Bitmap;

    iput p7, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->offset_x0:I

    iput p8, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->offset_y0:I

    iput p9, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->offset_x2:I

    iput p10, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->offset_y2:I

    iput p11, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->width:I

    iput p12, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->height:I

    .line 1492
    array-length p1, p13

    array-length p2, p14

    if-ne p1, p2, :cond_0

    .line 1495
    array-length p1, p13

    new-array p1, p1, [F

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->parameter_A:[F

    .line 1496
    array-length p2, p13

    const/4 p3, 0x0

    invoke-static {p13, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1497
    array-length p1, p14

    new-array p1, p1, [F

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->parameter_B:[F

    .line 1498
    array-length p2, p14

    invoke-static {p14, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 1493
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unequal parameter lengths"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static FU2Tonemap(F)F
    .locals 3

    const v0, 0x3e19999a    # 0.15f

    mul-float v0, v0, p0

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v1, v0

    mul-float v1, v1, p0

    const v2, 0x3b83126f    # 0.004f

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    mul-float p0, p0, v0

    const v0, 0x3d75c290    # 0.060000002f

    add-float/2addr p0, v0

    div-float/2addr v1, p0

    const p0, 0x3d888888

    sub-float/2addr v1, p0

    return v1
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 1516
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 1871
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 40

    move-object/from16 v0, p0

    .line 1641
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    move/from16 v4, p5

    const/4 v5, 0x0

    :goto_0
    add-int v6, p5, p7

    if-ge v4, v6, :cond_11

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1657
    aget-object v6, v6, p2

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->offset_y0:I

    add-int v8, v4, v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v8, v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1658
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v6

    sub-int v6, v4, v6

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1660
    aget-object v7, v7, p2

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v7

    iget-object v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->fast_bitmap2:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1662
    aget-object v8, v8, p2

    iget v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->offset_y2:I

    add-int v10, v4, v9

    add-int/2addr v9, v4

    invoke-virtual {v8, v10, v9}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->fast_bitmap2:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1663
    aget-object v8, v8, p2

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v8

    sub-int v8, v4, v8

    iget-object v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->fast_bitmap2:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1665
    aget-object v9, v9, p2

    invoke-virtual {v9}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v9

    move/from16 v10, p4

    :goto_1
    add-int v11, p4, p6

    if-ge v10, v11, :cond_10

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->parameter_A:[F

    .line 1668
    aget v12, v11, v3

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->parameter_B:[F

    aget v14, v13, v3

    const/4 v15, 0x1

    .line 1669
    aget v16, v11, v15

    aget v17, v13, v15

    const/16 v18, 0x2

    .line 1670
    aget v11, v11, v18

    aget v13, v13, v18

    .line 1673
    aget v15, p3, v5

    shr-int/lit8 v3, v15, 0x10

    and-int/lit16 v3, v3, 0xff

    move/from16 v19, v11

    shr-int/lit8 v11, v15, 0x8

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v15, v15, 0xff

    move/from16 v20, v12

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->offset_x0:I

    add-int v21, v10, v12

    if-ltz v21, :cond_2

    move/from16 v21, v13

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->offset_y0:I

    add-int v22, v4, v13

    if-ltz v22, :cond_0

    move/from16 v22, v14

    add-int v14, v10, v12

    move-object/from16 v23, v1

    iget v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->width:I

    if-ge v14, v1, :cond_1

    add-int v14, v4, v13

    move/from16 v24, v5

    iget v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->height:I

    if-ge v14, v5, :cond_3

    add-int/2addr v13, v6

    mul-int v13, v13, v1

    add-int/2addr v12, v10

    add-int/2addr v13, v12

    .line 1680
    aget v1, v7, v13

    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v12, v1, 0x8

    and-int/lit16 v12, v12, 0xff

    and-int/lit16 v1, v1, 0xff

    move/from16 v14, v22

    goto :goto_3

    :cond_0
    move-object/from16 v23, v1

    :cond_1
    move/from16 v24, v5

    goto :goto_2

    :cond_2
    move-object/from16 v23, v1

    move/from16 v24, v5

    move/from16 v21, v13

    :cond_3
    :goto_2
    move v5, v3

    move v12, v11

    move v1, v15

    move/from16 v20, v16

    move/from16 v14, v17

    :goto_3
    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->offset_x2:I

    add-int v22, v10, v13

    if-ltz v22, :cond_6

    move/from16 v22, v6

    iget v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->offset_y2:I

    add-int v25, v4, v6

    if-ltz v25, :cond_5

    move-object/from16 v25, v7

    add-int v7, v10, v13

    move-object/from16 v26, v2

    iget v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->width:I

    if-ge v7, v2, :cond_4

    add-int v7, v4, v6

    move/from16 v27, v4

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->height:I

    if-ge v7, v4, :cond_7

    add-int/2addr v6, v8

    mul-int v6, v6, v2

    add-int/2addr v13, v10

    add-int/2addr v6, v13

    .line 1695
    aget v2, v9, v6

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v2, v2, 0xff

    move/from16 v13, v21

    goto :goto_6

    :cond_4
    move/from16 v27, v4

    goto :goto_5

    :cond_5
    move-object/from16 v26, v2

    move/from16 v27, v4

    goto :goto_4

    :cond_6
    move-object/from16 v26, v2

    move/from16 v27, v4

    move/from16 v22, v6

    :goto_4
    move-object/from16 v25, v7

    :cond_7
    :goto_5
    move v4, v3

    move v6, v11

    move v2, v15

    move/from16 v19, v16

    move/from16 v13, v17

    :goto_6
    int-to-float v3, v3

    int-to-float v7, v11

    int-to-float v11, v15

    add-float v15, v3, v7

    add-float/2addr v15, v11

    const/high16 v21, 0x40400000    # 3.0f

    div-float v15, v15, v21

    const/high16 v21, 0x42c00000    # 96.0f

    const/high16 v28, 0x42ff0000    # 127.5f

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x0

    cmpg-float v31, v15, v28

    if-gtz v31, :cond_a

    const/high16 v31, 0x42000000    # 32.0f

    cmpg-float v32, v15, v31

    if-gtz v32, :cond_8

    const/16 v31, 0x0

    goto :goto_7

    :cond_8
    const/high16 v32, 0x42400000    # 48.0f

    cmpg-float v32, v15, v32

    if-gtz v32, :cond_9

    sub-float v31, v15, v31

    const/high16 v32, 0x41800000    # 16.0f

    div-float v31, v31, v32

    goto :goto_7

    :cond_9
    const/high16 v31, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_a
    sub-float v31, v15, v28

    cmpl-float v32, v31, v21

    if-lez v32, :cond_b

    const v32, 0x3f7d70a4    # 0.99f

    sub-float v31, v31, v21

    mul-float v31, v31, v32

    const/high16 v32, 0x41fc0000    # 31.5f

    div-float v31, v31, v32

    sub-float v31, v29, v31

    :goto_7
    move/from16 v39, v31

    move/from16 v31, v8

    move/from16 v8, v39

    goto :goto_8

    :cond_b
    move/from16 v31, v8

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_8
    mul-float v3, v3, v16

    add-float v3, v3, v17

    mul-float v7, v7, v16

    add-float v7, v7, v17

    mul-float v16, v16, v11

    add-float v16, v16, v17

    mul-float v11, v8, v3

    add-float v11, v30, v11

    mul-float v17, v8, v7

    add-float v17, v30, v17

    mul-float v32, v8, v16

    add-float v32, v30, v32

    add-float v33, v30, v8

    move-object/from16 v34, v9

    move/from16 v35, v10

    float-to-double v9, v8

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpg-double v38, v9, v36

    if-gez v38, :cond_f

    sub-float v8, v29, v8

    cmpg-float v9, v15, v28

    if-gtz v9, :cond_c

    int-to-float v1, v4

    int-to-float v4, v6

    int-to-float v2, v2

    mul-float v1, v1, v19

    add-float/2addr v1, v13

    mul-float v4, v4, v19

    add-float/2addr v4, v13

    mul-float v19, v19, v2

    add-float v19, v19, v13

    goto :goto_9

    :cond_c
    int-to-float v2, v5

    int-to-float v4, v12

    int-to-float v1, v1

    mul-float v2, v2, v20

    add-float/2addr v2, v14

    mul-float v4, v4, v20

    add-float/2addr v4, v14

    mul-float v20, v20, v1

    add-float v19, v20, v14

    move v1, v2

    :goto_9
    move/from16 v2, v19

    .line 1804
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1805
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x437a0000    # 250.0f

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_e

    sub-float v5, v5, v28

    .line 1819
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v5, v21

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpl-float v9, v5, v30

    if-lez v9, :cond_d

    const v9, 0x433e79e8

    mul-float v5, v5, v9

    add-float/2addr v6, v5

    :cond_d
    sub-float v5, v3, v1

    sub-float v9, v7, v4

    sub-float v10, v16, v2

    mul-float v5, v5, v5

    mul-float v9, v9, v9

    add-float/2addr v5, v9

    mul-float v10, v10, v10

    add-float/2addr v5, v10

    add-float/2addr v6, v5

    div-float/2addr v5, v6

    mul-float v3, v3, v5

    sub-float v29, v29, v5

    mul-float v1, v1, v29

    add-float/2addr v1, v3

    mul-float v7, v7, v5

    mul-float v4, v4, v29

    add-float/2addr v4, v7

    mul-float v5, v5, v16

    mul-float v29, v29, v2

    add-float v2, v5, v29

    :cond_e
    mul-float v1, v1, v8

    add-float/2addr v11, v1

    mul-float v4, v4, v8

    add-float v17, v17, v4

    mul-float v2, v2, v8

    add-float v32, v32, v2

    add-float v33, v33, v8

    :cond_f
    div-float v11, v11, v33

    div-float v1, v17, v33

    div-float v2, v32, v33

    move-object/from16 v3, v26

    .line 1850
    invoke-virtual {v0, v3, v11, v1, v2}, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->tonemap([IFFF)V

    const/4 v1, 0x0

    aget v2, v3, v1

    shl-int/lit8 v2, v2, 0x10

    const/high16 v4, -0x1000000

    or-int/2addr v2, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    aget v4, v3, v18

    or-int/2addr v2, v4

    .line 1863
    aput v2, v23, v24

    add-int/lit8 v10, v35, 0x1

    add-int/lit8 v5, v24, 0x1

    move-object v2, v3

    move/from16 v6, v22

    move-object/from16 v1, v23

    move-object/from16 v7, v25

    move/from16 v4, v27

    move/from16 v8, v31

    move-object/from16 v9, v34

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_10
    move-object/from16 v23, v1

    move-object v3, v2

    move/from16 v27, v4

    move/from16 v24, v5

    const/4 v1, 0x0

    add-int/lit8 v4, v27, 0x1

    move-object/from16 v1, v23

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public init(I)V
    .locals 4

    .line 1503
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->bitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1505
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->fast_bitmap2:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1507
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->bitmap0:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->bitmap2:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->fast_bitmap2:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1509
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->bitmap2:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method tonemap([IFFF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 1531
    sget-object v2, Lnet/sourceforge/opencamera/JavaImageFunctions$1;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$TonemappingAlgorithm:[I

    iget-object v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->tonemap_algorithm:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v2, v5, :cond_4

    const/4 v7, 0x0

    const/high16 v8, 0x437f0000    # 255.0f

    if-eq v2, v4, :cond_3

    const/4 v9, 0x3

    if-eq v2, v9, :cond_2

    const/4 v9, 0x4

    if-eq v2, v9, :cond_1

    const/4 v9, 0x5

    if-eq v2, v9, :cond_0

    goto/16 :goto_0

    :cond_0
    div-float v2, p2, v8

    div-float v9, p3, v8

    div-float/2addr v1, v8

    const v10, 0x4020a3d7    # 2.51f

    mul-float v11, v2, v10

    const v12, 0x3cf5c28f    # 0.03f

    add-float/2addr v11, v12

    mul-float v11, v11, v2

    mul-float v11, v11, v8

    const v13, 0x401b851f    # 2.43f

    mul-float v14, v2, v13

    const v15, 0x3f170a3d    # 0.59f

    add-float/2addr v14, v15

    mul-float v2, v2, v14

    const v14, 0x3e0f5c29    # 0.14f

    add-float/2addr v2, v14

    div-float/2addr v11, v2

    mul-float v2, v9, v10

    add-float/2addr v2, v12

    mul-float v2, v2, v9

    mul-float v2, v2, v8

    mul-float v16, v9, v13

    add-float v16, v16, v15

    mul-float v9, v9, v16

    add-float/2addr v9, v14

    div-float/2addr v2, v9

    mul-float v10, v10, v1

    add-float/2addr v10, v12

    mul-float v10, v10, v1

    mul-float v10, v10, v8

    mul-float v13, v13, v1

    add-float/2addr v13, v15

    mul-float v1, v1, v13

    add-float/2addr v1, v14

    div-float/2addr v10, v1

    add-float/2addr v11, v6

    .line 1614
    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    aput v1, p1, v3

    add-float/2addr v2, v6

    .line 1615
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    aput v1, p1, v5

    add-float/2addr v10, v6

    .line 1616
    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    aput v1, p1, v4

    goto/16 :goto_0

    :cond_1
    iget v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->W:F

    .line 1588
    invoke-static {v2}, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->FU2Tonemap(F)F

    move-result v2

    div-float v2, v8, v2

    const v9, 0x3c008081

    mul-float v10, p2, v9

    .line 1589
    invoke-static {v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->FU2Tonemap(F)F

    move-result v10

    mul-float v11, p3, v9

    .line 1590
    invoke-static {v11}, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->FU2Tonemap(F)F

    move-result v11

    mul-float v1, v1, v9

    .line 1591
    invoke-static {v1}, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->FU2Tonemap(F)F

    move-result v1

    mul-float v10, v10, v2

    mul-float v11, v11, v2

    mul-float v1, v1, v2

    add-float/2addr v10, v6

    .line 1595
    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, p1, v3

    add-float/2addr v11, v6

    .line 1596
    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, p1, v5

    add-float/2addr v1, v6

    .line 1597
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    aput v1, p1, v4

    goto/16 :goto_0

    .line 1561
    :cond_2
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1562
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->tonemap_scale:F

    add-float/2addr v7, v2

    div-float/2addr v8, v7

    iget v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->linear_scale:F

    mul-float v8, v8, v2

    mul-float v2, v8, p2

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 1566
    aput v2, p1, v3

    mul-float v2, v8, p3

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 1567
    aput v2, p1, v5

    mul-float v8, v8, v1

    add-float/2addr v8, v6

    float-to-int v1, v8

    .line 1568
    aput v1, p1, v4

    goto/16 :goto_0

    :cond_3
    iget v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->linear_scale:F

    mul-float v2, v2, v8

    float-to-double v9, v2

    const v2, -0x40666666    # -1.2f

    mul-float v11, p2, v2

    div-float/2addr v11, v8

    float-to-double v11, v11

    .line 1551
    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v11, v13, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    double-to-float v9, v9

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->linear_scale:F

    mul-float v10, v10, v8

    float-to-double v10, v10

    mul-float v12, p3, v2

    div-float/2addr v12, v8

    float-to-double v4, v12

    .line 1552
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double v4, v13, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v4

    double-to-float v4, v10

    iget v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->linear_scale:F

    mul-float v5, v5, v8

    float-to-double v10, v5

    mul-float v1, v1, v2

    div-float/2addr v1, v8

    float-to-double v1, v1

    .line 1553
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    sub-double/2addr v13, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v13

    double-to-float v1, v10

    add-float/2addr v9, v6

    .line 1554
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, p1, v3

    add-float/2addr v4, v6

    .line 1555
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aput v2, p1, v3

    add-float/2addr v1, v6

    .line 1556
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x2

    aput v1, p1, v2

    goto :goto_0

    :cond_4
    add-float v2, p2, v6

    float-to-int v2, v2

    add-float v4, p3, v6

    float-to-int v4, v4

    add-float/2addr v1, v6

    float-to-int v1, v1

    const/16 v5, 0xff

    .line 1539
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1540
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1541
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1542
    aput v2, p1, v3

    const/4 v2, 0x1

    .line 1543
    aput v4, p1, v2

    const/4 v2, 0x2

    .line 1544
    aput v1, p1, v2

    :goto_0
    return-void
.end method
