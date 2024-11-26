.class Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;
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
    name = "ReduceBitmapXFunction"
.end annotation


# instance fields
.field private final bitmap_in:Landroid/graphics/Bitmap;

.field private fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final width:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 3468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;->bitmap_in:Landroid/graphics/Bitmap;

    .line 3470
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;->width:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 3484
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p4

    const/4 v4, 0x0

    :goto_0
    add-int v5, p4, p6

    if-ge v3, v5, :cond_2

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3488
    aget-object v5, v5, p2

    invoke-virtual {v5, v3, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3489
    aget-object v5, v5, p2

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3491
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v6

    move/from16 v7, p3

    :goto_1
    add-int v8, p3, p5

    if-ge v7, v8, :cond_1

    mul-int/lit8 v8, v7, 0x2

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;->width:I

    add-int/lit8 v11, v10, -0x2

    if-ge v8, v11, :cond_0

    mul-int v10, v10, v5

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, -0x2

    .line 3515
    aget v8, v6, v8

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    .line 3516
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v12

    aget v12, v12, v2

    mul-float v11, v11, v12

    const/4 v12, 0x0

    add-float/2addr v11, v12

    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    .line 3517
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v2

    mul-float v13, v13, v14

    add-float/2addr v13, v12

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    .line 3518
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v2

    mul-float v8, v8, v14

    add-float/2addr v8, v12

    add-int/lit8 v12, v10, -0x1

    .line 3520
    aget v12, v6, v12

    shr-int/lit8 v14, v12, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3521
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    const/16 v16, 0x1

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v11, v14

    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3522
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    .line 3523
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v16

    mul-float v12, v12, v14

    add-float/2addr v8, v12

    .line 3525
    aget v12, v6, v10

    shr-int/lit8 v14, v12, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3526
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v9

    mul-float v14, v14, v15

    add-float/2addr v11, v14

    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3527
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v9

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    .line 3528
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v9

    mul-float v12, v12, v14

    add-float/2addr v8, v12

    add-int/lit8 v12, v10, 0x1

    .line 3530
    aget v12, v6, v12

    shr-int/lit8 v14, v12, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3531
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    const/16 v16, 0x3

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v11, v14

    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    .line 3532
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v16

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    .line 3533
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v16

    mul-float v12, v12, v14

    add-float/2addr v8, v12

    add-int/2addr v10, v9

    .line 3535
    aget v9, v6, v10

    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    .line 3536
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v12

    const/4 v14, 0x4

    aget v12, v12, v14

    mul-float v10, v10, v12

    add-float/2addr v11, v10

    shr-int/lit8 v10, v9, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    .line 3537
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v12

    aget v12, v12, v14

    mul-float v10, v10, v12

    add-float/2addr v13, v10

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    .line 3538
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v10

    aget v10, v10, v14

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v11, v9

    float-to-int v10, v11

    add-float/2addr v13, v9

    float-to-int v11, v13

    add-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, -0x1000000

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v10, v11, 0x8

    or-int/2addr v9, v10

    or-int/2addr v8, v9

    .line 3551
    aput v8, v1, v4

    goto :goto_2

    :cond_0
    iget v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;->width:I

    mul-int v9, v9, v5

    add-int/2addr v9, v8

    .line 3554
    aget v8, v6, v9

    .line 3556
    aput v8, v1, v4

    :goto_2
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 3571
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 3565
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 4

    .line 3475
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3478
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFunction;->bitmap_in:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
