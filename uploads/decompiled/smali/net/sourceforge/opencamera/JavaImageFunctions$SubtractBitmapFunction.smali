.class Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;
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
    name = "SubtractBitmapFunction"
.end annotation


# instance fields
.field private final bitmap1:Landroid/graphics/Bitmap;

.field private fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final pixels_rgbf:[F

.field private final width:I


# direct methods
.method constructor <init>([FLandroid/graphics/Bitmap;)V
    .locals 0

    .line 4686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->pixels_rgbf:[F

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->bitmap1:Landroid/graphics/Bitmap;

    .line 4689
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->width:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 4704
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 4744
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 14

    move-object v0, p0

    const/4 v1, 0x0

    move/from16 v2, p5

    const/4 v3, 0x0

    :goto_0
    add-int v4, p5, p7

    if-ge v2, v4, :cond_1

    mul-int/lit8 v4, v2, 0x3

    iget v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->width:I

    mul-int v4, v4, v5

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4712
    aget-object v5, v5, p2

    invoke-virtual {v5, v1, v2}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getPixel(II)I

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4713
    aget-object v5, v5, p2

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v5

    sub-int v5, v2, v5

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4715
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v6

    move/from16 v7, p4

    :goto_1
    add-int v8, p4, p6

    if-ge v7, v8, :cond_0

    .line 4719
    aget v8, p3, v3

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->width:I

    mul-int v11, v11, v5

    add-int/2addr v11, v7

    .line 4725
    aget v11, v6, v11

    shr-int/lit8 v12, v11, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    shr-int/lit8 v13, v11, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    sub-float/2addr v9, v12

    sub-float/2addr v10, v13

    sub-float/2addr v8, v11

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->pixels_rgbf:[F

    .line 4734
    aput v9, v11, v4

    add-int/lit8 v9, v4, 0x1

    .line 4735
    aput v10, v11, v9

    add-int/lit8 v9, v4, 0x2

    .line 4736
    aput v8, v11, v9

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public init(I)V
    .locals 4

    .line 4694
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 4697
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$SubtractBitmapFunction;->bitmap1:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
