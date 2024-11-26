.class Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;
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
    name = "Blur1dYFunction"
.end annotation


# instance fields
.field private final bitmap_in:Landroid/graphics/Bitmap;

.field private fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final height:I

.field private final width:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 4158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->bitmap_in:Landroid/graphics/Bitmap;

    .line 4160
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->width:I

    .line 4161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->height:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 4175
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p4

    const/4 v4, 0x0

    :goto_0
    add-int v5, p4, p6

    if-ge v3, v5, :cond_3

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4178
    aget-object v5, v5, p2

    add-int/lit8 v6, v3, -0x2

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v5, v6, v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4179
    aget-object v5, v5, p2

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4181
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v6

    const/4 v7, 0x2

    if-lt v3, v7, :cond_1

    iget v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->height:I

    sub-int/2addr v8, v7

    if-ge v3, v8, :cond_1

    move/from16 v8, p3

    :goto_1
    add-int v9, p3, p5

    if-ge v8, v9, :cond_2

    .line 4208
    rem-int/lit8 v9, v3, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xff

    if-ne v9, v11, :cond_0

    add-int/lit8 v9, v5, -0x1

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->width:I

    mul-int v9, v9, v13

    add-int/2addr v9, v8

    .line 4213
    aget v9, v6, v9

    shr-int/lit8 v13, v9, 0x10

    and-int/2addr v13, v12

    int-to-float v13, v13

    .line 4214
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v11

    mul-float v13, v13, v14

    add-float/2addr v13, v10

    shr-int/lit8 v14, v9, 0x8

    and-int/2addr v14, v12

    int-to-float v14, v14

    .line 4215
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v11

    mul-float v14, v14, v15

    add-float/2addr v14, v10

    and-int/2addr v9, v12

    int-to-float v9, v9

    .line 4216
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v11, v15, v11

    mul-float v9, v9, v11

    add-float/2addr v9, v10

    add-int/lit8 v10, v5, 0x1

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->width:I

    mul-int v10, v10, v11

    add-int/2addr v10, v8

    .line 4220
    aget v10, v6, v10

    shr-int/lit8 v11, v10, 0x10

    and-int/2addr v11, v12

    int-to-float v11, v11

    .line 4221
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    const/16 v16, 0x3

    aget v15, v15, v16

    mul-float v11, v11, v15

    add-float/2addr v13, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/2addr v11, v12

    int-to-float v11, v11

    .line 4222
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v16

    mul-float v11, v11, v15

    add-float/2addr v14, v11

    and-int/2addr v10, v12

    int-to-float v10, v10

    .line 4223
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v11

    aget v11, v11, v16

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v9, v5, -0x2

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->width:I

    mul-int v9, v9, v11

    add-int/2addr v9, v8

    .line 4229
    aget v9, v6, v9

    shr-int/lit8 v11, v9, 0x10

    and-int/2addr v11, v12

    int-to-float v11, v11

    .line 4230
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v2

    mul-float v11, v11, v13

    add-float/2addr v11, v10

    shr-int/lit8 v13, v9, 0x8

    and-int/2addr v13, v12

    int-to-float v13, v13

    .line 4231
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v2

    mul-float v13, v13, v14

    add-float/2addr v13, v10

    and-int/2addr v9, v12

    int-to-float v9, v9

    .line 4232
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v2

    mul-float v9, v9, v14

    add-float/2addr v9, v10

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->width:I

    mul-int v10, v10, v5

    add-int/2addr v10, v8

    .line 4236
    aget v10, v6, v10

    shr-int/lit8 v14, v10, 0x10

    and-int/2addr v14, v12

    int-to-float v14, v14

    .line 4237
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v7

    mul-float v14, v14, v15

    add-float/2addr v11, v14

    shr-int/lit8 v14, v10, 0x8

    and-int/2addr v14, v12

    int-to-float v14, v14

    .line 4238
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v7

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    and-int/2addr v10, v12

    int-to-float v10, v10

    .line 4239
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v7

    mul-float v10, v10, v14

    add-float/2addr v9, v10

    add-int/lit8 v10, v5, 0x2

    iget v14, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->width:I

    mul-int v10, v10, v14

    add-int/2addr v10, v8

    .line 4243
    aget v10, v6, v10

    shr-int/lit8 v14, v10, 0x10

    and-int/2addr v14, v12

    int-to-float v14, v14

    .line 4244
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    const/16 v16, 0x4

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v11, v14

    shr-int/lit8 v14, v10, 0x8

    and-int/2addr v14, v12

    int-to-float v14, v14

    .line 4245
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v14, v13

    and-int/2addr v10, v12

    int-to-float v10, v10

    .line 4246
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v16

    mul-float v10, v10, v13

    add-float/2addr v9, v10

    move v13, v11

    :goto_2
    float-to-double v10, v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    .line 4278
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v15

    double-to-float v10, v10

    float-to-double v13, v14

    .line 4279
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v15

    double-to-float v11, v13

    float-to-double v13, v9

    .line 4280
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v15

    double-to-float v9, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v10, v13

    float-to-int v10, v10

    add-float/2addr v11, v13

    float-to-int v11, v11

    add-float/2addr v9, v13

    float-to-int v9, v9

    .line 4286
    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 4287
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 4288
    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v12, -0x1000000

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v10, v12

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    or-int/2addr v9, v10

    .line 4291
    aput v9, v1, v4

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_1
    move/from16 v7, p3

    :goto_3
    add-int v8, p3, p5

    if-ge v7, v8, :cond_2

    iget v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->width:I

    mul-int v8, v8, v5

    add-int/2addr v8, v7

    .line 4296
    aget v8, v6, v8

    aput v8, v1, v4

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 4311
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 4305
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 4

    .line 4166
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4169
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFunction;->bitmap_in:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
