.class Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;
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
    name = "Blur1dXFunction"
.end annotation


# instance fields
.field private final bitmap_in:Landroid/graphics/Bitmap;

.field private fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final width:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 3972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->bitmap_in:Landroid/graphics/Bitmap;

    .line 3974
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->width:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 3988
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v2

    move/from16 v4, p4

    const/4 v5, 0x0

    :goto_0
    add-int v6, p4, p6

    if-ge v4, v6, :cond_6

    .line 3991
    rem-int/lit8 v6, v4, 0x2

    const/high16 v7, -0x1000000

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    move v6, v1

    :goto_1
    add-int v8, v1, p5

    if-ge v6, v8, :cond_0

    .line 3994
    aput v7, v2, v5

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move-object v8, v2

    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_1
    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3999
    aget-object v6, v6, p2

    invoke-virtual {v6, v4, v4}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4000
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v6

    sub-int v6, v4, v6

    iget-object v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4002
    aget-object v9, v9, p2

    invoke-virtual {v9}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v9

    const/4 v10, 0x2

    .line 4004
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int v12, v1, p5

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->width:I

    sub-int/2addr v13, v10

    .line 4005
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move v14, v1

    :goto_2
    if-ge v14, v11, :cond_2

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->width:I

    mul-int v15, v15, v6

    add-int/2addr v15, v14

    .line 4009
    aget v15, v9, v15

    aput v15, v2, v5

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v11, v13, :cond_4

    iget v14, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->width:I

    mul-int v14, v14, v6

    add-int/2addr v14, v11

    .line 4040
    rem-int/lit8 v15, v11, 0x2

    const/16 v16, 0x0

    const/16 v7, 0xff

    if-ne v15, v8, :cond_3

    add-int/lit8 v15, v14, -0x1

    .line 4045
    aget v15, v9, v15

    shr-int/lit8 v10, v15, 0x10

    and-int/2addr v10, v7

    int-to-float v10, v10

    .line 4046
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v18

    aget v18, v18, v8

    mul-float v10, v10, v18

    add-float v10, v10, v16

    shr-int/lit8 v3, v15, 0x8

    and-int/2addr v3, v7

    int-to-float v3, v3

    .line 4047
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v19

    aget v19, v19, v8

    mul-float v3, v3, v19

    add-float v3, v3, v16

    and-int/2addr v15, v7

    int-to-float v15, v15

    .line 4048
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v19

    aget v19, v19, v8

    mul-float v15, v15, v19

    add-float v15, v15, v16

    add-int/lit8 v14, v14, 0x1

    .line 4052
    aget v14, v9, v14

    shr-int/lit8 v8, v14, 0x10

    and-int/2addr v8, v7

    int-to-float v8, v8

    .line 4053
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    const/16 v20, 0x3

    aget v16, v16, v20

    mul-float v8, v8, v16

    add-float/2addr v10, v8

    shr-int/lit8 v8, v14, 0x8

    and-int/2addr v8, v7

    int-to-float v8, v8

    .line 4054
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    aget v16, v16, v20

    mul-float v8, v8, v16

    add-float/2addr v3, v8

    and-int/lit16 v8, v14, 0xff

    int-to-float v8, v8

    .line 4055
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v20

    mul-float v8, v8, v14

    add-float/2addr v15, v8

    const/16 v17, 0x2

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v3, v14, -0x2

    .line 4061
    aget v3, v9, v3

    shr-int/lit8 v8, v3, 0x10

    and-int/2addr v8, v7

    int-to-float v8, v8

    .line 4062
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v10

    const/4 v15, 0x0

    aget v10, v10, v15

    mul-float v8, v8, v10

    add-float v8, v8, v16

    shr-int/lit8 v10, v3, 0x8

    and-int/2addr v10, v7

    int-to-float v10, v10

    .line 4063
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v18

    aget v18, v18, v15

    mul-float v10, v10, v18

    add-float v10, v10, v16

    and-int/2addr v3, v7

    int-to-float v3, v3

    .line 4064
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v18

    aget v20, v18, v15

    mul-float v3, v3, v20

    add-float v3, v3, v16

    .line 4068
    aget v15, v9, v14

    shr-int/lit8 v1, v15, 0x10

    and-int/2addr v1, v7

    int-to-float v1, v1

    .line 4069
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    const/16 v17, 0x2

    aget v16, v16, v17

    mul-float v1, v1, v16

    add-float/2addr v8, v1

    shr-int/lit8 v1, v15, 0x8

    and-int/2addr v1, v7

    int-to-float v1, v1

    .line 4070
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    aget v16, v16, v17

    mul-float v1, v1, v16

    add-float/2addr v10, v1

    and-int/lit16 v1, v15, 0xff

    int-to-float v1, v1

    .line 4071
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v17

    mul-float v1, v1, v15

    add-float/2addr v3, v1

    add-int/lit8 v14, v14, 0x2

    .line 4075
    aget v1, v9, v14

    shr-int/lit8 v14, v1, 0x10

    and-int/2addr v14, v7

    int-to-float v14, v14

    .line 4076
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    const/16 v16, 0x4

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v8, v14

    shr-int/lit8 v14, v1, 0x8

    and-int/2addr v14, v7

    int-to-float v14, v14

    .line 4077
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v10, v14

    and-int/2addr v1, v7

    int-to-float v1, v1

    .line 4078
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v16

    mul-float v1, v1, v14

    add-float v15, v3, v1

    move v3, v10

    move v10, v8

    :goto_4
    float-to-double v7, v10

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    .line 4109
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v20

    double-to-float v7, v7

    move-object v8, v2

    float-to-double v1, v3

    .line 4110
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v20

    double-to-float v1, v1

    float-to-double v2, v15

    .line 4111
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v20

    double-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v7, v3

    float-to-int v7, v7

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0xff

    .line 4117
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v10, 0x0

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 4118
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4119
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    shl-int/lit8 v3, v7, 0x10

    const/high16 v7, -0x1000000

    or-int/2addr v3, v7

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    or-int/2addr v1, v2

    .line 4122
    aput v1, v8, v5

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p3

    move-object v2, v8

    const/4 v8, 0x1

    const/4 v10, 0x2

    goto/16 :goto_3

    :cond_4
    move-object v8, v2

    const/4 v10, 0x0

    :goto_5
    if-ge v13, v12, :cond_5

    iget v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->width:I

    mul-int v1, v1, v6

    add-int/2addr v1, v13

    .line 4131
    aget v1, v9, v1

    aput v1, v8, v5

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p3

    move-object v2, v8

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 4145
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 4139
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 4

    .line 3979
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3982
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFunction;->bitmap_in:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
