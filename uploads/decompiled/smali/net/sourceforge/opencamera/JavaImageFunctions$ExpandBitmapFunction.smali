.class Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFunction;
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
    name = "ExpandBitmapFunction"
.end annotation


# instance fields
.field private final bitmap_in:Landroid/graphics/Bitmap;

.field private fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final width:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 3904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFunction;->bitmap_in:Landroid/graphics/Bitmap;

    .line 3906
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFunction;->width:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 8

    .line 3920
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object p1

    const/4 v0, 0x0

    move v1, p4

    :goto_0
    add-int v2, p4, p6

    if-ge v1, v2, :cond_3

    .line 3924
    rem-int/lit8 v2, v1, 0x2

    const/high16 v3, -0x1000000

    if-nez v2, :cond_1

    .line 3925
    div-int/lit8 v2, v1, 0x2

    iget-object v4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3927
    aget-object v4, v4, p2

    invoke-virtual {v4, v2, v2}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3928
    aget-object v4, v4, p2

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3930
    aget-object v4, v4, p2

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v4

    move v5, p3

    :goto_1
    add-int v6, p3, p5

    if-ge v5, v6, :cond_2

    .line 3933
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_0

    .line 3934
    div-int/lit8 v6, v5, 0x2

    iget v7, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFunction;->width:I

    mul-int v7, v7, v2

    add-int/2addr v7, v6

    .line 3935
    aget v6, v4, v7

    aput v6, p1, v0

    goto :goto_2

    .line 3938
    :cond_0
    aput v3, p1, v0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_3
    add-int v4, p3, p5

    if-ge v2, v4, :cond_2

    .line 3944
    aput v3, p1, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 3959
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 3953
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 4

    .line 3911
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFunction;->fast_bitmap_in:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3914
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ExpandBitmapFunction;->bitmap_in:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
