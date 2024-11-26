.class Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;
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
    name = "ComputeDerivativesFunction"
.end annotation


# instance fields
.field private final bitmap_Ix:Landroid/graphics/Bitmap;

.field private final bitmap_Iy:Landroid/graphics/Bitmap;

.field private final bitmap_in:Landroid/graphics/Bitmap;

.field private fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final height:I

.field private final width:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->bitmap_Ix:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->bitmap_Iy:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->bitmap_in:Landroid/graphics/Bitmap;

    .line 3000
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->width:I

    .line 3001
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->height:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 16

    move-object/from16 v0, p0

    mul-int v1, p5, p6

    .line 3016
    new-array v2, v1, [I

    .line 3017
    new-array v9, v1, [I

    const/4 v1, 0x0

    move/from16 v3, p4

    const/4 v4, 0x0

    :goto_0
    add-int v5, p4, p6

    if-ge v3, v5, :cond_2

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3021
    aget-object v5, v5, p2

    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v5, v6, v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3022
    aget-object v5, v5, p2

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3024
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v6

    move/from16 v8, p3

    :goto_1
    add-int v10, p3, p5

    if-ge v8, v10, :cond_1

    const/4 v10, 0x1

    if-lt v8, v10, :cond_0

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->width:I

    add-int/lit8 v12, v11, -0x1

    if-ge v8, v12, :cond_0

    if-lt v3, v10, :cond_0

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->height:I

    sub-int/2addr v12, v10

    if-ge v3, v12, :cond_0

    add-int/lit8 v12, v5, -0x1

    mul-int v12, v12, v11

    add-int/2addr v12, v8

    .line 3034
    aget v12, v6, v12

    ushr-int/lit8 v12, v12, 0x18

    mul-int v13, v5, v11

    add-int/lit8 v14, v8, -0x1

    add-int/2addr v13, v14

    .line 3036
    aget v13, v6, v13

    ushr-int/lit8 v13, v13, 0x18

    mul-int v14, v5, v11

    add-int/lit8 v15, v8, 0x1

    add-int/2addr v14, v15

    .line 3037
    aget v14, v6, v14

    ushr-int/lit8 v14, v14, 0x18

    add-int/2addr v10, v5

    mul-int v10, v10, v11

    add-int/2addr v10, v8

    .line 3039
    aget v10, v6, v10

    ushr-int/lit8 v10, v10, 0x18

    sub-int/2addr v14, v13

    .line 3046
    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v10, v12

    .line 3047
    div-int/lit8 v10, v10, 0x2

    const/16 v11, -0x7f

    .line 3051
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/16 v13, 0x80

    .line 3052
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v12, v12, 0x7f

    .line 3055
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3056
    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v10, v10, 0x7f

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_2
    shl-int/lit8 v11, v12, 0x18

    .line 3065
    aput v11, v2, v4

    shl-int/lit8 v10, v10, 0x18

    .line 3066
    aput v10, v9, v4

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v3, v7

    goto/16 :goto_0

    :cond_2
    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->bitmap_Ix:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move/from16 v4, p5

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 3070
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->bitmap_Iy:Landroid/graphics/Bitmap;

    move-object v2, v9

    .line 3071
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 3083
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 3077
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 4

    .line 3006
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3009
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeDerivativesFunction;->bitmap_in:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
