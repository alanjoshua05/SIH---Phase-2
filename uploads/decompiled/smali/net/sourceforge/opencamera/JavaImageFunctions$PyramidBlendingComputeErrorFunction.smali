.class public Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;
.super Ljava/lang/Object;
.source "JavaImageFunctions.java"

# interfaces
.implements Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/JavaImageFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PyramidBlendingComputeErrorFunction"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private errors:[I

.field private fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 3294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->bitmap:Landroid/graphics/Bitmap;

    .line 3296
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->width:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 3312
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 3349
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 12

    move-object v0, p0

    const/4 v1, 0x0

    move/from16 v2, p5

    :goto_0
    add-int v3, p5, p7

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3318
    aget-object v3, v3, p2

    invoke-virtual {v3, v2, v2}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3319
    aget-object v3, v3, p2

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3321
    aget-object v4, v4, p2

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v4

    move/from16 v5, p4

    :goto_1
    add-int v6, p4, p6

    if-ge v5, v6, :cond_1

    .line 3325
    aget v6, p3, v1

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v6, v6, 0xff

    iget v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->width:I

    mul-int v9, v9, v3

    add-int/2addr v9, v5

    .line 3330
    aget v9, v4, v9

    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v9, 0x8

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v9, v9, 0xff

    sub-int/2addr v7, v10

    sub-int/2addr v8, v11

    sub-int/2addr v6, v9

    mul-int v7, v7, v7

    mul-int v8, v8, v8

    add-int/2addr v7, v8

    mul-int v6, v6, v6

    add-int/2addr v7, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->errors:[I

    .line 3339
    aget v8, v6, p2

    const v9, 0x77359400

    if-ge v8, v9, :cond_0

    add-int/2addr v8, v7

    .line 3340
    aput v8, v6, p2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getError()I
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->errors:[I

    .line 3354
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public init(I)V
    .locals 4

    .line 3301
    new-array v0, p1, [I

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->errors:[I

    .line 3302
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3305
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$PyramidBlendingComputeErrorFunction;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
