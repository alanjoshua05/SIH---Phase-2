.class Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;
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
    name = "CornerDetectorFunction"
.end annotation


# instance fields
.field private final bitmap_Ix:Landroid/graphics/Bitmap;

.field private final bitmap_Iy:Landroid/graphics/Bitmap;

.field private fast_bitmap_Ix:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private fast_bitmap_Iy:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final height:I

.field private final pixels_f:[F

.field private final width:I


# direct methods
.method constructor <init>([FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 3095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->pixels_f:[F

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->bitmap_Ix:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->bitmap_Iy:Landroid/graphics/Bitmap;

    .line 3099
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->width:I

    .line 3100
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->height:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x5

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    move/from16 v2, p4

    :goto_0
    add-int v3, p4, p6

    if-ge v2, v3, :cond_4

    iget-object v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->fast_bitmap_Ix:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3121
    aget-object v3, v3, p2

    add-int/lit8 v4, v2, -0x2

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v3, v4, v5}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->fast_bitmap_Ix:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3122
    aget-object v3, v3, p2

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->fast_bitmap_Ix:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3124
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v6

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->fast_bitmap_Iy:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3126
    aget-object v7, v7, p2

    invoke-virtual {v7, v4, v5}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->fast_bitmap_Iy:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3127
    aget-object v7, v7, p2

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v7

    sub-int v7, v2, v7

    iget-object v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->fast_bitmap_Iy:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3129
    aget-object v8, v8, p2

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v8

    move/from16 v9, p3

    :goto_1
    add-int v10, p3, p5

    if-ge v9, v10, :cond_3

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-lt v9, v10, :cond_2

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->width:I

    sub-int/2addr v12, v10

    if-ge v9, v12, :cond_2

    if-lt v2, v10, :cond_2

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->height:I

    sub-int/2addr v12, v10

    if-ge v2, v12, :cond_2

    move v13, v4

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_2
    if-gt v13, v5, :cond_1

    add-int/lit8 v14, v9, -0x2

    :goto_3
    add-int/lit8 v15, v9, 0x2

    if-gt v14, v15, :cond_0

    sub-int v15, v14, v9

    sub-int v16, v13, v2

    add-int v17, v3, v16

    move/from16 p1, v3

    iget v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->width:I

    mul-int v17, v17, v3

    add-int v17, v17, v14

    .line 3144
    aget v17, v6, v17

    ushr-int/lit8 v17, v17, 0x18

    add-int v18, v7, v16

    mul-int v18, v18, v3

    add-int v18, v18, v14

    .line 3145
    aget v3, v8, v18

    ushr-int/lit8 v3, v3, 0x18

    move/from16 v18, v4

    add-int/lit8 v4, v17, -0x7f

    add-int/lit8 v3, v3, -0x7f

    add-int/lit8 v15, v15, 0x2

    .line 3157
    aget v15, v1, v15

    add-int/lit8 v16, v16, 0x2

    aget v16, v1, v16

    mul-float v15, v15, v16

    int-to-float v4, v4

    mul-float v16, v15, v4

    mul-float v4, v4, v16

    add-float/2addr v11, v4

    int-to-float v3, v3

    mul-float v16, v16, v3

    add-float v12, v12, v16

    mul-float v15, v15, v3

    mul-float v15, v15, v3

    add-float/2addr v10, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p1

    move/from16 v4, v18

    goto :goto_3

    :cond_0
    move/from16 p1, v3

    move/from16 v18, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    move/from16 p1, v3

    move/from16 v18, v4

    mul-float v3, v11, v10

    mul-float v12, v12, v12

    sub-float/2addr v3, v12

    add-float/2addr v11, v10

    const v4, 0x3d75c28f    # 0.06f

    mul-float v4, v4, v11

    mul-float v4, v4, v11

    sub-float v11, v3, v4

    goto :goto_4

    :cond_2
    move/from16 p1, v3

    move/from16 v18, v4

    :goto_4
    iget-object v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->pixels_f:[F

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->width:I

    mul-int v4, v4, v2

    add-int/2addr v4, v9

    .line 3172
    aput v11, v3, v4

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p1

    move/from16 v4, v18

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 3186
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 3180
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 4

    .line 3105
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->fast_bitmap_Ix:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3106
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->fast_bitmap_Iy:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->fast_bitmap_Ix:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3109
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->bitmap_Ix:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->fast_bitmap_Iy:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 3110
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CornerDetectorFunction;->bitmap_Iy:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
