.class Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;
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
    name = "AlignMTBApplyFunction"
.end annotation


# instance fields
.field private final bitmap0:Landroid/graphics/Bitmap;

.field private final bitmap1:Landroid/graphics/Bitmap;

.field private errors:[[I

.field private fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final offset_x:I

.field private final offset_y:I

.field private final step_size:I

.field private final use_mtb:Z


# direct methods
.method constructor <init>(ZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->use_mtb:Z

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->bitmap0:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->bitmap1:Landroid/graphics/Bitmap;

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_x:I

    iput p5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_y:I

    iput p6, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 118
    aget-object v2, v1, p2

    if-nez v2, :cond_0

    const/16 v2, 0x9

    new-array v2, v2, [I

    .line 119
    aput-object v2, v1, p2

    :cond_0
    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->bitmap0:Landroid/graphics/Bitmap;

    .line 128
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->bitmap1:Landroid/graphics/Bitmap;

    .line 129
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->bitmap1:Landroid/graphics/Bitmap;

    .line 130
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-boolean v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->use_mtb:Z

    const/4 v12, 0x0

    if-eqz v4, :cond_f

    add-int v4, p4, p6

    move/from16 v14, p4

    :goto_0
    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v16, v14, v15

    iget v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_y:I

    add-int v5, v16, v5

    if-ge v5, v15, :cond_1

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v5, v4, -0x1

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v5, v5, v15

    iget v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_y:I

    add-int/2addr v5, v6

    sub-int v6, v3, v15

    if-lt v5, v6, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v14, v4, :cond_1e

    iget v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v3, v3, v14

    iget v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_y:I

    add-int/2addr v5, v3

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 141
    aget-object v6, v6, p2

    invoke-virtual {v6, v12, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getPixel(II)I

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 142
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v6

    sub-int v6, v3, v6

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 144
    aget-object v15, v15, p2

    invoke-virtual {v15}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v15

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 146
    aget-object v7, v7, p2

    iget v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    sub-int v9, v5, v8

    add-int/2addr v5, v8

    invoke-virtual {v7, v9, v5}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 147
    aget-object v5, v5, p2

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 149
    aget-object v5, v5, p2

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v5

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_y:I

    add-int/2addr v3, v7

    add-int v7, p3, p5

    move/from16 v8, p3

    :goto_3
    iget v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v20, v8, v9

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_x:I

    add-int v10, v20, v10

    if-ge v10, v9, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v9, v7, -0x1

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v9, v9, v10

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_x:I

    add-int/2addr v9, v11

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_4

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v8, v7, :cond_e

    iget v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v10, v8, v9

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_x:I

    add-int/2addr v11, v10

    mul-int v22, v6, v1

    add-int v22, v22, v10

    .line 163
    aget v10, v15, v22

    ushr-int/lit8 v10, v10, 0x18

    sub-int v22, v3, v9

    mul-int v22, v22, v2

    sub-int v23, v11, v9

    add-int v22, v22, v23

    .line 182
    aget v22, v5, v22

    ushr-int/lit8 v13, v22, 0x18

    const/16 v12, 0x7f

    if-eq v10, v13, :cond_5

    if-eq v10, v12, :cond_5

    if-eq v13, v12, :cond_5

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 184
    aget-object v13, v13, p2

    const/16 v22, 0x0

    aget v24, v13, v22

    const/16 v23, 0x1

    add-int/lit8 v24, v24, 0x1

    aput v24, v13, v22

    :cond_5
    sub-int v13, v3, v9

    mul-int v13, v13, v2

    add-int/2addr v13, v11

    .line 188
    aget v13, v5, v13

    ushr-int/lit8 v13, v13, 0x18

    if-eq v10, v13, :cond_6

    if-eq v10, v12, :cond_6

    if-eq v13, v12, :cond_6

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 190
    aget-object v13, v13, p2

    const/16 v23, 0x1

    aget v24, v13, v23

    add-int/lit8 v24, v24, 0x1

    aput v24, v13, v23

    :cond_6
    sub-int v13, v3, v9

    mul-int v13, v13, v2

    add-int v24, v11, v9

    add-int v13, v13, v24

    .line 194
    aget v13, v5, v13

    ushr-int/lit8 v13, v13, 0x18

    if-eq v10, v13, :cond_7

    if-eq v10, v12, :cond_7

    if-eq v13, v12, :cond_7

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 196
    aget-object v13, v13, p2

    const/16 v20, 0x2

    aget v24, v13, v20

    const/16 v23, 0x1

    add-int/lit8 v24, v24, 0x1

    aput v24, v13, v20

    :cond_7
    mul-int v13, v3, v2

    sub-int v24, v11, v9

    add-int v24, v13, v24

    .line 200
    aget v24, v5, v24

    move/from16 p4, v4

    ushr-int/lit8 v4, v24, 0x18

    if-eq v10, v4, :cond_8

    if-eq v10, v12, :cond_8

    if-eq v4, v12, :cond_8

    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 202
    aget-object v4, v4, p2

    const/16 v21, 0x3

    aget v24, v4, v21

    const/16 v23, 0x1

    add-int/lit8 v24, v24, 0x1

    aput v24, v4, v21

    :cond_8
    add-int v4, v13, v11

    .line 206
    aget v4, v5, v4

    ushr-int/lit8 v4, v4, 0x18

    if-eq v10, v4, :cond_9

    if-eq v10, v12, :cond_9

    if-eq v4, v12, :cond_9

    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 208
    aget-object v4, v4, p2

    const/16 v19, 0x4

    aget v24, v4, v19

    const/16 v23, 0x1

    add-int/lit8 v24, v24, 0x1

    aput v24, v4, v19

    :cond_9
    add-int v4, v11, v9

    add-int/2addr v13, v4

    .line 212
    aget v4, v5, v13

    ushr-int/lit8 v4, v4, 0x18

    if-eq v10, v4, :cond_a

    if-eq v10, v12, :cond_a

    if-eq v4, v12, :cond_a

    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 214
    aget-object v4, v4, p2

    const/4 v13, 0x5

    aget v18, v4, v13

    const/16 v23, 0x1

    add-int/lit8 v18, v18, 0x1

    aput v18, v4, v13

    :cond_a
    add-int v4, v3, v9

    mul-int v4, v4, v2

    sub-int v13, v11, v9

    add-int/2addr v4, v13

    .line 218
    aget v4, v5, v4

    ushr-int/lit8 v4, v4, 0x18

    if-eq v10, v4, :cond_b

    if-eq v10, v12, :cond_b

    if-eq v4, v12, :cond_b

    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 220
    aget-object v4, v4, p2

    const/4 v13, 0x6

    aget v17, v4, v13

    const/16 v23, 0x1

    add-int/lit8 v17, v17, 0x1

    aput v17, v4, v13

    :cond_b
    add-int v4, v3, v9

    mul-int v4, v4, v2

    add-int/2addr v4, v11

    .line 224
    aget v4, v5, v4

    ushr-int/lit8 v4, v4, 0x18

    if-eq v10, v4, :cond_c

    if-eq v10, v12, :cond_c

    if-eq v4, v12, :cond_c

    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 226
    aget-object v4, v4, p2

    const/4 v13, 0x7

    aget v16, v4, v13

    const/16 v23, 0x1

    add-int/lit8 v16, v16, 0x1

    aput v16, v4, v13

    :cond_c
    add-int v4, v3, v9

    mul-int v4, v4, v2

    add-int/2addr v11, v9

    add-int/2addr v4, v11

    .line 230
    aget v4, v5, v4

    ushr-int/lit8 v4, v4, 0x18

    if-eq v10, v4, :cond_d

    if-eq v10, v12, :cond_d

    if-eq v4, v12, :cond_d

    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 232
    aget-object v4, v4, p2

    const/16 v9, 0x8

    aget v10, v4, v9

    const/4 v11, 0x1

    add-int/2addr v10, v11

    aput v10, v4, v9

    :cond_d
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, p4

    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_e
    move/from16 p4, v4

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_f
    add-int v4, p4, p6

    move/from16 v5, p4

    :goto_6
    iget v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v7, v5, v6

    iget v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_y:I

    add-int/2addr v7, v8

    if-ge v7, v6, :cond_10

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_10
    :goto_7
    add-int/lit8 v6, v4, -0x1

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v6, v6, v7

    iget v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_y:I

    add-int/2addr v6, v8

    sub-int v7, v3, v7

    if-lt v6, v7, :cond_11

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_11
    :goto_8
    if-ge v5, v4, :cond_1e

    iget v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v3, v3, v5

    iget v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_y:I

    add-int/2addr v6, v3

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 249
    aget-object v7, v7, p2

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getPixel(II)I

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 250
    aget-object v7, v7, p2

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v7

    sub-int v7, v3, v7

    iget-object v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 252
    aget-object v8, v8, p2

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v8

    iget-object v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 254
    aget-object v9, v9, p2

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    sub-int v11, v6, v10

    add-int/2addr v6, v10

    invoke-virtual {v9, v11, v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 255
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v6

    sub-int/2addr v3, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 257
    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v6

    iget v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_y:I

    add-int/2addr v3, v9

    add-int v9, p3, p5

    move/from16 v10, p3

    :goto_9
    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v12, v10, v11

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_x:I

    add-int/2addr v12, v13

    if-ge v12, v11, :cond_12

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_12
    :goto_a
    add-int/lit8 v11, v9, -0x1

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v11, v11, v12

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_x:I

    add-int/2addr v11, v13

    sub-int v12, v2, v12

    if-lt v11, v12, :cond_13

    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    :cond_13
    :goto_b
    if-ge v10, v9, :cond_1d

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->step_size:I

    mul-int v12, v10, v11

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->offset_x:I

    add-int/2addr v13, v12

    mul-int v14, v7, v1

    add-int/2addr v14, v12

    .line 272
    aget v12, v8, v14

    ushr-int/lit8 v12, v12, 0x18

    sub-int v14, v3, v11

    mul-int v14, v14, v2

    sub-int v15, v13, v11

    add-int/2addr v14, v15

    .line 302
    aget v14, v6, v14

    ushr-int/lit8 v14, v14, 0x18

    sub-int/2addr v14, v12

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 306
    aget-object v15, v15, p2

    const/16 v22, 0x0

    aget v0, v15, v22

    move/from16 v24, v1

    const v1, 0x77359400

    if-ge v0, v1, :cond_14

    mul-int v14, v14, v14

    add-int/2addr v0, v14

    .line 307
    aput v0, v15, v22

    :cond_14
    sub-int v0, v3, v11

    mul-int v0, v0, v2

    add-int/2addr v0, v13

    .line 310
    aget v0, v6, v0

    ushr-int/lit8 v0, v0, 0x18

    sub-int/2addr v0, v12

    move/from16 p4, v4

    const/4 v14, 0x1

    .line 314
    aget v4, v15, v14

    if-ge v4, v1, :cond_15

    mul-int v0, v0, v0

    add-int/2addr v4, v0

    .line 315
    aput v4, v15, v14

    :cond_15
    sub-int v0, v3, v11

    mul-int v0, v0, v2

    add-int v4, v13, v11

    add-int/2addr v0, v4

    .line 318
    aget v0, v6, v0

    ushr-int/lit8 v0, v0, 0x18

    sub-int/2addr v0, v12

    const/4 v4, 0x2

    .line 322
    aget v14, v15, v4

    if-ge v14, v1, :cond_16

    mul-int v0, v0, v0

    add-int/2addr v14, v0

    .line 323
    aput v14, v15, v4

    :cond_16
    mul-int v0, v3, v2

    sub-int v14, v13, v11

    add-int/2addr v14, v0

    .line 326
    aget v14, v6, v14

    ushr-int/lit8 v14, v14, 0x18

    sub-int/2addr v14, v12

    const/16 v20, 0x3

    .line 330
    aget v4, v15, v20

    if-ge v4, v1, :cond_17

    mul-int v14, v14, v14

    add-int/2addr v4, v14

    .line 331
    aput v4, v15, v20

    :cond_17
    add-int v4, v0, v13

    .line 334
    aget v4, v6, v4

    ushr-int/lit8 v4, v4, 0x18

    sub-int/2addr v4, v12

    move/from16 v19, v7

    const/4 v14, 0x4

    .line 338
    aget v7, v15, v14

    if-ge v7, v1, :cond_18

    mul-int v4, v4, v4

    add-int/2addr v7, v4

    .line 339
    aput v7, v15, v14

    :cond_18
    add-int v4, v13, v11

    add-int/2addr v0, v4

    .line 342
    aget v0, v6, v0

    ushr-int/lit8 v0, v0, 0x18

    sub-int/2addr v0, v12

    const/4 v4, 0x5

    .line 346
    aget v7, v15, v4

    if-ge v7, v1, :cond_19

    mul-int v0, v0, v0

    add-int/2addr v7, v0

    .line 347
    aput v7, v15, v4

    :cond_19
    add-int v0, v3, v11

    mul-int v0, v0, v2

    sub-int v7, v13, v11

    add-int/2addr v0, v7

    .line 350
    aget v0, v6, v0

    ushr-int/lit8 v0, v0, 0x18

    sub-int/2addr v0, v12

    const/4 v7, 0x6

    .line 354
    aget v4, v15, v7

    if-ge v4, v1, :cond_1a

    mul-int v0, v0, v0

    add-int/2addr v4, v0

    .line 355
    aput v4, v15, v7

    :cond_1a
    add-int v0, v3, v11

    mul-int v0, v0, v2

    add-int/2addr v0, v13

    .line 358
    aget v0, v6, v0

    ushr-int/lit8 v0, v0, 0x18

    sub-int/2addr v0, v12

    const/4 v4, 0x7

    .line 362
    aget v7, v15, v4

    if-ge v7, v1, :cond_1b

    mul-int v0, v0, v0

    add-int/2addr v7, v0

    .line 363
    aput v7, v15, v4

    :cond_1b
    add-int v0, v3, v11

    mul-int v0, v0, v2

    add-int/2addr v13, v11

    add-int/2addr v0, v13

    .line 366
    aget v0, v6, v0

    ushr-int/lit8 v0, v0, 0x18

    sub-int/2addr v0, v12

    const/16 v7, 0x8

    .line 370
    aget v11, v15, v7

    if-ge v11, v1, :cond_1c

    mul-int v0, v0, v0

    add-int/2addr v11, v0

    .line 371
    aput v11, v15, v7

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v4, p4

    move/from16 v7, v19

    move/from16 v1, v24

    goto/16 :goto_b

    :cond_1d
    move/from16 v24, v1

    move/from16 p4, v4

    const/4 v4, 0x7

    const/16 v7, 0x8

    const/4 v14, 0x4

    const/16 v20, 0x3

    const/16 v22, 0x0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v4, p4

    goto/16 :goto_8

    :cond_1e
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 389
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 383
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getErrors()[I
    .locals 9

    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    const/4 v1, 0x0

    .line 393
    aget-object v2, v0, v1

    array-length v2, v2

    new-array v2, v2, [I

    .line 395
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    const/4 v6, 0x0

    .line 396
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 397
    aget v7, v2, v6

    aget v8, v5, v6

    add-int/2addr v7, v8

    aput v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public init(I)V
    .locals 4

    .line 107
    new-array v0, p1, [[I

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->errors:[[I

    .line 108
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 109
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 111
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->bitmap0:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 112
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AlignMTBApplyFunction;->bitmap1:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
