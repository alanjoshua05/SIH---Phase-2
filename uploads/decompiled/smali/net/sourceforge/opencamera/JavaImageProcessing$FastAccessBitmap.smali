.class Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;
.super Ljava/lang/Object;
.source "JavaImageProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/JavaImageProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastAccessBitmap"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final bitmap_width:I

.field private final cache_height:I

.field private final cache_pixels_i:[I

.field private cache_y:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_y:I

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->bitmap_width:I

    const/16 v1, 0x80

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_height:I

    mul-int v0, v0, p1

    .line 40
    new-array p1, v0, [I

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_pixels_i:[I

    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache(I)V

    return-void
.end method

.method private cache(I)V
    .locals 9

    add-int/lit8 p1, p1, -0x4

    const/4 v0, 0x0

    .line 48
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_height:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_y:I

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_pixels_i:[I

    const/4 v3, 0x0

    iget v7, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->bitmap_width:I

    const/4 v5, 0x0

    iget v8, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_height:I

    move v4, v7

    .line 50
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-void
.end method


# virtual methods
.method ensureCache(II)V
    .locals 3

    sub-int v0, p2, p1

    iget v1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_height:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_y:I

    if-lt p1, v0, :cond_0

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache(I)V

    :cond_1
    return-void

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t cache this many rows: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs cache_height: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_height:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCacheY()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_y:I

    return v0
.end method

.method getCachedPixelsI()[I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_pixels_i:[I

    return-object v0
.end method

.method getPixel(II)I
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_y:I

    if-lt p2, v0, :cond_0

    iget v1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_height:I

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 56
    :cond_0
    invoke-direct {p0, p2}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache(I)V

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_pixels_i:[I

    iget v1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->cache_y:I

    sub-int/2addr p2, v1

    iget v1, p0, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->bitmap_width:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    .line 59
    aget p1, v0, p2

    return p1
.end method
