.class public Lnet/sourceforge/opencamera/PanoramaProcessor;
.super Ljava/lang/Object;
.source "PanoramaProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;,
        Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;,
        Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;,
        Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PanoramaProcessor"

.field private static final blend_n_levels:I = 0x4


# instance fields
.field private final context:Landroid/content/Context;

.field private featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

.field private final hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

.field private pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

.field private rs:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/sourceforge/opencamera/HDRProcessor;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    iput-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    iput-object p1, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->context:Landroid/content/Context;

    iput-object p2, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    return-void
.end method

.method static synthetic access$700(Ljava/util/List;IIILjava/util/List;[I[I)V
    .locals 0

    .line 35
    invoke-static/range {p0 .. p6}, Lnet/sourceforge/opencamera/PanoramaProcessor;->computeDistancesBetweenMatches(Ljava/util/List;IIILjava/util/List;[I[I)V

    return-void
.end method

.method private addBitmap(Landroid/graphics/Bitmap;[F)V
    .locals 11

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 476
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 477
    array-length v2, p2

    mul-int/lit8 v3, v0, 0x3

    mul-int v3, v3, v1

    if-ne v2, v3, :cond_0

    .line 481
    new-instance v4, Lnet/sourceforge/opencamera/JavaImageFunctions$AddBitmapFunction;

    invoke-direct {v4, p2, v0}, Lnet/sourceforge/opencamera/JavaImageFunctions$AddBitmapFunction;-><init>([FI)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 482
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object v5, p1

    move-object v6, p1

    invoke-static/range {v4 .. v10}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    return-void

    :cond_0
    const-string p1, "PanoramaProcessor"

    const-string p2, "bitmaps of different dimensions"

    .line 478
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private addBitmapRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3

    .line 458
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 459
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 460
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 464
    invoke-virtual {p1, p3}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 465
    invoke-virtual {p1, p2, p2}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->forEach_add(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void

    :cond_0
    const-string p1, "PanoramaProcessor"

    const-string p2, "allocations of different dimensions"

    .line 461
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private adjustExposuresLocal(Ljava/util/List;IIIJ)F
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;IIIJ)F"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2972
    div-int/lit8 v2, p2, 0xa

    sub-int v3, p2, p4

    .line 2973
    div-int/lit8 v3, v3, 0x2

    .line 2975
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2977
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 2984
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/high16 v13, 0x3f000000    # 0.5f

    if-ge v7, v11, :cond_2

    .line 2986
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Landroid/graphics/Bitmap;

    add-int/lit8 v11, v7, 0x1

    .line 2987
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v21, v15

    check-cast v21, Landroid/graphics/Bitmap;

    .line 2992
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 2993
    invoke-virtual {v15, v13, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    add-int v13, v3, p4

    sub-int/2addr v13, v2

    const/16 v16, 0x0

    mul-int/lit8 v22, v2, 0x2

    const/16 v20, 0x1

    move-object/from16 v23, v15

    move v15, v13

    move/from16 v17, v22

    move/from16 v18, p3

    move-object/from16 v19, v23

    .line 2997
    invoke-static/range {v14 .. v20}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    sub-int v17, v3, v2

    const/16 v18, 0x0

    const/4 v14, 0x1

    move-object/from16 v16, v21

    move/from16 v19, v22

    move/from16 v20, p3

    move-object/from16 v21, v23

    move/from16 v22, v14

    .line 2998
    invoke-static/range {v16 .. v22}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    iget-object v15, v0, Lnet/sourceforge/opencamera/PanoramaProcessor;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 3008
    sget-object v6, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->HISTOGRAM_TYPE_VALUE:Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;

    invoke-virtual {v15, v13, v6}, Lnet/sourceforge/opencamera/HDRProcessor;->computeHistogram(Landroid/graphics/Bitmap;Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;)[I

    move-result-object v6

    iget-object v15, v0, Lnet/sourceforge/opencamera/PanoramaProcessor;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 3009
    invoke-virtual {v15, v6}, Lnet/sourceforge/opencamera/HDRProcessor;->getHistogramInfo([I)Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;

    move-result-object v6

    iget-object v15, v0, Lnet/sourceforge/opencamera/PanoramaProcessor;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 3010
    sget-object v5, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->HISTOGRAM_TYPE_VALUE:Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;

    invoke-virtual {v15, v14, v5}, Lnet/sourceforge/opencamera/HDRProcessor;->computeHistogram(Landroid/graphics/Bitmap;Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;)[I

    move-result-object v5

    iget-object v15, v0, Lnet/sourceforge/opencamera/PanoramaProcessor;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 3011
    invoke-virtual {v15, v5}, Lnet/sourceforge/opencamera/HDRProcessor;->getHistogramInfo([I)Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;

    move-result-object v5

    .line 3013
    iget v5, v5, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    iget v6, v6, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v10, v10, v5

    .line 3022
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3024
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 3025
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 3027
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v13, v5, :cond_0

    .line 3028
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 3029
    :cond_0
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v14, v5, :cond_1

    .line 3030
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move v7, v11

    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_2
    div-float/2addr v8, v9

    .line 3055
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3058
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 3059
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    iget-object v10, v0, Lnet/sourceforge/opencamera/PanoramaProcessor;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 3060
    sget-object v11, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->HISTOGRAM_TYPE_VALUE:Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;

    invoke-virtual {v10, v9, v11}, Lnet/sourceforge/opencamera/HDRProcessor;->computeHistogram(Landroid/graphics/Bitmap;Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;)[I

    move-result-object v9

    iget-object v10, v0, Lnet/sourceforge/opencamera/PanoramaProcessor;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 3061
    invoke-virtual {v10, v9}, Lnet/sourceforge/opencamera/HDRProcessor;->getHistogramInfo([I)Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;

    move-result-object v9

    .line 3062
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3063
    iget v10, v9, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    int-to-float v10, v10

    add-float/2addr v6, v10

    .line 3064
    iget v9, v9, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    int-to-float v9, v9

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    div-float/2addr v9, v10

    add-float/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3071
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 3072
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v7, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 3078
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v6, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    .line 3084
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 3088
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 3089
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;

    .line 3091
    iget v11, v10, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    int-to-float v11, v11

    mul-float v11, v11, v6

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float/2addr v11, v12

    const v12, 0x3dcccccd    # 0.1f

    add-float/2addr v11, v12

    float-to-int v11, v11

    const/16 v12, 0xff

    .line 3092
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v12, v11

    .line 3100
    iget v14, v10, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    int-to-float v14, v14

    div-float v14, v12, v14

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 3101
    iget v14, v10, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    int-to-float v14, v14

    div-float/2addr v12, v14

    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 3102
    iget v12, v10, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    int-to-float v12, v12

    mul-float v12, v12, v13

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 3103
    iget v14, v10, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    mul-float v14, v14, v15

    add-float/2addr v14, v13

    float-to-int v14, v14

    .line 3105
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 3106
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v12, v0, Lnet/sourceforge/opencamera/PanoramaProcessor;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 3114
    iget v14, v10, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    iget v10, v10, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->max_brightness:I

    invoke-virtual {v12, v9, v14, v10, v11}, Lnet/sourceforge/opencamera/HDRProcessor;->brightenImage(Landroid/graphics/Bitmap;III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    return v8
.end method

.method private adjustPanoramaTransforms(Ljava/util/List;Ljava/util/List;IIII)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Matrix;",
            ">;IIII)V"
        }
    .end annotation

    move-object v0, p2

    const/16 v1, 0x9

    new-array v1, v1, [F

    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v3, -0x3b860000    # -1000.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3382
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_0

    .line 3383
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Matrix;

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->getValues([F)V

    aget v6, v1, v7

    float-to-double v6, v6

    aget v8, v1, v4

    float-to-double v8, v8

    .line 3385
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 3388
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 3389
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v4

    move/from16 v6, p6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    aput v6, v5, v7

    .line 3404
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Matrix;

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v9, v5, v4

    aget v10, v5, v7

    move/from16 v11, p5

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    aput v11, v5, v4

    aput v6, v5, v7

    .line 3409
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-interface {p2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Matrix;

    invoke-virtual {v11, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v11, v5, v4

    .line 3410
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v7

    mul-int v12, v12, p4

    int-to-float v12, v12

    add-float/2addr v11, v12

    aget v5, v5, v7

    sub-float/2addr v11, v9

    sub-float/2addr v5, v10

    float-to-double v9, v5

    float-to-double v11, v11

    .line 3414
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v5, v9

    neg-float v5, v5

    .line 3425
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 3426
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    .line 3433
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    move/from16 v5, p3

    int-to-float v9, v5

    div-float/2addr v9, v8

    mul-int v10, v3, p4

    int-to-float v10, v10

    sub-float/2addr v9, v10

    .line 3437
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    invoke-virtual {v10, v2, v9, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 3439
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Matrix;

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->getValues([F)V

    aget v9, v1, v7

    float-to-double v9, v9

    aget v11, v1, v4

    float-to-double v11, v11

    .line 3440
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private autoAlignmentByFeature(IILjava/util/List;I)Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/PanoramaProcessorException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v0, p3

    .line 1506
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const-string v12, "PanoramaProcessor"

    const/4 v14, 0x2

    if-ne v4, v14, :cond_48

    .line 1535
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/PanoramaProcessor;->initRenderscript()V

    .line 1538
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    new-array v11, v15, [Landroid/renderscript/Allocation;

    const/4 v4, 0x0

    .line 1539
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1540
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-static {v5, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    if-nez v4, :cond_1

    .line 1547
    new-instance v4, Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    iget-object v5, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v5}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v4, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    :cond_1
    new-array v10, v14, [[Landroid/graphics/Point;

    const/4 v4, 0x0

    .line 1558
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    iget-object v5, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1602
    invoke-static {v5}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v8

    invoke-static {v5, v8, v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v5

    iget-object v8, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1603
    aget-object v9, v11, v4

    invoke-virtual {v8, v9, v5}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach_create_greyscale(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    iget-object v8, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1607
    invoke-static {v8}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v9

    invoke-static {v8, v9, v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v8

    iget-object v9, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1608
    invoke-static {v9}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v9, v6, v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v6

    iget-object v9, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1609
    invoke-virtual {v9, v5}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->set_bitmap(Landroid/renderscript/Allocation;)V

    iget-object v9, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1610
    invoke-virtual {v9, v8}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->set_bitmap_Ix(Landroid/renderscript/Allocation;)V

    iget-object v9, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1611
    invoke-virtual {v9, v6}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->set_bitmap_Iy(Landroid/renderscript/Allocation;)V

    iget-object v9, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1612
    invoke-virtual {v9, v5}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach_compute_derivatives(Landroid/renderscript/Allocation;)V

    iget-object v9, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1616
    invoke-static {v9}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v9, v7, v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v7

    iget-object v9, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1617
    invoke-virtual {v9, v5}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->set_bitmap(Landroid/renderscript/Allocation;)V

    iget-object v9, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1618
    invoke-virtual {v9, v8}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->set_bitmap_Ix(Landroid/renderscript/Allocation;)V

    iget-object v9, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1619
    invoke-virtual {v9, v6}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->set_bitmap_Iy(Landroid/renderscript/Allocation;)V

    iget-object v9, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1620
    invoke-virtual {v9, v5, v7}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach_corner_detector(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 1622
    invoke-virtual {v8}, Landroid/renderscript/Allocation;->destroy()V

    .line 1625
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    iget-object v6, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1704
    invoke-virtual {v6, v7}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->set_bitmap(Landroid/renderscript/Allocation;)V

    mul-int v6, v2, v3

    .line 1714
    new-array v6, v6, [B

    .line 1716
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v14, :cond_b

    mul-int v17, v9, v3

    .line 1728
    div-int/lit8 v13, v17, 0x2

    add-int/lit8 v9, v9, 0x1

    mul-int v17, v9, v3

    move/from16 v19, v9

    .line 1729
    div-int/lit8 v9, v17, 0x2

    const v17, 0x4a989680    # 5000000.0f

    const/high16 v20, -0x40800000    # -1.0f

    move-object/from16 v23, v11

    const v14, 0x4a989680    # 5000000.0f

    const/16 v17, 0x0

    const/16 v22, 0x0

    :goto_3
    iget-object v11, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1744
    invoke-virtual {v11, v14}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->set_corner_threshold(F)V

    .line 1745
    new-instance v11, Landroid/renderscript/Script$LaunchOptions;

    invoke-direct {v11}, Landroid/renderscript/Script$LaunchOptions;-><init>()V

    move/from16 v24, v15

    const/4 v15, 0x0

    .line 1746
    invoke-static {v11, v15, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;

    .line 1747
    invoke-static {v11, v13, v9}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;

    iget-object v15, v1, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    .line 1748
    invoke-virtual {v15, v7, v5, v11}, Lnet/sourceforge/opencamera/ScriptC_feature_detector;->forEach_local_maximum(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 1750
    invoke-virtual {v5, v6}, Landroid/renderscript/Allocation;->copyTo([B)V

    .line 1754
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x3

    .line 1755
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v15, v25

    :goto_4
    add-int/lit8 v1, v3, -0x3

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v15, v1, :cond_4

    const/4 v1, 0x3

    :goto_5
    move/from16 v25, v9

    add-int/lit8 v9, v2, -0x3

    if-ge v1, v9, :cond_3

    mul-int v9, v15, v2

    add-int/2addr v9, v1

    .line 1759
    aget-byte v9, v6, v9

    if-eqz v9, :cond_2

    .line 1760
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v1, v15}, Landroid/graphics/Point;-><init>(II)V

    .line 1761
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move/from16 v9, v25

    goto :goto_5

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move/from16 v9, v25

    goto :goto_4

    :cond_4
    move/from16 v25, v9

    .line 1767
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/16 v9, 0x64

    const/16 v15, 0x32

    if-lt v1, v15, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v9, :cond_5

    .line 1768
    invoke-interface {v8, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 1771
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v26, 0x3f000000    # 0.5f

    if-ge v1, v15, :cond_8

    const v1, 0x49989680    # 1250000.0f

    cmpg-float v1, v14, v1

    if-gtz v1, :cond_6

    .line 1775
    invoke-interface {v8, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_6
    add-int/lit8 v1, v17, 0x1

    const/16 v15, 0xa

    if-ne v1, v15, :cond_7

    .line 1781
    invoke-interface {v8, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_7
    add-float v1, v22, v14

    mul-float v1, v1, v26

    move/from16 v20, v14

    move v14, v1

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    const/16 v15, 0xa

    add-int/lit8 v1, v17, 0x1

    if-ne v1, v15, :cond_9

    .line 1803
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v11, v9, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1804
    invoke-interface {v8, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_6
    move-object/from16 v1, p0

    move/from16 v9, v19

    move-object/from16 v11, v23

    move/from16 v15, v24

    const/4 v14, 0x2

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x0

    cmpg-float v9, v20, v1

    if-gez v9, :cond_a

    const/high16 v9, 0x41200000    # 10.0f

    mul-float v9, v9, v14

    goto :goto_7

    :cond_a
    add-float v9, v14, v20

    mul-float v9, v9, v26

    :goto_7
    move/from16 v22, v14

    move v14, v9

    :goto_8
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v1, p0

    move/from16 v15, v24

    move/from16 v9, v25

    goto/16 :goto_3

    :cond_b
    move-object/from16 v23, v11

    move/from16 v24, v15

    const/4 v9, 0x0

    new-array v1, v9, [Landroid/graphics/Point;

    .line 1821
    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Point;

    aput-object v1, v10, v4

    if-eqz v7, :cond_c

    .line 1827
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    :cond_c
    if-eqz v5, :cond_d

    .line 1833
    invoke-virtual {v5}, Landroid/renderscript/Allocation;->destroy()V

    :cond_d
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v11, v23

    move/from16 v15, v24

    const/4 v14, 0x2

    goto/16 :goto_1

    :cond_e
    move-object/from16 v23, v11

    move/from16 v24, v15

    const/4 v1, 0x0

    const/4 v4, 0x0

    aget-object v5, v10, v4

    .line 1843
    array-length v4, v5

    const/4 v13, 0x0

    const/16 v5, 0xa

    if-lt v4, v5, :cond_45

    const/4 v15, 0x1

    aget-object v4, v10, v15

    array-length v4, v4

    if-ge v4, v5, :cond_f

    goto/16 :goto_32

    .line 1865
    :cond_f
    div-int/lit8 v4, v3, 0x10

    mul-int v5, v2, v2

    mul-int v4, v4, v4

    add-int/2addr v5, v4

    .line 1872
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_9
    const/4 v6, 0x0

    aget-object v7, v10, v6

    .line 1873
    array-length v8, v7

    if-ge v4, v8, :cond_12

    .line 1874
    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v8, v10, v6

    .line 1875
    aget-object v6, v8, v4

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    :goto_a
    aget-object v9, v10, v15

    .line 1876
    array-length v1, v9

    if-ge v8, v1, :cond_11

    .line 1877
    aget-object v1, v9, v8

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v9, v10, v15

    .line 1878
    aget-object v9, v9, v8

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v7

    sub-int/2addr v9, v6

    mul-int v1, v1, v1

    mul-int v9, v9, v9

    add-int/2addr v1, v9

    if-ge v1, v5, :cond_10

    .line 1885
    new-instance v1, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    invoke-direct {v1, v4, v8, v13}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;-><init>(IILnet/sourceforge/opencamera/PanoramaProcessor$1;)V

    .line 1886
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    goto :goto_a

    :cond_11
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    goto :goto_9

    .line 1899
    :cond_12
    array-length v1, v7

    mul-int/lit8 v1, v1, 0x31

    new-array v9, v1, [I

    aget-object v4, v10, v15

    .line 1900
    array-length v4, v4

    mul-int/lit8 v4, v4, 0x31

    new-array v8, v4, [I

    const/4 v5, 0x0

    :goto_b
    const/4 v6, 0x0

    aget-object v7, v10, v6

    .line 1901
    array-length v14, v7

    if-ge v5, v14, :cond_13

    .line 1902
    aget-object v7, v7, v5

    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v14, v10, v6

    .line 1903
    aget-object v14, v14, v5

    iget v14, v14, Landroid/graphics/Point;->y:I

    .line 1904
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v25, v17

    check-cast v25, Landroid/graphics/Bitmap;

    mul-int/lit8 v27, v5, 0x31

    const/16 v28, 0x7

    const/4 v6, 0x3

    add-int/lit8 v29, v7, -0x3

    add-int/lit8 v30, v14, -0x3

    const/16 v31, 0x7

    const/16 v32, 0x7

    move-object/from16 v26, v9

    invoke-virtual/range {v25 .. v32}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_13
    const/4 v5, 0x0

    :goto_c
    aget-object v6, v10, v15

    .line 1906
    array-length v7, v6

    if-ge v5, v7, :cond_14

    .line 1907
    aget-object v6, v6, v5

    iget v6, v6, Landroid/graphics/Point;->x:I

    aget-object v7, v10, v15

    .line 1908
    aget-object v7, v7, v5

    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 1909
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v25, v14

    check-cast v25, Landroid/graphics/Bitmap;

    mul-int/lit8 v27, v5, 0x31

    const/16 v28, 0x7

    const/4 v14, 0x3

    add-int/lit8 v29, v6, -0x3

    add-int/lit8 v30, v7, -0x3

    const/16 v31, 0x7

    const/16 v32, 0x7

    move-object/from16 v26, v8

    invoke-virtual/range {v25 .. v32}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_14
    const/4 v5, 0x0

    :goto_d
    const-wide v16, 0x3fe2e147ae147ae1L    # 0.59

    const-wide v19, 0x3fd3333333333333L    # 0.3

    if-ge v5, v1, :cond_15

    .line 1913
    aget v14, v9, v5

    .line 1914
    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v13

    int-to-double v6, v13

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v19

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v13

    move/from16 v27, v1

    int-to-double v0, v13

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v16

    add-double/2addr v6, v0

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v13, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v0, v0, v13

    add-double/2addr v6, v0

    double-to-int v0, v6

    aput v0, v9, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    const/4 v13, 0x0

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v4, :cond_16

    .line 1917
    aget v1, v8, v0

    .line 1918
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v19

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v16

    add-double/2addr v5, v13

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v25, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v13, v13, v25

    add-double/2addr v5, v13

    double-to-int v1, v5

    aput v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1925
    :cond_16
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1928
    new-array v1, v0, [Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_f
    if-ge v13, v0, :cond_17

    add-int/lit8 v14, v13, 0x1

    .line 1931
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    mul-int v4, v4, v14

    div-int v16, v4, v0

    .line 1934
    new-instance v17, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;

    const/16 v19, 0x3

    move-object/from16 v4, v17

    move-object v5, v11

    move/from16 v7, v16

    move-object/from16 v20, v8

    move/from16 v8, v19

    move-object/from16 v19, v9

    move-object/from16 v9, p3

    move-object/from16 v25, v10

    move-object/from16 v10, v19

    move-object/from16 p4, v11

    move-object/from16 v11, v20

    invoke-direct/range {v4 .. v11}, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;-><init>(Ljava/util/List;IIILjava/util/List;[I[I)V

    aput-object v17, v1, v13

    move-object/from16 v11, p4

    move v13, v14

    move/from16 v6, v16

    move-object/from16 v9, v19

    move-object/from16 v8, v20

    move-object/from16 v10, v25

    goto :goto_f

    :cond_17
    move-object/from16 v25, v10

    move-object/from16 p4, v11

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v0, :cond_18

    .line 1941
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->start()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_18
    const/4 v4, 0x0

    :goto_11
    if-ge v4, v0, :cond_19

    .line 1948
    :try_start_0
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/PanoramaProcessor$ComputeDistancesBetweenMatchesThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :catch_0
    move-exception v0

    const-string v1, "ComputeDistancesBetweenMatchesThread threads interrupted"

    .line 1952
    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1954
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1972
    :cond_19
    invoke-static/range {p4 .. p4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x0

    aget-object v0, v25, v1

    .line 1983
    array-length v1, v0

    new-array v1, v1, [Z

    .line 1984
    array-length v0, v0

    new-array v0, v0, [Z

    aget-object v4, v25, v15

    .line 1985
    array-length v4, v4

    new-array v4, v4, [Z

    .line 1986
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 1989
    :goto_12
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_20

    move-object/from16 v7, p4

    .line 1990
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    .line 1991
    invoke-static {v10}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v11

    aget-boolean v11, v0, v11

    if-nez v11, :cond_1f

    invoke-static {v10}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v11

    aget-boolean v11, v4, v11

    if-eqz v11, :cond_1a

    goto :goto_15

    :cond_1a
    add-int/lit8 v11, v6, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2001
    :goto_13
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_1d

    if-nez v13, :cond_1d

    .line 2002
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    .line 2003
    invoke-static {v10}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v8

    invoke-static {v15}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v9

    if-ne v8, v9, :cond_1c

    .line 2005
    invoke-static {v10}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$600(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)F

    move-result v8

    invoke-static {v15}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$600(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)F

    move-result v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    .line 2011
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    add-double v8, v8, v16

    const-wide v19, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v13, v8, v19

    if-lez v13, :cond_1b

    const/4 v13, 0x1

    const/4 v14, 0x1

    goto :goto_14

    :cond_1b
    const/4 v13, 0x1

    :cond_1c
    :goto_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_1d
    if-eqz v14, :cond_1e

    .line 2020
    invoke-static {v10}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v8

    const/4 v9, 0x1

    aput-boolean v9, v0, v8

    .line 2021
    invoke-static {v10}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v8

    aput-boolean v9, v1, v8

    goto :goto_15

    :cond_1e
    const/4 v9, 0x1

    .line 2025
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2026
    invoke-static {v10}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v8

    aput-boolean v9, v0, v8

    .line 2027
    invoke-static {v10}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v8

    aput-boolean v9, v4, v8

    :cond_1f
    :goto_15
    add-int/lit8 v6, v6, 0x1

    move-object/from16 p4, v7

    const/4 v15, 0x1

    goto/16 :goto_12

    .line 2037
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "### autoAlignmentByFeature: time after finding possible matches: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v6

    double-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    .line 2051
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2052
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_21

    .line 2053
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v5, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_21
    const/4 v4, 0x0

    aget-object v0, v25, v4

    .line 2057
    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v4, 0x1

    aget-object v6, v25, v4

    .line 2058
    array-length v6, v6

    new-array v6, v6, [Z

    .line 2059
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    .line 2060
    invoke-static {v8}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v9

    aput-boolean v4, v0, v9

    .line 2061
    invoke-static {v8}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v8

    aput-boolean v4, v6, v8

    goto :goto_16

    .line 2068
    :cond_22
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_25

    move/from16 v4, v24

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v4, :cond_24

    .line 2077
    aget-object v1, v23, v0

    if-eqz v1, :cond_23

    .line 2078
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v1, 0x0

    .line 2079
    aput-object v1, v23, v0

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2084
    :cond_24
    new-instance v0, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v2, v2, v6, v1}, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;-><init>(IIFF)V

    return-object v0

    :cond_25
    move/from16 v4, v24

    const/4 v6, 0x0

    .line 2101
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v0, v7

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v0

    .line 2107
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2110
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2111
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2117
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v2, v10

    const v10, 0x40a051ec    # 5.01f

    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v2, v2, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2123
    :goto_18
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    const-wide v19, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v26, 0x401921fb54442d18L    # 6.283185307179586

    if-ge v10, v12, :cond_38

    .line 2124
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    const/4 v15, 0x1

    aget-object v24, v25, v15

    .line 2128
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v28

    aget-object v6, v24, v28

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/16 v18, 0x0

    aget-object v24, v25, v18

    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v28

    aget-object v1, v24, v28

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v1

    aget-object v1, v25, v15

    .line 2129
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v15

    aget-object v1, v1, v15

    iget v1, v1, Landroid/graphics/Point;->y:I

    aget-object v15, v25, v18

    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v24

    aget-object v15, v15, v24

    iget v15, v15, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v15

    .line 2131
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 2132
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_19
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_27

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v13, v24

    check-cast v13, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    const/4 v14, 0x0

    aget-object v18, v25, v14

    .line 2133
    invoke-static {v13}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v24

    move/from16 p1, v11

    aget-object v11, v18, v24

    iget v11, v11, Landroid/graphics/Point;->x:I

    aget-object v24, v25, v14

    .line 2134
    invoke-static {v13}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v14

    aget-object v14, v24, v14

    iget v14, v14, Landroid/graphics/Point;->y:I

    const/16 v24, 0x1

    aget-object v30, v25, v24

    .line 2135
    invoke-static {v13}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v31

    move-object/from16 v32, v15

    aget-object v15, v30, v31

    iget v15, v15, Landroid/graphics/Point;->x:I

    aget-object v30, v25, v24

    .line 2136
    invoke-static {v13}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v24

    move/from16 v31, v4

    aget-object v4, v30, v24

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v11, v6

    add-int/2addr v14, v1

    sub-int/2addr v11, v15

    int-to-float v11, v11

    sub-int/2addr v14, v4

    int-to-float v4, v14

    mul-float v11, v11, v11

    mul-float v4, v4, v4

    add-float/2addr v11, v4

    float-to-double v14, v11

    .line 2142
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    add-double v14, v14, v16

    float-to-double v3, v2

    cmpg-double v11, v14, v3

    if-gtz v11, :cond_26

    .line 2143
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    move/from16 v11, p1

    move/from16 v3, p2

    move/from16 v4, v31

    move-object/from16 v15, v32

    goto :goto_19

    :cond_27
    move/from16 v31, v4

    move/from16 p1, v11

    .line 2146
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-le v1, v3, :cond_29

    .line 2150
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2151
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2152
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 2153
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2156
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_28

    move-object v4, v8

    const/4 v1, 0x2

    const/4 v11, 0x0

    goto/16 :goto_27

    :cond_28
    const/4 v1, 0x0

    goto :goto_1a

    :cond_29
    move/from16 v1, p1

    :goto_1a
    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v10, :cond_36

    .line 2169
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    const/4 v6, 0x0

    aget-object v11, v25, v6

    .line 2170
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v13

    aget-object v11, v11, v13

    iget v11, v11, Landroid/graphics/Point;->x:I

    aget-object v13, v25, v6

    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v14

    aget-object v13, v13, v14

    iget v13, v13, Landroid/graphics/Point;->x:I

    add-int/2addr v11, v13

    const/4 v13, 0x2

    div-int/2addr v11, v13

    aget-object v14, v25, v6

    .line 2171
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v15

    aget-object v14, v14, v15

    iget v14, v14, Landroid/graphics/Point;->y:I

    aget-object v15, v25, v6

    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v6

    aget-object v6, v15, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v14, v6

    div-int/2addr v14, v13

    const/4 v6, 0x1

    aget-object v15, v25, v6

    .line 2172
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v21

    aget-object v15, v15, v21

    iget v15, v15, Landroid/graphics/Point;->x:I

    aget-object v21, v25, v6

    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v24

    aget-object v6, v21, v24

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v15, v6

    div-int/2addr v15, v13

    const/4 v6, 0x1

    aget-object v21, v25, v6

    .line 2173
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v24

    aget-object v13, v21, v24

    iget v13, v13, Landroid/graphics/Point;->y:I

    aget-object v21, v25, v6

    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v6

    aget-object v6, v21, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v13, v6

    const/4 v6, 0x2

    div-int/2addr v13, v6

    const/4 v6, 0x0

    aget-object v18, v25, v6

    .line 2175
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v24

    move/from16 p1, v1

    aget-object v1, v18, v24

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v18, v25, v6

    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v24

    aget-object v6, v18, v24

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    const/4 v6, 0x0

    aget-object v18, v25, v6

    .line 2176
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v24

    move/from16 v30, v10

    aget-object v10, v18, v24

    iget v10, v10, Landroid/graphics/Point;->y:I

    aget-object v24, v25, v6

    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v6

    aget-object v6, v24, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v6

    int-to-float v6, v10

    const/4 v10, 0x1

    aget-object v24, v25, v10

    .line 2177
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v32

    move/from16 v33, v3

    aget-object v3, v24, v32

    iget v3, v3, Landroid/graphics/Point;->x:I

    aget-object v24, v25, v10

    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v32

    aget-object v10, v24, v32

    iget v10, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v10

    int-to-float v3, v3

    const/4 v10, 0x1

    aget-object v24, v25, v10

    .line 2178
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v32

    move-object/from16 v34, v7

    aget-object v7, v24, v32

    iget v7, v7, Landroid/graphics/Point;->y:I

    aget-object v24, v25, v10

    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v10

    aget-object v10, v24, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v10

    int-to-float v7, v7

    mul-float v10, v1, v1

    mul-float v24, v6, v6

    add-float v10, v10, v24

    mul-float v24, v3, v3

    mul-float v32, v7, v7

    add-float v24, v24, v32

    cmpg-float v10, v10, v0

    if-ltz v10, :cond_34

    cmpg-float v10, v24, v0

    if-gez v10, :cond_2a

    goto/16 :goto_20

    :cond_2a
    move/from16 v10, p2

    move/from16 v24, v0

    int-to-float v0, v10

    const v32, 0x3e99999a    # 0.3f

    mul-float v32, v32, v0

    const v35, 0x3f333333    # 0.7f

    mul-float v0, v0, v35

    const/16 v18, 0x0

    aget-object v35, v25, v18

    .line 2188
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v36

    aget-object v10, v35, v36

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    cmpg-float v10, v10, v32

    if-ltz v10, :cond_35

    aget-object v10, v25, v18

    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v35

    aget-object v10, v10, v35

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    cmpl-float v10, v10, v0

    if-gtz v10, :cond_35

    const/4 v10, 0x1

    aget-object v35, v25, v10

    .line 2189
    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v36

    aget-object v10, v35, v36

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    cmpg-float v10, v10, v32

    if-ltz v10, :cond_35

    const/4 v10, 0x1

    aget-object v35, v25, v10

    invoke-static {v12}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v10

    aget-object v10, v35, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    cmpl-float v10, v10, v0

    if-gtz v10, :cond_35

    const/4 v10, 0x0

    aget-object v18, v25, v10

    .line 2190
    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v35

    aget-object v10, v18, v35

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    cmpg-float v10, v10, v32

    if-ltz v10, :cond_35

    const/4 v10, 0x0

    aget-object v35, v25, v10

    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v10

    aget-object v10, v35, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    cmpl-float v10, v10, v0

    if-gtz v10, :cond_35

    const/4 v10, 0x1

    aget-object v35, v25, v10

    .line 2191
    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v36

    aget-object v10, v35, v36

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    cmpg-float v10, v10, v32

    if-ltz v10, :cond_35

    const/4 v10, 0x1

    aget-object v32, v25, v10

    invoke-static {v4}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v10

    aget-object v10, v32, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    cmpl-float v0, v10, v0

    if-lez v0, :cond_2b

    goto/16 :goto_21

    :cond_2b
    move-object v0, v8

    float-to-double v7, v7

    move-object v10, v4

    float-to-double v3, v3

    .line 2211
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    float-to-double v6, v6

    move-object v8, v0

    float-to-double v0, v1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double/2addr v3, v0

    double-to-float v0, v3

    float-to-double v3, v0

    cmpg-double v1, v3, v19

    if-gez v1, :cond_2c

    .line 2213
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double v3, v3, v26

    :goto_1c
    double-to-float v0, v3

    goto :goto_1d

    :cond_2c
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v1, v3, v6

    if-lez v1, :cond_2d

    .line 2215
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v3, v3, v26

    goto :goto_1c

    .line 2216
    :cond_2d
    :goto_1d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    cmpl-double v1, v3, v6

    if-lez v1, :cond_2e

    goto/16 :goto_21

    .line 2249
    :cond_2e
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 2250
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    const/4 v4, 0x0

    aget-object v6, v25, v4

    .line 2251
    invoke-static {v3}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v7

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/Point;->x:I

    aget-object v7, v25, v4

    .line 2252
    invoke-static {v3}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v4

    aget-object v4, v7, v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    aget-object v32, v25, v7

    .line 2253
    invoke-static {v3}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v35

    move-object/from16 v36, v1

    aget-object v1, v32, v35

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v32, v25, v7

    .line 2254
    invoke-static {v3}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v7

    aget-object v7, v32, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v11

    sub-int/2addr v4, v14

    move-object/from16 v32, v5

    int-to-double v5, v6

    move-object/from16 v37, v10

    move/from16 v35, v11

    float-to-double v10, v0

    .line 2258
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v38, v38, v5

    move-object/from16 v40, v3

    int-to-double v3, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v41

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v41, v41, v3

    move-object/from16 v44, v8

    move-object/from16 v43, v9

    sub-double v8, v38, v41

    double-to-int v8, v8

    .line 2259
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v38

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v9

    add-double/2addr v5, v3

    double-to-int v3, v5

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v8, v15

    add-int/2addr v3, v13

    sub-int/2addr v8, v1

    int-to-float v1, v8

    sub-int/2addr v3, v7

    int-to-float v3, v3

    mul-float v1, v1, v1

    mul-float v3, v3, v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    .line 2273
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v5, 0x3ee4f8b588e368f1L    # 1.0E-5

    add-double/2addr v3, v5

    float-to-double v5, v2

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_2f

    move-object/from16 v3, v40

    move-object/from16 v1, v43

    .line 2274
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_2f
    move-object/from16 v1, v43

    :goto_1f
    move-object v9, v1

    move-object/from16 v5, v32

    move/from16 v11, v35

    move-object/from16 v1, v36

    move-object/from16 v10, v37

    move-object/from16 v8, v44

    goto/16 :goto_1e

    :cond_30
    move-object/from16 v32, v5

    move-object/from16 v44, v8

    move-object v1, v9

    move-object/from16 v37, v10

    .line 2278
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v3

    if-le v0, v3, :cond_33

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_32

    .line 2290
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->clear()V

    move-object/from16 v0, v34

    .line 2291
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v37

    .line 2292
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2293
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->clear()V

    move-object/from16 v4, v44

    .line 2294
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2297
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_31

    const/4 v11, 0x1

    goto :goto_25

    :cond_31
    const/4 v5, 0x1

    goto :goto_24

    :cond_32
    move-object/from16 v0, v34

    move-object/from16 v4, v44

    goto :goto_23

    :cond_33
    move-object/from16 v0, v34

    move-object/from16 v4, v44

    goto :goto_22

    :cond_34
    :goto_20
    move/from16 v24, v0

    :cond_35
    :goto_21
    move-object/from16 v32, v5

    move-object v4, v8

    move-object v1, v9

    move-object/from16 v0, v34

    :goto_22
    const/4 v3, 0x5

    :goto_23
    move/from16 v5, p1

    :goto_24
    add-int/lit8 v6, v33, 0x1

    move-object v7, v0

    move-object v9, v1

    move-object v8, v4

    move v1, v5

    move v3, v6

    move/from16 v0, v24

    move/from16 v10, v30

    move-object/from16 v5, v32

    goto/16 :goto_1b

    :cond_36
    move/from16 v24, v0

    move/from16 p1, v1

    move-object/from16 v32, v5

    move-object v0, v7

    move-object v4, v8

    move-object v1, v9

    move/from16 v30, v10

    const/4 v3, 0x5

    move/from16 v11, p1

    .line 2306
    :goto_25
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_37

    goto :goto_26

    :cond_37
    add-int/lit8 v10, v30, 0x1

    move/from16 v3, p2

    move-object v7, v0

    move-object v9, v1

    move-object v8, v4

    move/from16 v0, v24

    move/from16 v4, v31

    move-object/from16 v5, v32

    const/4 v1, 0x5

    const/4 v6, 0x0

    goto/16 :goto_18

    :cond_38
    move/from16 v31, v4

    move-object v4, v8

    move/from16 p1, v11

    :goto_26
    const/4 v1, 0x2

    :goto_27
    new-array v0, v1, [Landroid/graphics/Point;

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_39

    .line 2326
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x2

    goto :goto_28

    .line 2328
    :cond_39
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    const/4 v3, 0x0

    aget-object v5, v0, v3

    .line 2329
    iget v6, v5, Landroid/graphics/Point;->x:I

    aget-object v7, v25, v3

    invoke-static {v2}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v8

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->x:I

    aget-object v5, v0, v3

    .line 2330
    iget v6, v5, Landroid/graphics/Point;->y:I

    aget-object v7, v25, v3

    invoke-static {v2}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v3

    aget-object v3, v7, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    aget-object v5, v0, v3

    .line 2331
    iget v6, v5, Landroid/graphics/Point;->x:I

    aget-object v7, v25, v3

    invoke-static {v2}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v8

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->x:I

    aget-object v5, v0, v3

    .line 2332
    iget v6, v5, Landroid/graphics/Point;->y:I

    aget-object v7, v25, v3

    invoke-static {v2}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v2

    aget-object v2, v7, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_29

    :cond_3a
    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_2a
    if-ge v1, v2, :cond_3b

    .line 2335
    aget-object v3, v0, v1

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 2336
    aget-object v3, v0, v1

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_3b
    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 2343
    iget v2, v2, Landroid/graphics/Point;->x:I

    const/16 v18, 0x0

    aget-object v3, v0, v18

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    aget-object v3, v0, v1

    .line 2344
    iget v1, v3, Landroid/graphics/Point;->y:I

    aget-object v3, v0, v18

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    if-eqz v11, :cond_42

    .line 2375
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    aget-object v6, v25, v18

    .line 2376
    invoke-static {v5}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v7

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/Point;->x:I

    aget-object v7, v0, v18

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aget-object v7, v25, v18

    .line 2377
    invoke-static {v5}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v8

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    aget-object v8, v0, v18

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x1

    aget-object v10, v25, v8

    .line 2378
    invoke-static {v5}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v11

    aget-object v10, v10, v11

    iget v10, v10, Landroid/graphics/Point;->x:I

    aget-object v11, v0, v8

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    aget-object v11, v25, v8

    .line 2379
    invoke-static {v5}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v5

    aget-object v5, v11, v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    aget-object v11, v0, v8

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v11

    int-to-float v5, v5

    mul-float v11, v6, v6

    mul-float v12, v7, v7

    add-float/2addr v11, v12

    mul-float v12, v10, v10

    mul-float v13, v5, v5

    add-float/2addr v12, v13

    float-to-double v13, v11

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v13, v16

    if-ltz v11, :cond_3f

    float-to-double v11, v12

    cmpg-double v13, v11, v16

    if-gez v13, :cond_3c

    goto :goto_2d

    :cond_3c
    float-to-double v11, v5

    float-to-double v13, v10

    .line 2388
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    float-to-double v12, v7

    float-to-double v5, v6

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double/2addr v10, v5

    double-to-float v5, v10

    float-to-double v6, v5

    cmpg-double v10, v6, v19

    if-gez v10, :cond_3d

    .line 2390
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double v6, v6, v26

    double-to-float v5, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    goto :goto_2c

    :cond_3d
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    cmpl-double v12, v6, v10

    if-lez v12, :cond_3e

    .line 2392
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v6, v26

    double-to-float v5, v6

    :cond_3e
    :goto_2c
    add-float/2addr v9, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_3f
    :goto_2d
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    :goto_2e
    const/16 v18, 0x0

    goto/16 :goto_2b

    :cond_40
    if-lez v4, :cond_41

    int-to-float v3, v4

    div-float/2addr v9, v3

    const/4 v3, 0x0

    goto :goto_2f

    :cond_41
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_2f
    aget-object v4, v0, v3

    .line 2437
    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v10

    aget-object v8, v0, v3

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-double v10, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    sub-double/2addr v4, v10

    double-to-float v4, v4

    aget-object v5, v0, v3

    .line 2438
    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v10, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    aget-object v5, v0, v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-double v12, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v5

    add-double/2addr v10, v12

    double-to-float v5, v10

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    int-to-float v2, v2

    aget-object v6, v0, v3

    .line 2445
    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    add-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v1, v1

    aget-object v0, v0, v3

    .line 2446
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v5

    add-float/2addr v1, v0

    float-to-int v1, v1

    goto :goto_30

    :cond_42
    const/4 v9, 0x0

    :goto_30
    move/from16 v3, v31

    const/4 v13, 0x0

    :goto_31
    if-ge v13, v3, :cond_44

    .line 2610
    aget-object v0, v23, v13

    if-eqz v0, :cond_43

    .line 2611
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v4, 0x0

    .line 2612
    aput-object v4, v23, v13

    :cond_43
    add-int/lit8 v13, v13, 0x1

    goto :goto_31

    .line 2619
    :cond_44
    new-instance v0, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v9, v3}, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;-><init>(IIFF)V

    return-object v0

    :cond_45
    :goto_32
    move/from16 v3, v24

    const/4 v15, 0x0

    :goto_33
    if-ge v15, v3, :cond_47

    .line 1852
    aget-object v0, v23, v15

    if-eqz v0, :cond_46

    .line 1853
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v1, 0x0

    .line 1854
    aput-object v1, v23, v15

    goto :goto_34

    :cond_46
    const/4 v1, 0x0

    :goto_34
    add-int/lit8 v15, v15, 0x1

    goto :goto_33

    .line 1859
    :cond_47
    new-instance v0, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;-><init>(IIFF)V

    return-object v0

    :cond_48
    const/4 v3, 0x0

    const-string v0, "must have 2 bitmaps"

    .line 1507
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    new-instance v0, Lnet/sourceforge/opencamera/PanoramaProcessorException;

    invoke-direct {v0, v3}, Lnet/sourceforge/opencamera/PanoramaProcessorException;-><init>(I)V

    goto :goto_36

    :goto_35
    throw v0

    :goto_36
    goto :goto_35
.end method

.method private blendPyramids(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    if-nez v2, :cond_0

    .line 1078
    new-instance v2, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    iget-object v3, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v2, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    .line 1105
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const-string v4, "PanoramaProcessor"

    if-ne v2, v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 1110
    invoke-static {}, Lnet/sourceforge/opencamera/PanoramaProcessor;->getBlendDimension()I

    move-result v2

    .line 1111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    rem-int/2addr v3, v2

    const-string v5, " not a multiple of "

    if-nez v3, :cond_a

    .line 1115
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    rem-int/2addr v3, v2

    if-nez v3, :cond_9

    const/16 v2, 0x8

    new-array v4, v2, [I

    .line 1133
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v5, 0x4

    div-int/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v7, v5

    const/4 v8, 0x1

    invoke-static {v0, v3, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1134
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/2addr v7, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    invoke-static {v1, v7, v9, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v9, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1152
    invoke-static {v9, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v9

    iget-object v10, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1153
    invoke-static {v10, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v10

    new-array v11, v8, [I

    iget-object v12, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1156
    invoke-static {v12}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v13

    invoke-static {v12, v13, v8}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v8

    iget-object v12, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    .line 1157
    invoke-virtual {v12, v8}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->bind_errors(Landroid/renderscript/Allocation;)V

    .line 1159
    new-instance v12, Landroid/renderscript/Script$LaunchOptions;

    invoke-direct {v12}, Landroid/renderscript/Script$LaunchOptions;-><init>()V

    iget-object v13, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    .line 1163
    invoke-virtual {v13, v10}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 1166
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/2addr v13, v2

    const/4 v14, 0x2

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    const/4 v14, -0x1

    .line 1169
    aput v14, v4, v5

    add-int/lit8 v17, v5, 0x1

    .line 1172
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    mul-int v18, v18, v17

    div-int/lit8 v14, v18, 0x8

    .line 1176
    invoke-static {v12, v15, v14}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;

    move/from16 v19, v14

    const/4 v2, -0x1

    const/4 v15, 0x0

    :goto_1
    const/4 v14, 0x7

    if-ge v15, v14, :cond_3

    int-to-float v14, v15

    const/high16 v20, 0x40c00000    # 6.0f

    div-float v14, v14, v20

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v14

    const/high16 v21, 0x3e800000    # 0.25f

    mul-float v20, v20, v21

    const/high16 v21, 0x3f400000    # 0.75f

    mul-float v14, v14, v21

    add-float v20, v20, v14

    .line 1184
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v20, v20, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float v14, v20, v14

    float-to-int v14, v14

    const/16 v16, 0x2

    .line 1185
    div-int/lit8 v20, v13, 0x2

    move/from16 v21, v13

    sub-int v13, v14, v20

    add-int v14, v14, v20

    .line 1195
    invoke-static {v12, v13, v14}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;

    iget-object v13, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    .line 1196
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->invoke_init_errors()V

    iget-object v13, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    .line 1197
    invoke-virtual {v13, v9, v12}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->forEach_compute_error(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 1198
    invoke-virtual {v8, v11}, Landroid/renderscript/Allocation;->copyTo([I)V

    const/4 v13, 0x0

    aget v14, v11, v13

    .line 1205
    aget v13, v4, v5

    move-object/from16 v20, v11

    const/4 v11, -0x1

    if-eq v13, v11, :cond_1

    if-ge v14, v2, :cond_2

    .line 1206
    :cond_1
    aput v15, v4, v5

    move v2, v14

    :cond_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v20

    move/from16 v13, v21

    goto :goto_1

    :cond_3
    const/16 v16, 0x2

    move/from16 v5, v17

    move/from16 v15, v19

    const/16 v2, 0x8

    const/4 v14, 0x2

    goto :goto_0

    .line 1222
    :cond_4
    invoke-virtual {v9}, Landroid/renderscript/Allocation;->destroy()V

    .line 1223
    invoke-virtual {v10}, Landroid/renderscript/Allocation;->destroy()V

    .line 1224
    invoke-virtual {v8}, Landroid/renderscript/Allocation;->destroy()V

    if-eq v3, v0, :cond_5

    .line 1228
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    if-eq v7, v1, :cond_6

    .line 1231
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    iget-object v2, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    const-string v3, "lhs"

    const/4 v5, 0x4

    .line 1299
    invoke-direct {v6, v2, v0, v5, v3}, Lnet/sourceforge/opencamera/PanoramaProcessor;->createLaplacianPyramidRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/graphics/Bitmap;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    iget-object v0, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    const-string v2, "rhs"

    .line 1302
    invoke-direct {v6, v0, v1, v5, v2}, Lnet/sourceforge/opencamera/PanoramaProcessor;->createLaplacianPyramidRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/graphics/Bitmap;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    iget-object v1, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    const/4 v5, 0x7

    move-object/from16 v0, p0

    move-object v2, v7

    move-object v3, v8

    .line 1324
    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/PanoramaProcessor;->mergePyramidsRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Ljava/util/List;Ljava/util/List;[II)V

    iget-object v0, v6, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    .line 1328
    invoke-direct {v6, v0, v7}, Lnet/sourceforge/opencamera/PanoramaProcessor;->collapseLaplacianPyramidRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1332
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/Allocation;

    .line 1333
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    goto :goto_2

    .line 1335
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/Allocation;

    .line 1336
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    goto :goto_3

    :cond_8
    return-object v0

    .line 1116
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bitmap height "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1112
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bitmap width "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    const-string v0, "lhs/rhs bitmaps of different dimensions"

    .line 1106
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private blend_panorama_alpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    .line 2623
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2624
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 2625
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const-string v3, "PanoramaProcessor"

    if-ne v0, v2, :cond_2

    .line 2629
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 2633
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2634
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2635
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2636
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2637
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_0

    add-int/lit8 v8, v7, 0x1

    .line 2639
    invoke-virtual {v3, v7, v6, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    int-to-float v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    int-to-float v7, v7

    sub-float v10, v9, v7

    div-float/2addr v10, v9

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float v10, v10, v11

    float-to-int v10, v10

    .line 2645
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2646
    invoke-virtual {v5, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    div-float/2addr v7, v9

    mul-float v7, v7, v11

    float-to-int v7, v7

    .line 2652
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2653
    invoke-virtual {v5, p2, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move v7, v8

    goto :goto_0

    :cond_0
    return-object v4

    :cond_1
    const-string p1, "bitmaps have different heights"

    .line 2630
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_2
    const-string p1, "bitmaps have different widths"

    .line 2626
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private collapseLaplacianPyramid(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Landroid/graphics/Bitmap;
    .locals 3

    .line 712
    invoke-static {p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$000(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 713
    invoke-static {p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$100(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 714
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/PanoramaProcessor;->expandBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 715
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 716
    invoke-static {p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$100(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-direct {p0, v2, v0}, Lnet/sourceforge/opencamera/PanoramaProcessor;->addBitmap(Landroid/graphics/Bitmap;[F)V

    add-int/lit8 v1, v1, -0x1

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private collapseLaplacianPyramidRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;",
            "Ljava/util/List<",
            "Landroid/renderscript/Allocation;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 686
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Allocation;

    .line 688
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    :goto_0
    if-ltz v2, :cond_1

    .line 689
    invoke-direct {p0, p1, v0}, Lnet/sourceforge/opencamera/PanoramaProcessor;->expandBitmapRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    move-result-object v3

    if-nez v1, :cond_0

    .line 691
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 693
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Allocation;

    invoke-direct {p0, p1, v3, v0}, Lnet/sourceforge/opencamera/PanoramaProcessor;->addBitmapRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    add-int/lit8 v2, v2, -0x1

    const/4 v1, 0x0

    move-object v0, v3

    goto :goto_0

    .line 698
    :cond_1
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    move-result p1

    .line 699
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    move-result p2

    .line 700
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 701
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    if-nez v1, :cond_2

    .line 703
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_2
    return-object p1
.end method

.method private static computeDistancesBetweenMatches(Ljava/util/List;IIILjava/util/List;[I[I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;",
            ">;III",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;[I[I)V"
        }
    .end annotation

    move/from16 v0, p3

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v1

    move/from16 v2, p1

    move/from16 v3, p2

    :goto_0
    if-ge v2, v3, :cond_4

    move-object/from16 v4, p0

    .line 1383
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;

    .line 1410
    invoke-static {v5}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$400(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v6

    mul-int v6, v6, v1

    .line 1411
    invoke-static {v5}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$500(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;)I

    move-result v7

    mul-int v7, v7, v1

    neg-int v8, v0

    move v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-gt v10, v0, :cond_1

    move v9, v8

    :goto_2
    if-gt v9, v0, :cond_0

    .line 1427
    aget v0, p5, v6

    .line 1428
    aget v3, p6, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    int-to-float v4, v0

    add-float/2addr v12, v4

    mul-int v4, v0, v0

    int-to-float v4, v4

    add-float/2addr v11, v4

    int-to-float v4, v3

    add-float/2addr v14, v4

    mul-int v4, v3, v3

    int-to-float v4, v4

    add-float/2addr v13, v4

    mul-int v0, v0, v3

    int-to-float v0, v0

    add-float/2addr v15, v0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p0

    move/from16 v3, p2

    move/from16 v0, p3

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, p0

    move/from16 v3, p2

    move/from16 v0, p3

    goto :goto_1

    :cond_1
    int-to-float v0, v1

    mul-float v11, v11, v0

    mul-float v3, v12, v12

    sub-float/2addr v11, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v6, v11, v4

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    div-float v6, v3, v11

    :goto_3
    mul-float v13, v13, v0

    mul-float v7, v14, v14

    sub-float/2addr v13, v7

    cmpl-float v7, v13, v4

    if-nez v7, :cond_3

    const/4 v9, 0x0

    goto :goto_4

    :cond_3
    div-float v9, v3, v13

    :goto_4
    mul-float v0, v0, v15

    mul-float v12, v12, v14

    sub-float/2addr v0, v12

    mul-float v0, v0, v0

    mul-float v0, v0, v6

    mul-float v0, v0, v9

    .line 1453
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v3, v0

    invoke-static {v5, v3}, Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;->access$602(Lnet/sourceforge/opencamera/PanoramaProcessor$FeatureMatch;F)F

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, p2

    move/from16 v0, p3

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private computeInterpolatedBestPath([IIII[II)V
    .locals 16

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    .line 724
    array-length v4, v3

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_6

    int-to-float v7, v6

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    mul-float v7, v7, v4

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v10, v7, v8

    if-gtz v10, :cond_0

    .line 745
    aget v7, v3, v5

    :goto_1
    int-to-float v7, v7

    :goto_2
    move/from16 v10, p6

    goto :goto_4

    .line 747
    :cond_0
    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    add-float/2addr v10, v8

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_1

    .line 748
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    aget v7, v3, v7

    goto :goto_1

    :cond_1
    sub-float/2addr v7, v8

    float-to-int v10, v7

    int-to-float v11, v10

    sub-float/2addr v7, v11

    const v11, 0x3dcccccd    # 0.1f

    cmpg-float v12, v7, v11

    if-gez v12, :cond_2

    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    const v12, 0x3f666666    # 0.9f

    cmpl-float v12, v7, v12

    if-lez v12, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    sub-float/2addr v7, v11

    const v11, 0x3f4ccccd    # 0.8f

    div-float/2addr v7, v11

    .line 764
    :goto_3
    aget v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    .line 765
    aget v10, v3, v10

    sub-float v12, v9, v7

    int-to-float v11, v11

    mul-float v12, v12, v11

    int-to-float v10, v10

    mul-float v7, v7, v10

    add-float/2addr v7, v12

    goto :goto_2

    :goto_4
    int-to-float v11, v10

    sub-float/2addr v11, v9

    div-float/2addr v7, v11

    sub-float/2addr v9, v7

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float v9, v9, v11

    const/high16 v11, 0x3f400000    # 0.75f

    mul-float v7, v7, v11

    add-float/2addr v9, v7

    int-to-float v7, v0

    mul-float v9, v9, v7

    add-float/2addr v9, v8

    float-to-int v7, v9

    .line 776
    aput v7, p1, v6

    .line 781
    div-int/lit8 v8, v2, 0x2

    sub-int v9, v7, v8

    const-string v11, "    width: "

    const-string v12, "    blend_width: "

    const-string v13, "]: "

    const-string v14, "    interpolated_best_path["

    const-string v15, "PanoramaProcessor"

    if-ltz v9, :cond_5

    add-int/2addr v7, v8

    if-gt v7, v0, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 788
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "blend window runs off right hand size"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "blend window runs off left hand size"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method private computePanoramaTransforms(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIJ)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Matrix;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;IIIIIJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/PanoramaProcessorException;
        }
    .end annotation

    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p8

    .line 3203
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3211
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    if-lez v5, :cond_3

    .line 3219
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    int-to-float v8, v1

    const/high16 v9, 0x44020000    # 520.0f

    div-float v9, v8, v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    :goto_1
    const/4 v13, 0x4

    if-gt v11, v13, :cond_1

    int-to-float v14, v12

    div-float v15, v14, v9

    move/from16 p11, v5

    float-to-double v4, v15

    const-wide v15, 0x3fee666660000000L    # 0.949999988079071

    cmpl-double v17, v4, v15

    if-ltz v17, :cond_0

    const-wide v15, 0x3ff0ccccc0000000L    # 1.0499999523162842

    cmpg-double v17, v4, v15

    if-gtz v17, :cond_0

    move v9, v14

    goto :goto_2

    :cond_0
    add-int/lit8 v11, v11, 0x1

    mul-int/lit8 v12, v12, 0x2

    move/from16 v5, p11

    goto :goto_1

    :cond_1
    move/from16 p11, v5

    :goto_2
    mul-int/lit8 v4, v1, 0x3

    .line 3255
    div-int/2addr v4, v13

    .line 3261
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v12, v11, v9

    .line 3262
    invoke-virtual {v5, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v12, p11

    .line 3263
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroid/graphics/Bitmap;

    sub-int v13, p7, p9

    sub-int v15, v1, v4

    const/4 v10, 0x2

    div-int/lit8 v21, v15, 0x2

    mul-int/lit8 v22, p9, 0x2

    const/16 v20, 0x1

    move v15, v13

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v18, v4

    move-object/from16 v19, v5

    invoke-static/range {v14 .. v20}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v12, -0x1

    .line 3264
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    add-int v15, p7, v2

    sub-int v15, v15, p9

    invoke-static/range {v14 .. v20}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 3293
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v14, p0

    invoke-direct {v14, v5, v4, v7, v12}, Lnet/sourceforge/opencamera/PanoramaProcessor;->autoAlignmentByFeature(IILjava/util/List;I)Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;

    move-result-object v4

    .line 3294
    iget v5, v4, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;->offset_x:I

    .line 3295
    iget v15, v4, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;->offset_y:I

    .line 3296
    iget v10, v4, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;->rotation:F

    move/from16 v18, v12

    float-to-double v11, v10

    .line 3297
    iget v4, v4, Lnet/sourceforge/opencamera/PanoramaProcessor$AutoAlignmentByFeatureResult;->y_scale:F

    int-to-float v5, v5

    mul-float v5, v5, v9

    float-to-int v5, v5

    int-to-float v10, v15

    mul-float v10, v10, v9

    float-to-int v9, v10

    .line 3312
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap;

    .line 3313
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 3315
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 3321
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 3322
    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v10, v10

    int-to-float v11, v13

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/high16 v10, 0x3f800000    # 1.0f

    .line 3323
    invoke-virtual {v7, v10, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v4, v5

    int-to-float v5, v9

    .line 3324
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v4, v2

    .line 3328
    invoke-virtual {v3, v4, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    neg-int v4, v2

    int-to-float v4, v4

    .line 3329
    invoke-virtual {v3, v4, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3331
    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    const/4 v4, 0x2

    new-array v4, v4, [F

    move/from16 v5, p5

    int-to-float v7, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    const/4 v10, 0x0

    aput v7, v4, v10

    div-float/2addr v8, v9

    const/4 v9, 0x1

    aput v8, v4, v9

    .line 3342
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v4, v4, v10

    sub-float/2addr v4, v7

    float-to-int v4, v4

    neg-int v4, v4

    goto :goto_4

    :cond_3
    move-object/from16 v14, p0

    move/from16 v18, v5

    const/4 v10, 0x0

    move/from16 v5, p5

    const/4 v4, 0x0

    .line 3353
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v7, p2

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v8, p3

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3356
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object/from16 v9, p1

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v2

    add-int/lit8 v4, v18, 0x1

    move v5, v4

    goto/16 :goto_0

    :cond_4
    move-object/from16 v14, p0

    return-void
.end method

.method private createGaussianPyramid(Landroid/graphics/Bitmap;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 508
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/PanoramaProcessor;->reduceBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 509
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createGaussianPyramidRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/graphics/Bitmap;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;",
            "Landroid/graphics/Bitmap;",
            "I)",
            "Ljava/util/List<",
            "Landroid/renderscript/Allocation;",
            ">;"
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 491
    invoke-static {v1, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p2

    .line 492
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 494
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/PanoramaProcessor;->reduceBitmapRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    move-result-object p2

    .line 495
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createLaplacianPyramid(Landroid/graphics/Bitmap;ILjava/lang/String;)Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;
    .locals 6

    .line 618
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/opencamera/PanoramaProcessor;->createGaussianPyramid(Landroid/graphics/Bitmap;I)Ljava/util/List;

    move-result-object p1

    .line 634
    new-instance p2, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;

    invoke-direct {p2}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;-><init>()V

    const/4 p3, 0x0

    .line 636
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_0

    .line 640
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    add-int/lit8 v1, p3, 0x1

    .line 642
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 644
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/PanoramaProcessor;->expandBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 656
    invoke-direct {p0, v0, v2}, Lnet/sourceforge/opencamera/PanoramaProcessor;->subtractBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[F

    move-result-object v3

    .line 662
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2, v3, v4, v5}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->addDiff([FII)V

    .line 668
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 669
    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move p3, v1

    goto :goto_0

    .line 676
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->setTopLevel(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private createLaplacianPyramidRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/graphics/Bitmap;ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;",
            "Landroid/graphics/Bitmap;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/renderscript/Allocation;",
            ">;"
        }
    .end annotation

    .line 530
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/PanoramaProcessor;->createGaussianPyramidRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/graphics/Bitmap;I)Ljava/util/List;

    move-result-object p2

    .line 538
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 p4, 0x0

    .line 540
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p4, v0, :cond_0

    .line 543
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Allocation;

    add-int/lit8 v1, p4, 0x1

    .line 544
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/Allocation;

    .line 545
    invoke-direct {p0, p1, v2}, Lnet/sourceforge/opencamera/PanoramaProcessor;->expandBitmapRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 559
    invoke-direct {p0, p1, v0, v2}, Lnet/sourceforge/opencamera/PanoramaProcessor;->subtractBitmapRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 567
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v0, 0x0

    .line 571
    invoke-interface {p2, p4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    move p4, v1

    goto :goto_0

    .line 576
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/renderscript/Allocation;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method private createProjectedBitmap(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Paint;IIDI)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 2674
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2677
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v4, :cond_4

    .line 2681
    div-int/lit8 v13, v4, 0x2

    add-int v13, v13, p9

    sub-int v13, v11, v13

    int-to-float v13, v13

    float-to-double v13, v13

    .line 2685
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, p7

    double-to-float v13, v13

    int-to-float v14, v4

    div-float/2addr v13, v14

    int-to-float v14, v5

    move v15, v9

    float-to-double v8, v13

    .line 2686
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v14

    sub-float v9, v14, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v9, v13

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v9, v9, v16

    float-to-int v9, v9

    add-float/2addr v14, v8

    div-float/2addr v14, v13

    add-float v14, v14, v16

    float-to-int v8, v14

    if-nez v11, :cond_0

    move v15, v9

    move v13, v12

    const/4 v10, 0x0

    move v12, v8

    goto :goto_2

    :cond_0
    sub-int v13, v9, v15

    .line 2702
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_2

    sub-int v13, v8, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-le v13, v14, :cond_1

    goto :goto_1

    :cond_1
    move v13, v12

    move v12, v10

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v10, 0x0

    .line 2703
    invoke-virtual {v0, v12, v10, v11, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2704
    invoke-virtual {v1, v12, v9, v11, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2705
    invoke-virtual {v7, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move v12, v8

    move v15, v9

    move v13, v11

    :goto_2
    add-int/lit8 v14, v4, -0x1

    if-ne v11, v14, :cond_3

    add-int/lit8 v14, v11, 0x1

    .line 2713
    invoke-virtual {v0, v13, v10, v14, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2714
    invoke-virtual {v1, v13, v9, v14, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2715
    invoke-virtual {v7, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v11, v11, 0x1

    move v10, v12

    move v12, v13

    move v9, v15

    goto :goto_0

    :cond_4
    return-object v6
.end method

.method private expandBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 294
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 295
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 p1, v8, 0x4

    mul-int p1, p1, v9

    .line 307
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 309
    invoke-virtual {v0, v10}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    mul-int/lit8 v7, v8, 0x2

    mul-int/lit8 v8, v8, 0x8

    mul-int/lit8 v9, v9, 0x2

    mul-int v8, v8, v9

    .line 315
    new-array v10, v8, [B

    .line 316
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;

    invoke-direct {v0, p1, v10, v7, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFullFunction;-><init>([B[BII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v7

    move v6, v9

    .line 317
    invoke-static/range {v0 .. v6}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    .line 346
    new-array p1, v8, [B

    .line 347
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;

    invoke-direct {v0, v10, p1, v7, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;-><init>([B[BII)V

    .line 348
    invoke-static/range {v0 .. v6}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    .line 380
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;

    invoke-direct {v0, p1, v10, v7, v9}, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;-><init>([B[BII)V

    .line 381
    invoke-static/range {v0 .. v6}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    .line 388
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v9, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    mul-int v0, v7, v9

    .line 390
    new-array v1, v0, [I

    .line 398
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 399
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v7

    move v6, v7

    move v7, v9

    .line 402
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method private expandBitmapRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 4

    .line 203
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 204
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 207
    invoke-static {v2}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v3, v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 211
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 212
    invoke-virtual {p1, v2, v2}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->forEach_expand(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    iget-object p2, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 229
    invoke-static {p2}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {p2, v3, v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object p2

    .line 232
    invoke-virtual {p1, v2}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 233
    invoke-virtual {p1, v2, p2}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->forEach_blur1dX(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 239
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 240
    invoke-virtual {p1, p2, v2}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->forEach_blur1dY(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 244
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->destroy()V

    return-object v2
.end method

.method private freeScripts()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->pyramidBlendingScript:Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;

    iput-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->featureDetectorScript:Lnet/sourceforge/opencamera/ScriptC_feature_detector;

    return-void
.end method

.method private static getBlendDimension()I
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 1061
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private initRenderscript()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->context:Landroid/content/Context;

    .line 88
    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    :cond_0
    return-void
.end method

.method private mergePyramids(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;[II)V
    .locals 19

    if-nez p3, :cond_0

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    move/from16 v1, p4

    :goto_0
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 922
    :goto_1
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$200(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 923
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$200(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 924
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 927
    :cond_1
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$000(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 928
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 931
    new-array v10, v2, [I

    const/4 v11, 0x0

    .line 933
    :goto_2
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$100(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "pyramids of different dimensions"

    const-string v4, "PanoramaProcessor"

    if-ge v11, v2, :cond_4

    .line 934
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$300(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 935
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$200(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 936
    invoke-static/range {p2 .. p2}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$300(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v15, :cond_3

    invoke-static/range {p2 .. p2}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$200(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v14, :cond_3

    .line 942
    div-int/lit8 v2, v15, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v11, :cond_2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 949
    :cond_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v2, p0

    move-object v3, v10

    move v4, v15

    move v5, v14

    move v6, v12

    move-object v7, v0

    move v8, v1

    .line 953
    invoke-direct/range {v2 .. v8}, Lnet/sourceforge/opencamera/PanoramaProcessor;->computeInterpolatedBestPath([IIII[II)V

    .line 955
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;

    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$100(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, [F

    invoke-static/range {p2 .. p2}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$100(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [F

    move-object v3, v2

    move v7, v15

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;-><init>([F[FII[I)V

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object v12, v2

    move v2, v14

    move-object v14, v3

    move v3, v15

    move v15, v4

    move/from16 v17, v3

    move/from16 v18, v2

    .line 956
    invoke-static/range {v12 .. v18}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 937
    :cond_3
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 960
    :cond_4
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$000(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 961
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$000(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 962
    invoke-static/range {p2 .. p2}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$000(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v9, :cond_5

    invoke-static/range {p2 .. p2}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$000(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v15, :cond_5

    .line 969
    div-int/lit8 v11, v9, 0x2

    move-object/from16 v2, p0

    move-object v3, v10

    move v4, v9

    move v5, v15

    move v6, v11

    move-object v7, v0

    move v8, v1

    .line 974
    invoke-direct/range {v2 .. v8}, Lnet/sourceforge/opencamera/PanoramaProcessor;->computeInterpolatedBestPath([IIII[II)V

    .line 976
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;

    invoke-static/range {p2 .. p2}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$000(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1, v11, v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;-><init>(Landroid/graphics/Bitmap;I[I)V

    .line 977
    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$000(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;->access$000(Lnet/sourceforge/opencamera/PanoramaProcessor$LaplacianPyramid;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v1, 0x0

    move-object v11, v0

    move v0, v15

    move v15, v1

    move/from16 v16, v9

    move/from16 v17, v0

    invoke-static/range {v11 .. v17}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    return-void

    .line 963
    :cond_5
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private mergePyramidsRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Ljava/util/List;Ljava/util/List;[II)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;",
            "Ljava/util/List<",
            "Landroid/renderscript/Allocation;",
            ">;",
            "Ljava/util/List<",
            "Landroid/renderscript/Allocation;",
            ">;[II)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    if-nez p4, :cond_0

    filled-new-array {v2}, [I

    move-result-object v3

    const/4 v4, 0x3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p4

    move/from16 v4, p5

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 821
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 822
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/renderscript/Allocation;

    .line 823
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v7

    .line 824
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v13, p0

    iget-object v5, v13, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 827
    invoke-static {v5}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v5, v7, v6}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v14

    .line 828
    invoke-virtual {v0, v14}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->bind_interpolated_best_path(Landroid/renderscript/Allocation;)V

    .line 829
    new-array v15, v6, [I

    const/4 v11, 0x0

    .line 831
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_7

    .line 832
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/renderscript/Allocation;

    move-object/from16 v9, p3

    .line 833
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/renderscript/Allocation;

    .line 835
    invoke-virtual {v10}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v8

    .line 836
    invoke-virtual {v10}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v7

    .line 837
    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v6

    const-string v12, "PanoramaProcessor"

    if-ne v6, v8, :cond_6

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v6

    if-ne v6, v7, :cond_6

    .line 841
    invoke-virtual {v10}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v6}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/Element;)Landroid/renderscript/Element$DataType;

    move-result-object v6

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/Element;)Landroid/renderscript/Element$DataType;

    move-result-object v2

    if-ne v6, v2, :cond_5

    .line 846
    invoke-virtual {v0, v5}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 850
    div-int/lit8 v2, v8, 0x2

    .line 853
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v16, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ne v11, v5, :cond_2

    goto :goto_4

    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v11, :cond_3

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 861
    :cond_3
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_4
    move-object/from16 v5, p0

    move-object v6, v15

    move v12, v7

    move v7, v8

    move v1, v8

    move v8, v12

    move v9, v2

    move-object v12, v10

    move-object v10, v3

    move/from16 v17, v11

    move v11, v4

    .line 882
    invoke-direct/range {v5 .. v11}, Lnet/sourceforge/opencamera/PanoramaProcessor;->computeInterpolatedBestPath([IIII[II)V

    .line 883
    invoke-virtual {v14, v15}, Landroid/renderscript/Allocation;->copyFrom([I)V

    .line 885
    invoke-virtual {v0, v2, v1}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->invoke_setBlendWidth(II)V

    .line 889
    invoke-virtual {v12}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/Element;)Landroid/renderscript/Element$DataType;

    move-result-object v1

    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne v1, v2, :cond_4

    .line 890
    invoke-virtual {v0, v12, v12}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->forEach_merge_f(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    goto :goto_5

    .line 893
    :cond_4
    invoke-virtual {v0, v12, v12}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->forEach_merge(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    :goto_5
    add-int/lit8 v11, v17, 0x1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_5
    const-string v0, "allocations of different data types"

    .line 842
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    const-string v0, "allocations of different dimensions"

    .line 838
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 898
    :cond_7
    invoke-virtual {v14}, Landroid/renderscript/Allocation;->destroy()V

    return-void
.end method

.method private static nextMultiple(II)I
    .locals 1

    .line 2666
    rem-int v0, p0, p1

    if-lez v0, :cond_0

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method private reduceBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 119
    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v11, v9, 0x2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    mul-int v0, v8, v9

    .line 147
    new-array v13, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v13

    move v3, v8

    move v6, v8

    move v7, v9

    .line 148
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 v8, v8, 0x4

    mul-int v8, v8, v9

    .line 152
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v13}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 155
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    mul-int/lit8 v7, v10, 0x4

    mul-int v0, v7, v9

    .line 160
    new-array v8, v0, [B

    .line 161
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;

    invoke-direct {v0, p1, v8, v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;-><init>([B[BI)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v10

    move v6, v9

    .line 162
    invoke-static/range {v0 .. v6}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    mul-int v7, v7, v11

    .line 169
    new-array p1, v7, [B

    .line 170
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;

    invoke-direct {v0, v8, p1, v10, v11}, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;-><init>([B[BII)V

    move v6, v11

    .line 171
    invoke-static/range {v0 .. v6}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    mul-int v0, v10, v11

    .line 179
    new-array v1, v0, [I

    .line 180
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v12

    move v3, v10

    move v6, v10

    move v7, v11

    .line 184
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v12
.end method

.method private reduceBitmapRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 4

    .line 98
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 99
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 101
    invoke-static {v2}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v3, v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 103
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 104
    invoke-virtual {p1, v0, v0}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->forEach_reduce(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-object v0
.end method

.method private renderPanorama(Ljava/util/List;IILjava/util/List;Ljava/util/List;Ljava/util/List;IIILandroid/graphics/Bitmap;IIDJ)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Ljava/util/List<",
            "Landroid/graphics/Matrix;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;III",
            "Landroid/graphics/Bitmap;",
            "IIDJ)V"
        }
    .end annotation

    move/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    .line 3454
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 3455
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 3457
    new-instance v11, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v11, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 3458
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v8, p10

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v27, 0x0

    const/4 v7, 0x0

    .line 3460
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    move-object/from16 v6, p1

    .line 3463
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 3464
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v17, 0x0

    move-object/from16 v4, p6

    .line 3467
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    neg-int v3, v1

    if-eqz v7, :cond_0

    add-int/lit8 v5, v7, -0x1

    .line 3485
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v2, v5

    neg-int v10, v5

    sub-int/2addr v1, v5

    move/from16 v19, v1

    move/from16 v18, v2

    goto :goto_1

    :cond_0
    move/from16 v19, v1

    move/from16 v18, v2

    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_2

    const/4 v2, 0x2

    new-array v5, v2, [F

    int-to-float v2, v15

    const/high16 v20, 0x40000000    # 2.0f

    div-float v2, v2, v20

    aput v2, v5, v27

    int-to-float v1, v14

    div-float v1, v1, v20

    const/16 v20, 0x1

    aput v1, v5, v20

    .line 3502
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v5, v27

    sub-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v2, v10

    .line 3509
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v7, v5, :cond_1

    if-gez v1, :cond_1

    add-int v5, v2, v1

    if-lez v5, :cond_1

    neg-int v2, v1

    .line 3515
    :cond_1
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    int-to-float v5, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    add-int/2addr v3, v2

    add-int/2addr v10, v2

    :cond_2
    move/from16 v22, v3

    move/from16 v20, v10

    .line 3527
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v5, v10

    .line 3528
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3529
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3531
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    const/4 v2, 0x0

    .line 3533
    invoke-virtual {v1, v0, v2, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3534
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3544
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object v6, v11

    move/from16 v28, v7

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v29, v9

    move/from16 v9, p7

    move-object/from16 v30, v10

    const/16 v31, 0x2

    move/from16 v10, p8

    move-object/from16 v32, v11

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, v29

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, v20

    move/from16 v20, v22

    move-wide/from16 v21, p13

    move-wide/from16 v23, p15

    invoke-direct/range {v0 .. v24}, Lnet/sourceforge/opencamera/PanoramaProcessor;->renderPanoramaImage(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Paint;IIIIILandroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIIIIIDJ)V

    .line 3552
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v7, v28, 0x1

    move/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object/from16 v8, p10

    move-object/from16 v9, v29

    move-object/from16 v11, v32

    const/4 v10, 0x2

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private renderPanoramaImage(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Paint;IIIIILandroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIIIIIDJ)V
    .locals 16

    move/from16 v0, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p8

    move/from16 v15, p11

    move-object/from16 v10, p13

    move/from16 v8, p14

    move/from16 v9, p15

    move/from16 v7, p16

    move/from16 v6, p17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move v13, v8

    move-wide/from16 v8, p21

    move/from16 v10, p20

    .line 2745
    invoke-direct/range {v1 .. v10}, Lnet/sourceforge/opencamera/PanoramaProcessor;->createProjectedBitmap(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Paint;IIDI)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    if-lez p9, :cond_0

    .line 2753
    invoke-static {}, Lnet/sourceforge/opencamera/PanoramaProcessor;->getBlendDimension()I

    move-result v3

    mul-int/lit8 v4, p9, 0x2

    .line 2756
    invoke-static {v4, v3}, Lnet/sourceforge/opencamera/PanoramaProcessor;->nextMultiple(II)I

    move-result v4

    .line 2757
    invoke-static {v14, v3}, Lnet/sourceforge/opencamera/PanoramaProcessor;->nextMultiple(II)I

    move-result v3

    .line 2774
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2776
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    add-int v7, v15, p18

    sub-int v8, v7, p9

    add-int v7, v7, p9

    .line 2777
    invoke-virtual {v11, v8, v2, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    neg-int v7, v13

    .line 2779
    invoke-virtual {v11, v7, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2780
    invoke-virtual {v12, v2, v2, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v7, p6

    move-object/from16 v9, p12

    .line 2781
    invoke-virtual {v6, v9, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2785
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2787
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v10, v15, p9

    add-int v13, v15, p9

    .line 2788
    invoke-virtual {v11, v10, v2, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v10, p16

    move/from16 v13, p17

    .line 2789
    invoke-virtual {v11, v10, v13}, Landroid/graphics/Rect;->offset(II)V

    move/from16 v2, p15

    neg-int v13, v2

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    .line 2790
    invoke-virtual {v12, v2, v13, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2791
    invoke-virtual {v9, v1, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v2, p0

    .line 2798
    invoke-direct {v2, v5, v6}, Lnet/sourceforge/opencamera/PanoramaProcessor;->blendPyramids(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    sub-int v8, v8, p14

    int-to-float v4, v8

    const/4 v8, 0x0

    move-object/from16 v9, p13

    .line 2825
    invoke-virtual {v9, v3, v4, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2827
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 2828
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2829
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    move-object/from16 v7, p6

    move-object/from16 v9, p13

    move/from16 v10, p16

    :goto_0
    add-int v3, p10, p9

    if-nez v0, :cond_1

    neg-int v4, v15

    goto :goto_1

    :cond_1
    move/from16 v4, p9

    :goto_1
    add-int/lit8 v5, p2, -0x1

    if-ne v0, v5, :cond_2

    add-int v0, p10, v15

    sub-int v3, v0, v10

    :cond_2
    sub-int v3, v3, p19

    add-int v0, v15, v4

    add-int v5, v15, v3

    const/4 v6, 0x0

    .line 2853
    invoke-virtual {v11, v0, v6, v5, v14}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v0, p17

    .line 2854
    invoke-virtual {v11, v10, v0}, Landroid/graphics/Rect;->offset(II)V

    add-int v0, v15, p18

    add-int/2addr v4, v0

    sub-int v4, v4, p14

    move/from16 v5, p15

    neg-int v6, v5

    add-int/2addr v0, v3

    sub-int v0, v0, p14

    sub-int v3, v14, v5

    .line 2855
    invoke-virtual {v12, v4, v6, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2860
    invoke-virtual {v9, v1, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2913
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private saveAllocation(Ljava/lang/String;Landroid/renderscript/Allocation;)V
    .locals 13

    .line 1004
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 1005
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PanoramaProcessor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "byte size: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/Element;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/Element;)Landroid/renderscript/Element$DataType;

    move-result-object v2

    sget-object v3, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v4, 0x0

    const/16 v5, 0xff

    if-ne v2, v3, :cond_1

    mul-int v2, v0, v1

    mul-int/lit8 v3, v2, 0x4

    .line 1009
    new-array v3, v3, [F

    .line 1010
    invoke-virtual {p2, v3}, Landroid/renderscript/Allocation;->copyTo([F)V

    .line 1011
    new-array p2, v2, [I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    mul-int/lit8 v7, v6, 0x4

    .line 1013
    aget v8, v3, v7

    add-int/lit8 v9, v7, 0x1

    .line 1014
    aget v9, v3, v9

    add-int/lit8 v7, v7, 0x2

    .line 1015
    aget v7, v3, v7

    const/high16 v10, 0x43ff0000    # 510.0f

    div-float/2addr v8, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v8, v11

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float v8, v8, v12

    add-float/2addr v8, v11

    float-to-int v8, v8

    div-float/2addr v9, v10

    add-float/2addr v9, v11

    mul-float v9, v9, v12

    add-float/2addr v9, v11

    float-to-int v9, v9

    div-float/2addr v7, v10

    add-float/2addr v7, v11

    mul-float v7, v7, v12

    add-float/2addr v7, v11

    float-to-int v7, v7

    .line 1020
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1021
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1022
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1023
    invoke-static {v5, v8, v9, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, p2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1025
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_2

    .line 1027
    :cond_1
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/Element;)Landroid/renderscript/Element$DataType;

    move-result-object v2

    sget-object v3, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne v2, v3, :cond_4

    mul-int v2, v0, v1

    .line 1028
    new-array v3, v2, [B

    .line 1029
    invoke-virtual {p2, v3}, Landroid/renderscript/Allocation;->copyTo([B)V

    .line 1030
    new-array p2, v2, [I

    :goto_1
    if-ge v4, v2, :cond_3

    .line 1032
    aget-byte v6, v3, v4

    if-gez v6, :cond_2

    add-int/lit16 v6, v6, 0xff

    .line 1035
    :cond_2
    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1037
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_2

    .line 1040
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1041
    invoke-virtual {p2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    move-object p2, v0

    .line 1043
    :goto_2
    invoke-direct {p0, p2, p1}, Lnet/sourceforge/opencamera/PanoramaProcessor;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7

    .line 985
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 986
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 987
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v2, ".png"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 988
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, p2, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 990
    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, p2, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 991
    :goto_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->context:Landroid/content/Context;

    .line 992
    check-cast p1, Lnet/sourceforge/opencamera/MainActivity;

    .line 993
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 996
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 997
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private subtractBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[F
    .locals 8

    .line 436
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 438
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    mul-int v0, v0, v1

    .line 442
    new-array v0, v0, [F

    .line 444
    new-instance v1, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;

    invoke-direct {v1, v0, p2}, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;-><init>([FLandroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 445
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    return-object v0

    :cond_0
    const-string p1, "PanoramaProcessor"

    const-string p2, "bitmaps of different dimensions"

    .line 439
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private subtractBitmapRS(Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 4

    .line 417
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 418
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 419
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 423
    invoke-static {v2}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 424
    invoke-virtual {p1, p3}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 425
    invoke-virtual {p1, p2, v0}, Lnet/sourceforge/opencamera/ScriptC_pyramid_blending;->forEach_subtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-object v0

    :cond_0
    const-string p1, "PanoramaProcessor"

    const-string p2, "allocations of different dimensions"

    .line 420
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lnet/sourceforge/opencamera/PanoramaProcessor;->freeScripts()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_0
    .catch Landroid/renderscript/RSInvalidStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Landroid/renderscript/RSInvalidStateException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    :cond_0
    return-void
.end method

.method public panorama(Ljava/util/List;FFZ)Landroid/graphics/Bitmap;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;FFZ)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/PanoramaProcessorException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    const-wide/16 v17, 0x0

    const/4 v12, 0x0

    .line 3571
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 3572
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x1

    const/4 v0, 0x1

    .line 3578
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const-string v9, "PanoramaProcessor"

    if-ge v0, v1, :cond_1

    .line 3579
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 3580
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v14, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v10, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "bitmaps not of equal sizes"

    .line 3581
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    new-instance v0, Lnet/sourceforge/opencamera/PanoramaProcessorException;

    invoke-direct {v0, v11}, Lnet/sourceforge/opencamera/PanoramaProcessorException;-><init>(I)V

    throw v0

    :cond_1
    int-to-float v8, v14

    div-float v0, v8, p2

    float-to-int v7, v0

    move/from16 v0, p3

    float-to-double v0, v0

    .line 3597
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    sub-int v0, v14, v7

    const/16 v16, 0x2

    .line 3617
    div-int/lit8 v21, v0, 0x2

    const/high16 v0, 0x41200000    # 10.0f

    div-float v0, v8, v0

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v0, v0, v22

    float-to-int v0, v0

    .line 3627
    invoke-static {}, Lnet/sourceforge/opencamera/PanoramaProcessor;->getBlendDimension()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/PanoramaProcessor;->nextMultiple(II)I

    move-result v23

    .line 3629
    div-int/lit8 v24, v14, 0xa

    .line 3636
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3638
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 3639
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, p1

    move v5, v14

    move-object/from16 p2, v6

    move v6, v10

    move/from16 v27, v7

    move/from16 v7, v21

    move/from16 v28, v8

    move/from16 v8, v27

    move-object/from16 v29, v9

    move/from16 v9, v24

    move/from16 p3, v10

    move-wide/from16 v10, v17

    .line 3641
    invoke-direct/range {v0 .. v11}, Lnet/sourceforge/opencamera/PanoramaProcessor;->computePanoramaTransforms(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIJ)V

    .line 3646
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int v0, v0, v27

    mul-int/lit8 v1, v21, 0x2

    add-int v7, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, v27

    move/from16 v6, p3

    .line 3651
    invoke-direct/range {v0 .. v6}, Lnet/sourceforge/opencamera/PanoramaProcessor;->adjustPanoramaTransforms(Ljava/util/List;Ljava/util/List;IIII)V

    move v2, v14

    move/from16 v3, p3

    move-wide/from16 v5, v17

    .line 3656
    invoke-direct/range {v0 .. v6}, Lnet/sourceforge/opencamera/PanoramaProcessor;->adjustExposuresLocal(Ljava/util/List;IIIJ)F

    move-result v24

    if-eqz p4, :cond_6

    add-int/lit8 v0, v14, -0x1

    move/from16 v3, p3

    add-int/lit8 v10, v3, -0x1

    move v2, v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3666
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v8, 0x0

    aput v8, v6, v12

    const/4 v9, 0x1

    aput v8, v6, v9

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v30, v28, v11

    aput v30, v6, v16

    const/16 v31, 0x3

    aput v8, v6, v31

    const/16 v32, 0x4

    aput v8, v6, v32

    int-to-float v8, v3

    sub-float/2addr v8, v11

    const/4 v11, 0x5

    aput v8, v6, v11

    const/16 v33, 0x6

    aput v30, v6, v33

    const/16 v30, 0x7

    aput v8, v6, v30

    move-object/from16 v8, p2

    .line 3681
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v12, v34

    check-cast v12, Landroid/graphics/Matrix;

    invoke-virtual {v12, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v12, v6, v9

    float-to-int v12, v12

    .line 3683
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget v12, v6, v31

    float-to-int v12, v12

    .line 3684
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget v11, v6, v11

    float-to-int v11, v11

    .line 3686
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v11, v6, v30

    float-to-int v11, v11

    .line 3687
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    if-nez v1, :cond_2

    aget v12, v6, v11

    float-to-int v12, v12

    .line 3701
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget v12, v6, v32

    float-to-int v12, v12

    .line 3702
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3704
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v9

    if-ne v1, v12, :cond_3

    aget v12, v6, v16

    float-to-int v12, v12

    .line 3705
    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v6, v6, v33

    float-to-int v6, v6

    .line 3706
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-object/from16 p2, v8

    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v8, p2

    const/4 v9, 0x1

    sub-int/2addr v0, v2

    sub-int/2addr v7, v0

    sub-int/2addr v7, v4

    .line 3732
    div-int/lit8 v0, v14, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v19

    double-to-float v0, v0

    div-float v0, v0, v28

    float-to-double v0, v0

    .line 3733
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    int-to-float v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v2, v5

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    add-float/2addr v2, v1

    add-float v2, v2, v22

    float-to-int v2, v2

    int-to-float v5, v10

    sub-float/2addr v5, v1

    mul-float v0, v0, v5

    add-float/2addr v1, v0

    add-float v1, v1, v22

    float-to-int v0, v1

    sub-int/2addr v0, v2

    add-int/lit8 v10, v0, 0x1

    if-lez v10, :cond_5

    move v12, v2

    move v11, v4

    goto :goto_2

    .line 3751
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crop caused panorama height to become -ve: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    new-instance v0, Lnet/sourceforge/opencamera/PanoramaProcessorException;

    invoke-direct {v0, v9}, Lnet/sourceforge/opencamera/PanoramaProcessorException;-><init>(I)V

    throw v0

    :cond_6
    move-object/from16 v8, p2

    move/from16 v3, p3

    const/4 v11, 0x0

    move v10, v3

    const/4 v12, 0x0

    .line 3756
    :goto_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v10, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move-object v4, v8

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    move/from16 v7, v23

    move/from16 v8, v27

    move-object v14, v9

    move/from16 v9, v21

    move-object/from16 v35, v14

    move-wide/from16 v13, v19

    move-wide/from16 v15, v17

    .line 3760
    invoke-direct/range {v0 .. v16}, Lnet/sourceforge/opencamera/PanoramaProcessor;->renderPanorama(Ljava/util/List;IILjava/util/List;Ljava/util/List;Ljava/util/List;IIILandroid/graphics/Bitmap;IIDJ)V

    .line 3765
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 3766
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 3768
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, v24, v0

    move-object/from16 v10, p0

    if-ltz v0, :cond_8

    iget-object v0, v10, Lnet/sourceforge/opencamera/PanoramaProcessor;->rs:Landroid/renderscript/RenderScript;

    move-object/from16 v11, v35

    .line 3783
    invoke-static {v0, v11}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v12

    iget-object v0, v10, Lnet/sourceforge/opencamera/PanoramaProcessor;->hdrProcessor:Lnet/sourceforge/opencamera/HDRProcessor;

    .line 3786
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, v12

    move-object v2, v12

    move-wide/from16 v8, v17

    invoke-virtual/range {v0 .. v9}, Lnet/sourceforge/opencamera/HDRProcessor;->adjustHistogramRS(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;IIFIZJ)V

    .line 3789
    invoke-virtual {v12, v11}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 3790
    invoke-virtual {v12}, Landroid/renderscript/Allocation;->destroy()V

    goto :goto_4

    :cond_8
    move-object/from16 v11, v35

    .line 3799
    :goto_4
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/PanoramaProcessor;->freeScripts()V

    return-object v11
.end method
