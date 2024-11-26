.class Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;
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
    name = "MergeFunction"
.end annotation


# instance fields
.field private final bitmap1:Landroid/graphics/Bitmap;

.field private fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final interpolated_best_path:[I

.field private final merge_blend_width:I

.field private final width:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I[I)V
    .locals 0

    .line 4816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->bitmap1:Landroid/graphics/Bitmap;

    .line 4818
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->width:I

    iput-object p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->interpolated_best_path:[I

    iput p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->merge_blend_width:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 4837
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 4890
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 4842
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p5

    const/4 v4, 0x0

    :goto_0
    add-int v5, p5, p7

    if-ge v3, v5, :cond_1

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->interpolated_best_path:[I

    .line 4845
    aget v5, v5, v3

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4847
    aget-object v6, v6, p2

    invoke-virtual {v6, v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getPixel(II)I

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4848
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v6

    sub-int v6, v3, v6

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4850
    aget-object v7, v7, p2

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v7

    move/from16 v8, p4

    :goto_1
    add-int v9, p4, p6

    if-ge v8, v9, :cond_0

    .line 4854
    aget v9, p3, v4

    shr-int/lit8 v10, v9, 0x10

    const/16 v11, 0xff

    and-int/2addr v10, v11

    int-to-float v10, v10

    shr-int/lit8 v12, v9, 0x8

    and-int/2addr v12, v11

    int-to-float v12, v12

    and-int/2addr v9, v11

    int-to-float v9, v9

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->width:I

    mul-int v13, v13, v6

    add-int/2addr v13, v8

    .line 4860
    aget v13, v7, v13

    shr-int/lit8 v14, v13, 0x10

    and-int/2addr v14, v11

    int-to-float v14, v14

    shr-int/lit8 v15, v13, 0x8

    and-int/2addr v15, v11

    int-to-float v15, v15

    and-int/2addr v13, v11

    int-to-float v13, v13

    iget v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->merge_blend_width:I

    .line 4865
    div-int/lit8 v16, v2, 0x2

    sub-int v16, v5, v16

    sub-int v11, v8, v16

    int-to-float v11, v11

    int-to-float v2, v2

    div-float/2addr v11, v2

    const/4 v2, 0x0

    .line 4866
    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v11, 0x3f800000    # 1.0f

    .line 4867
    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v11, v2

    mul-float v10, v10, v11

    mul-float v14, v14, v2

    add-float/2addr v10, v14

    mul-float v12, v12, v11

    mul-float v15, v15, v2

    add-float/2addr v12, v15

    mul-float v11, v11, v9

    mul-float v2, v2, v13

    add-float/2addr v11, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v10, v2

    float-to-int v9, v10

    add-float/2addr v12, v2

    float-to-int v10, v12

    add-float/2addr v11, v2

    float-to-int v2, v11

    const/16 v11, 0xff

    .line 4877
    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v12, 0x0

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 4878
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 4879
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v11, -0x1000000

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v9, v11

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    or-int/2addr v2, v9

    .line 4882
    aput v2, v1, v4

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public init(I)V
    .locals 4

    .line 4827
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4830
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergeFunction;->bitmap1:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
