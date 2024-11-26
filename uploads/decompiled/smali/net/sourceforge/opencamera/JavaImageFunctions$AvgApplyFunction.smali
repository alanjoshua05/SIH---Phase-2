.class Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;
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
    name = "AvgApplyFunction"
.end annotation


# instance fields
.field private final avg_factor:F

.field private final bitmap_new:Landroid/graphics/Bitmap;

.field private final bitmap_orig:Landroid/graphics/Bitmap;

.field private fast_bitmap_new:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private fast_bitmap_orig:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final height:I

.field private final offset_x_new:I

.field private final offset_y_new:I

.field private final pixels_rgbf:[F

.field final radius:I

.field private final width:I

.field private final wiener_C:F

.field private final wiener_C_cutoff:F


# direct methods
.method constructor <init>([FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIFFF)V
    .locals 1

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->radius:I

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->pixels_rgbf:[F

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->bitmap_new:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->bitmap_orig:Landroid/graphics/Bitmap;

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->width:I

    iput p5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->height:I

    iput p6, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->offset_x_new:I

    iput p7, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->offset_y_new:I

    iput p8, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->avg_factor:F

    iput p9, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->wiener_C:F

    iput p10, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->wiener_C_cutoff:F

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 8

    const/4 v3, 0x0

    .line 650
    move-object v0, v3

    check-cast v0, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V

    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 982
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 32

    move-object/from16 v0, p0

    iget v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->avg_factor:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/4 v3, 0x0

    move/from16 v4, p5

    const/4 v5, 0x0

    :goto_0
    add-int v6, p5, p7

    if-ge v4, v6, :cond_b

    mul-int/lit8 v6, v4, 0x3

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->width:I

    mul-int v6, v6, v7

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->offset_y_new:I

    add-int v8, v4, v7

    if-ltz v8, :cond_9

    add-int/2addr v7, v4

    iget v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->height:I

    if-lt v7, v8, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->fast_bitmap_orig:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 677
    aget-object v7, v7, p2

    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getPixel(II)I

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->fast_bitmap_orig:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 678
    aget-object v7, v7, p2

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v7

    sub-int v7, v4, v7

    iget-object v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->fast_bitmap_orig:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 680
    aget-object v8, v8, p2

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v8

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->offset_y_new:I

    add-int/2addr v10, v4

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->fast_bitmap_new:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 685
    aget-object v11, v11, p2

    add-int/lit8 v12, v10, 0x2

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->height:I

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v11, v3, v13}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getPixel(II)I

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->fast_bitmap_new:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 686
    aget-object v11, v11, p2

    invoke-virtual {v11}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v11

    sub-int v11, v10, v11

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->fast_bitmap_new:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 688
    aget-object v13, v13, p2

    invoke-virtual {v13}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v13

    move/from16 v14, p4

    :goto_1
    add-int v15, p4, p6

    if-ge v14, v15, :cond_8

    if-eqz p3, :cond_1

    add-int/lit8 v15, v5, 0x1

    .line 731
    aget v5, p3, v5

    shr-int/lit8 v3, v5, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    move/from16 v16, v15

    move v15, v5

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->pixels_rgbf:[F

    .line 738
    aget v3, v2, v6

    add-int/lit8 v15, v6, 0x1

    .line 739
    aget v15, v2, v15

    add-int/lit8 v16, v6, 0x2

    .line 740
    aget v2, v2, v16

    move/from16 v16, v5

    move/from16 v31, v15

    move v15, v2

    move/from16 v2, v31

    :goto_2
    iget v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->offset_x_new:I

    add-int/2addr v5, v14

    if-ltz v5, :cond_7

    move/from16 v17, v6

    iget v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->width:I

    if-ge v5, v6, :cond_6

    mul-int v18, v11, v6

    add-int v18, v18, v5

    move/from16 v19, v1

    .line 753
    aget v1, v13, v18

    move/from16 v18, v15

    shr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    move/from16 v20, v2

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    add-int/lit8 v21, v14, -0x2

    if-ltz v21, :cond_4

    move/from16 v22, v3

    add-int/lit8 v3, v14, 0x2

    if-ge v3, v6, :cond_3

    add-int/lit8 v23, v4, -0x2

    if-ltz v23, :cond_3

    move/from16 v23, v4

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->height:I

    if-ge v9, v4, :cond_2

    add-int/lit8 v24, v5, -0x2

    if-ltz v24, :cond_2

    add-int/lit8 v5, v5, 0x2

    if-ge v5, v6, :cond_2

    add-int/lit8 v25, v10, -0x2

    if-ltz v25, :cond_2

    if-ge v12, v4, :cond_2

    add-int/lit8 v4, v7, -0x2

    mul-int v25, v4, v6

    add-int v25, v25, v21

    move/from16 v26, v9

    .line 822
    aget v9, v8, v25

    move/from16 v25, v10

    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    move/from16 v27, v12

    shr-int/lit8 v12, v9, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    add-int/lit8 v28, v11, -0x2

    mul-int v29, v28, v6

    add-int v29, v29, v24

    .line 826
    aget v0, v13, v29

    move/from16 v29, v11

    shr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    move/from16 v30, v1

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    sub-float/2addr v10, v11

    sub-float/2addr v12, v1

    sub-float/2addr v9, v0

    mul-float v10, v10, v10

    mul-float v12, v12, v12

    add-float/2addr v10, v12

    mul-float v9, v9, v9

    add-float/2addr v10, v9

    const/4 v0, 0x0

    add-float/2addr v10, v0

    mul-int v4, v4, v6

    add-int/2addr v4, v3

    .line 835
    aget v0, v8, v4

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-int v28, v28, v6

    add-int v28, v28, v5

    .line 839
    aget v9, v13, v28

    shr-int/lit8 v11, v9, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    shr-int/lit8 v12, v9, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    sub-float/2addr v1, v11

    sub-float/2addr v4, v12

    sub-float/2addr v0, v9

    mul-float v1, v1, v1

    mul-float v4, v4, v4

    add-float/2addr v1, v4

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    add-float/2addr v10, v1

    mul-int v0, v7, v6

    add-int/2addr v0, v14

    .line 848
    aget v0, v8, v0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    sub-float/2addr v1, v15

    sub-float/2addr v4, v2

    sub-float v0, v0, v30

    mul-float v1, v1, v1

    mul-float v4, v4, v4

    add-float/2addr v1, v4

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    add-float/2addr v10, v1

    add-int/lit8 v0, v7, 0x2

    mul-int v1, v0, v6

    add-int v1, v1, v21

    .line 860
    aget v1, v8, v1

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    shr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    add-int/lit8 v11, v29, 0x2

    mul-int v12, v11, v6

    add-int v12, v12, v24

    .line 864
    aget v12, v13, v12

    move/from16 v21, v7

    shr-int/lit8 v7, v12, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    move/from16 v24, v14

    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    sub-float/2addr v4, v7

    sub-float/2addr v9, v14

    sub-float/2addr v1, v12

    mul-float v4, v4, v4

    mul-float v9, v9, v9

    add-float/2addr v4, v9

    mul-float v1, v1, v1

    add-float/2addr v4, v1

    add-float/2addr v10, v4

    mul-int v0, v0, v6

    add-int/2addr v0, v3

    .line 873
    aget v0, v8, v0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-int v11, v11, v6

    add-int/2addr v11, v5

    .line 877
    aget v4, v13, v11

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    sub-float/2addr v1, v5

    sub-float/2addr v3, v6

    sub-float/2addr v0, v4

    mul-float v1, v1, v1

    mul-float v3, v3, v3

    add-float/2addr v1, v3

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    add-float/2addr v10, v1

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr v10, v0

    goto :goto_5

    :cond_2
    move/from16 v30, v1

    goto :goto_4

    :cond_3
    move/from16 v30, v1

    goto :goto_3

    :cond_4
    move/from16 v30, v1

    move/from16 v22, v3

    :goto_3
    move/from16 v23, v4

    :goto_4
    move/from16 v21, v7

    move/from16 v26, v9

    move/from16 v25, v10

    move/from16 v29, v11

    move/from16 v27, v12

    move/from16 v24, v14

    sub-float v3, v22, v15

    sub-float v0, v20, v2

    sub-float v1, v18, v30

    mul-float v3, v3, v3

    mul-float v0, v0, v0

    add-float/2addr v3, v0

    mul-float v1, v1, v1

    add-float v10, v3, v1

    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->wiener_C_cutoff:F

    cmpl-float v1, v10, v1

    if-lez v1, :cond_5

    goto :goto_7

    :cond_5
    iget v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->wiener_C:F

    add-float/2addr v1, v10

    div-float/2addr v10, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v1, v10

    mul-float v4, v10, v22

    mul-float v15, v15, v3

    add-float/2addr v4, v15

    mul-float v5, v10, v20

    mul-float v2, v2, v3

    add-float/2addr v5, v2

    mul-float v10, v10, v18

    mul-float v3, v3, v30

    add-float/2addr v10, v3

    iget v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->avg_factor:F

    mul-float v3, v2, v22

    add-float/2addr v3, v4

    div-float v3, v3, v19

    mul-float v4, v2, v20

    add-float/2addr v4, v5

    div-float v4, v4, v19

    mul-float v2, v2, v18

    add-float/2addr v2, v10

    div-float v15, v2, v19

    move v2, v4

    goto :goto_8

    :cond_6
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v23, v4

    goto :goto_6

    :cond_7
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v17, v6

    :goto_6
    move/from16 v21, v7

    move/from16 v26, v9

    move/from16 v25, v10

    move/from16 v29, v11

    move/from16 v27, v12

    move/from16 v24, v14

    move/from16 v18, v15

    :goto_7
    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v15, v18

    move/from16 v2, v20

    move/from16 v3, v22

    :goto_8
    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->pixels_rgbf:[F

    .line 972
    aput v3, v4, v17

    add-int/lit8 v6, v17, 0x1

    .line 973
    aput v2, v4, v6

    add-int/lit8 v6, v17, 0x2

    .line 974
    aput v15, v4, v6

    add-int/lit8 v14, v24, 0x1

    add-int/lit8 v6, v17, 0x3

    move/from16 v5, v16

    move/from16 v1, v19

    move/from16 v7, v21

    move/from16 v4, v23

    move/from16 v10, v25

    move/from16 v9, v26

    move/from16 v12, v27

    move/from16 v11, v29

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    move/from16 v19, v1

    move/from16 v23, v4

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_9
    :goto_9
    move/from16 v19, v1

    move/from16 v23, v4

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_a

    move/from16 v2, p4

    :goto_a
    add-int v3, p4, p6

    if-ge v2, v3, :cond_a

    .line 664
    aget v3, p3, v5

    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->pixels_rgbf:[F

    shr-int/lit8 v7, v3, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    .line 668
    aput v7, v4, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    .line 669
    aput v8, v4, v7

    add-int/lit8 v7, v6, 0x2

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    .line 670
    aput v3, v4, v7

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x3

    goto :goto_a

    :cond_a
    :goto_b
    add-int/lit8 v4, v23, 0x1

    move/from16 v1, v19

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public init(I)V
    .locals 4

    .line 639
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->fast_bitmap_new:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 640
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->fast_bitmap_orig:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->fast_bitmap_new:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 643
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->bitmap_new:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->fast_bitmap_orig:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 644
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgApplyFunction;->bitmap_orig:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
