.class Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;
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
    name = "ReduceBitmapFunction"
.end annotation


# instance fields
.field private final bitmap_in:Landroid/graphics/Bitmap;

.field private fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final height:I

.field private final width:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 3368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->bitmap_in:Landroid/graphics/Bitmap;

    .line 3370
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->width:I

    .line 3371
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->height:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 21

    move-object/from16 v0, p0

    .line 3385
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    move/from16 v3, p4

    const/4 v4, 0x0

    :goto_0
    add-int v5, p4, p6

    if-ge v3, v5, :cond_6

    mul-int/lit8 v5, v3, 0x2

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3391
    aget-object v6, v6, p2

    add-int/lit8 v7, v5, -0x2

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {v6, v7, v8}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3392
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v6

    sub-int v6, v5, v6

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3394
    aget-object v7, v7, p2

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v7

    move/from16 v8, p3

    :goto_1
    add-int v9, p3, p5

    if-ge v8, v9, :cond_5

    mul-int/lit8 v9, v8, 0x2

    const/4 v10, 0x2

    if-lt v9, v10, :cond_4

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->width:I

    sub-int/2addr v11, v10

    if-ge v9, v11, :cond_4

    const/4 v11, 0x1

    if-lt v5, v10, :cond_0

    const/4 v12, 0x1

    goto :goto_2

    :cond_0
    const/4 v12, 0x0

    :goto_2
    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->height:I

    sub-int/2addr v13, v10

    if-ge v5, v13, :cond_1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    :goto_3
    and-int/2addr v11, v12

    if-eqz v11, :cond_4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x2

    :goto_4
    const/16 v11, 0xff

    if-gt v15, v10, :cond_3

    const/4 v2, -0x2

    :goto_5
    if-gt v2, v10, :cond_2

    add-int v16, v6, v15

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->width:I

    mul-int v16, v16, v10

    add-int v10, v9, v2

    add-int v16, v16, v10

    .line 3409
    aget v10, v7, v16

    move/from16 v16, v5

    shr-int/lit8 v5, v10, 0x10

    and-int/2addr v5, v11

    move/from16 v17, v3

    shr-int/lit8 v3, v10, 0x8

    and-int/2addr v3, v11

    and-int/2addr v10, v11

    int-to-float v5, v5

    .line 3421
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v18

    add-int/lit8 v19, v2, 0x2

    aget v18, v18, v19

    mul-float v5, v5, v18

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v18

    add-int/lit8 v20, v15, 0x2

    aget v18, v18, v20

    mul-float v5, v5, v18

    int-to-float v3, v3

    .line 3422
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v18

    aget v18, v18, v19

    mul-float v3, v3, v18

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v18

    aget v18, v18, v20

    mul-float v3, v3, v18

    int-to-float v10, v10

    .line 3423
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v18

    aget v18, v18, v19

    mul-float v10, v10, v18

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v18

    aget v18, v18, v20

    mul-float v10, v10, v18

    add-float/2addr v12, v5

    add-float/2addr v13, v3

    add-float/2addr v14, v10

    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v16

    move/from16 v3, v17

    const/4 v10, 0x2

    goto :goto_5

    :cond_2
    move/from16 v17, v3

    move/from16 v16, v5

    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x2

    goto :goto_4

    :cond_3
    move/from16 v17, v3

    move/from16 v16, v5

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v12, v2

    float-to-int v3, v12

    add-float/2addr v13, v2

    float-to-int v5, v13

    add-float/2addr v14, v2

    float-to-int v2, v14

    .line 3434
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v10, 0x0

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3435
    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3436
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v9, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v9

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    or-int/2addr v2, v3

    .line 3439
    aput v2, v1, v4

    goto :goto_6

    :cond_4
    move/from16 v17, v3

    move/from16 v16, v5

    const/4 v10, 0x0

    iget v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->width:I

    mul-int v2, v2, v6

    add-int/2addr v2, v9

    .line 3442
    aget v2, v7, v2

    .line 3444
    aput v2, v1, v4

    :goto_6
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v16

    move/from16 v3, v17

    goto/16 :goto_1

    :cond_5
    move/from16 v17, v3

    const/4 v10, 0x0

    add-int/lit8 v3, v17, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 3459
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 3453
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 4

    .line 3376
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3379
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapFunction;->bitmap_in:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
