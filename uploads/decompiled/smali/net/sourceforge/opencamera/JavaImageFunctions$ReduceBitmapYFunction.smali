.class Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;
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
    name = "ReduceBitmapYFunction"
.end annotation


# instance fields
.field private final bitmap_in:Landroid/graphics/Bitmap;

.field private fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final height:I

.field private final width:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 3580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->bitmap_in:Landroid/graphics/Bitmap;

    .line 3582
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->width:I

    .line 3583
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->height:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 3597
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p4

    const/4 v4, 0x0

    :goto_0
    add-int v5, p4, p6

    if-ge v3, v5, :cond_4

    mul-int/lit8 v5, v3, 0x2

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3603
    aget-object v6, v6, p2

    add-int/lit8 v7, v5, -0x2

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {v6, v7, v8}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3604
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v6

    sub-int v6, v5, v6

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3606
    aget-object v7, v7, p2

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lt v5, v8, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->height:I

    sub-int/2addr v11, v8

    if-ge v5, v11, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v5, v10

    if-eqz v5, :cond_2

    move/from16 v5, p3

    :goto_3
    add-int v10, p3, p5

    if-ge v5, v10, :cond_3

    add-int/lit8 v10, v6, -0x2

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->width:I

    mul-int v10, v10, v11

    add-int/2addr v10, v5

    .line 3625
    aget v10, v7, v10

    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    .line 3626
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v12

    aget v12, v12, v2

    mul-float v11, v11, v12

    const/4 v12, 0x0

    add-float/2addr v11, v12

    shr-int/lit8 v13, v10, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    .line 3627
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v2

    mul-float v13, v13, v14

    add-float/2addr v13, v12

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    .line 3628
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v2

    mul-float v10, v10, v14

    add-float/2addr v10, v12

    add-int/lit8 v12, v6, -0x1

    iget v14, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->width:I

    mul-int v12, v12, v14

    add-int/2addr v12, v5

    .line 3630
    aget v12, v7, v12

    shr-int/lit8 v14, v12, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3631
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v9

    mul-float v14, v14, v15

    add-float/2addr v11, v14

    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3632
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v9

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    .line 3633
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v9

    mul-float v12, v12, v14

    add-float/2addr v10, v12

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->width:I

    mul-int v12, v12, v6

    add-int/2addr v12, v5

    .line 3635
    aget v12, v7, v12

    shr-int/lit8 v14, v12, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3636
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v8

    mul-float v14, v14, v15

    add-float/2addr v11, v14

    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3637
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v8

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    .line 3638
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v8

    mul-float v12, v12, v14

    add-float/2addr v10, v12

    add-int/lit8 v12, v6, 0x1

    iget v14, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->width:I

    mul-int v12, v12, v14

    add-int/2addr v12, v5

    .line 3640
    aget v12, v7, v12

    shr-int/lit8 v14, v12, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3641
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    const/16 v16, 0x3

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v11, v14

    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3642
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    .line 3643
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v16

    mul-float v12, v12, v14

    add-float/2addr v10, v12

    add-int/lit8 v12, v6, 0x2

    iget v14, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->width:I

    mul-int v12, v12, v14

    add-int/2addr v12, v5

    .line 3645
    aget v12, v7, v12

    shr-int/lit8 v14, v12, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3646
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    const/16 v16, 0x4

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v11, v14

    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3647
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    .line 3648
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v16

    mul-float v12, v12, v14

    add-float/2addr v10, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    add-float/2addr v13, v12

    float-to-int v13, v13

    add-float/2addr v10, v12

    float-to-int v10, v10

    const/high16 v12, -0x1000000

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v13, 0x8

    or-int/2addr v11, v12

    or-int/2addr v10, v11

    .line 3661
    aput v10, v1, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_2
    move/from16 v5, p3

    :goto_4
    add-int v8, p3, p5

    if-ge v5, v8, :cond_3

    iget v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->width:I

    mul-int v8, v8, v6

    add-int/2addr v8, v5

    .line 3666
    aget v8, v7, v8

    .line 3668
    aput v8, v1, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 3683
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 3677
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 4

    .line 3588
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3591
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFunction;->bitmap_in:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
