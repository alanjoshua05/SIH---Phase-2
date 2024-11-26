.class Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;
.super Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;
.source "JavaImageFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/JavaImageFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HDRNApplyFunction"
.end annotation


# instance fields
.field private final bitmap1:Landroid/graphics/Bitmap;

.field private final bitmap3:Landroid/graphics/Bitmap;

.field private final bitmap4:Landroid/graphics/Bitmap;

.field private final bitmap5:Landroid/graphics/Bitmap;

.field private final bitmap6:Landroid/graphics/Bitmap;

.field fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field fast_bitmap3:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field fast_bitmap4:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field fast_bitmap5:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field fast_bitmap6:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final n_bitmaps:I

.field final offset_x1:I

.field final offset_x3:I

.field final offset_x4:I

.field final offset_x5:I

.field final offset_x6:I

.field final offset_y1:I

.field final offset_y3:I

.field final offset_y4:I

.field final offset_y5:I

.field final offset_y6:I


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;FFFLjava/util/List;[I[III[F[F)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;",
            "FFF",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;[I[III[F[F)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p5

    move-object/from16 v13, p6

    move-object/from16 v12, p7

    const/4 v11, 0x0

    .line 1899
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    const/16 v16, 0x0

    const/4 v10, 0x2

    if-le v0, v10, :cond_0

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, v16

    :goto_0
    aget v7, v13, v11

    aget v8, v12, v11

    array-length v0, v13

    if-le v0, v10, :cond_1

    aget v0, v13, v10

    move v9, v0

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    array-length v0, v12

    if-le v0, v10, :cond_2

    aget v0, v12, v10

    move/from16 v17, v0

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v10, v17

    const/16 v17, 0x0

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;-><init>(Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;FFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIII[F[F)V

    .line 1901
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_12

    const/4 v1, 0x7

    if-gt v0, v1, :cond_12

    move-object/from16 v1, p6

    .line 1905
    array-length v2, v1

    if-ne v2, v0, :cond_11

    move-object/from16 v2, p7

    .line 1908
    array-length v3, v2

    if-ne v3, v0, :cond_10

    const/4 v3, 0x1

    move-object/from16 v4, p5

    .line 1912
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v5, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap1:Landroid/graphics/Bitmap;

    const/4 v5, 0x3

    if-le v0, v5, :cond_3

    .line 1913
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_3
    move-object/from16 v6, v16

    :goto_3
    iput-object v6, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap3:Landroid/graphics/Bitmap;

    const/4 v6, 0x4

    if-le v0, v6, :cond_4

    .line 1914
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_4
    move-object/from16 v7, v16

    :goto_4
    iput-object v7, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap4:Landroid/graphics/Bitmap;

    const/4 v7, 0x5

    if-le v0, v7, :cond_5

    .line 1915
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    goto :goto_5

    :cond_5
    move-object/from16 v8, v16

    :goto_5
    iput-object v8, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap5:Landroid/graphics/Bitmap;

    const/4 v8, 0x6

    if-le v0, v8, :cond_6

    .line 1916
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/graphics/Bitmap;

    :cond_6
    move-object/from16 v4, v16

    iput-object v4, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap6:Landroid/graphics/Bitmap;

    .line 1918
    aget v4, v1, v3

    iput v4, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x1:I

    .line 1919
    aget v3, v2, v3

    iput v3, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y1:I

    if-le v0, v5, :cond_7

    .line 1920
    aget v11, v1, v5

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    iput v11, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x3:I

    if-le v0, v5, :cond_8

    .line 1921
    aget v11, v2, v5

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    :goto_7
    iput v11, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y3:I

    if-le v0, v6, :cond_9

    .line 1922
    aget v11, v1, v6

    goto :goto_8

    :cond_9
    const/4 v11, 0x0

    :goto_8
    iput v11, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x4:I

    if-le v0, v6, :cond_a

    .line 1923
    aget v11, v2, v6

    goto :goto_9

    :cond_a
    const/4 v11, 0x0

    :goto_9
    iput v11, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y4:I

    if-le v0, v7, :cond_b

    .line 1924
    aget v11, v1, v7

    goto :goto_a

    :cond_b
    const/4 v11, 0x0

    :goto_a
    iput v11, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x5:I

    if-le v0, v7, :cond_c

    .line 1925
    aget v11, v2, v7

    goto :goto_b

    :cond_c
    const/4 v11, 0x0

    :goto_b
    iput v11, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y5:I

    if-le v0, v8, :cond_d

    .line 1926
    aget v11, v1, v8

    goto :goto_c

    :cond_d
    const/4 v11, 0x0

    :goto_c
    iput v11, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x6:I

    if-le v0, v8, :cond_e

    .line 1927
    aget v11, v2, v8

    goto :goto_d

    :cond_e
    const/4 v11, 0x0

    :goto_d
    iput v11, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y6:I

    move-object/from16 v1, p10

    .line 1929
    array-length v1, v1

    if-ne v1, v0, :cond_f

    move-object/from16 v1, p11

    array-length v1, v1

    if-ne v1, v0, :cond_f

    return-void

    .line 1930
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpected parameter lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1909
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "offsets_y unexpected length: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1906
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offsets_x unexpected length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1903
    :cond_12
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "n_bitmaps not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 59

    move-object/from16 v0, p0

    .line 1964
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    iget v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x2

    .line 1966
    div-int/2addr v3, v4

    .line 1967
    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1970
    :goto_0
    new-array v8, v2, [I

    .line 1971
    new-array v9, v2, [I

    .line 1972
    new-array v10, v2, [I

    .line 1973
    new-array v11, v2, [F

    .line 1974
    new-array v2, v2, [F

    const/4 v12, 0x3

    new-array v13, v12, [I

    move/from16 v14, p5

    const/4 v15, 0x0

    :goto_1
    add-int v7, p5, p7

    if-ge v14, v7, :cond_20

    .line 1980
    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    aget-object v7, v7, p2

    iget v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y0:I

    add-int/2addr v6, v14

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y0:I

    add-int/2addr v12, v14

    invoke-virtual {v7, v6, v12}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    .line 1981
    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v6

    sub-int v6, v14, v6

    .line 1983
    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap0:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    aget-object v7, v7, p2

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v7

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1985
    aget-object v12, v12, p2

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y1:I

    move/from16 v19, v15

    add-int v15, v14, v4

    add-int/2addr v4, v14

    invoke-virtual {v12, v15, v4}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1986
    aget-object v4, v4, p2

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v4

    sub-int v4, v14, v4

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1988
    aget-object v12, v12, p2

    invoke-virtual {v12}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v12

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    const/16 v20, 0x0

    move-object/from16 v21, v1

    const/4 v1, 0x2

    if-le v15, v1, :cond_5

    .line 2002
    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap2:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    aget-object v1, v1, p2

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y2:I

    add-int/2addr v15, v14

    move-object/from16 v25, v13

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y2:I

    add-int/2addr v13, v14

    invoke-virtual {v1, v15, v13}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    .line 2003
    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap2:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v1

    sub-int v1, v14, v1

    .line 2005
    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap2:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    aget-object v13, v13, p2

    invoke-virtual {v13}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v13

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    move/from16 v26, v1

    const/4 v1, 0x3

    if-le v15, v1, :cond_4

    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap3:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2008
    aget-object v1, v1, p2

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y3:I

    move-object/from16 v27, v13

    add-int v13, v14, v15

    add-int/2addr v15, v14

    invoke-virtual {v1, v13, v15}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap3:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2009
    aget-object v1, v1, p2

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v1

    sub-int v1, v14, v1

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap3:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2011
    aget-object v13, v13, p2

    invoke-virtual {v13}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v13

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    move/from16 v28, v1

    const/4 v1, 0x4

    if-le v15, v1, :cond_3

    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap4:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2014
    aget-object v1, v1, p2

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y4:I

    move-object/from16 v29, v13

    add-int v13, v14, v15

    add-int/2addr v15, v14

    invoke-virtual {v1, v13, v15}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap4:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2015
    aget-object v1, v1, p2

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v1

    sub-int v1, v14, v1

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap4:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2017
    aget-object v13, v13, p2

    invoke-virtual {v13}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v13

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    move/from16 v30, v1

    const/4 v1, 0x5

    if-le v15, v1, :cond_2

    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap5:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2020
    aget-object v1, v1, p2

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y5:I

    move-object/from16 v31, v13

    add-int v13, v14, v15

    add-int/2addr v15, v14

    invoke-virtual {v1, v13, v15}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap5:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2021
    aget-object v1, v1, p2

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v1

    sub-int v1, v14, v1

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap5:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2023
    aget-object v13, v13, p2

    invoke-virtual {v13}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v13

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    move/from16 v32, v1

    const/4 v1, 0x6

    if-le v15, v1, :cond_1

    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap6:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2026
    aget-object v1, v1, p2

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y6:I

    move-object/from16 v33, v13

    add-int v13, v14, v15

    add-int/2addr v15, v14

    invoke-virtual {v1, v13, v15}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap6:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2027
    aget-object v1, v1, p2

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v1

    sub-int v1, v14, v1

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap6:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2029
    aget-object v13, v13, p2

    invoke-virtual {v13}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v20

    move v13, v1

    move-object/from16 v15, v20

    move/from16 v1, v26

    move-object/from16 v20, v27

    goto :goto_5

    :cond_1
    move-object/from16 v33, v13

    move-object/from16 v15, v20

    move/from16 v1, v26

    move-object/from16 v20, v27

    const/4 v13, 0x0

    goto :goto_5

    :cond_2
    move-object/from16 v31, v13

    move-object/from16 v15, v20

    move-object/from16 v33, v15

    move/from16 v1, v26

    move-object/from16 v20, v27

    const/4 v13, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 v29, v13

    move-object/from16 v15, v20

    move-object/from16 v31, v15

    move-object/from16 v33, v31

    move/from16 v1, v26

    move-object/from16 v20, v27

    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v27, v13

    move-object/from16 v15, v20

    move-object/from16 v29, v15

    move-object/from16 v31, v29

    move-object/from16 v33, v31

    move/from16 v1, v26

    move-object/from16 v20, v27

    goto :goto_2

    :cond_5
    move-object/from16 v25, v13

    move-object/from16 v15, v20

    move-object/from16 v29, v15

    move-object/from16 v31, v29

    move-object/from16 v33, v31

    const/4 v1, 0x0

    :goto_2
    const/4 v13, 0x0

    const/16 v28, 0x0

    :goto_3
    const/16 v30, 0x0

    :goto_4
    const/16 v32, 0x0

    :goto_5
    move/from16 v26, v5

    move-object/from16 v27, v15

    move/from16 v5, p4

    :goto_6
    add-int v15, p4, p6

    if-ge v5, v15, :cond_1f

    .line 2038
    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->parameter_A:[F

    move/from16 v34, v13

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->parameter_A:[F

    array-length v13, v13

    move/from16 v35, v1

    const/4 v1, 0x0

    invoke-static {v15, v1, v11, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2039
    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->parameter_B:[F

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->parameter_B:[F

    array-length v15, v15

    invoke-static {v13, v1, v2, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2041
    aget v1, p3, v19

    shr-int/lit8 v13, v1, 0x10

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    and-int/lit16 v1, v1, 0xff

    move-object/from16 v36, v12

    .line 2046
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x0:I

    add-int/2addr v12, v5

    if-ltz v12, :cond_6

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y0:I

    add-int/2addr v12, v14

    if-ltz v12, :cond_6

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x0:I

    add-int/2addr v12, v5

    move/from16 v37, v4

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    if-ge v12, v4, :cond_7

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y0:I

    add-int/2addr v4, v14

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->height:I

    if-ge v4, v12, :cond_7

    .line 2048
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y0:I

    add-int/2addr v4, v6

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    mul-int v4, v4, v12

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x0:I

    add-int/2addr v12, v5

    add-int/2addr v4, v12

    aget v4, v7, v4

    shr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    const/16 v16, 0x0

    .line 2049
    aput v12, v8, v16

    shr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    .line 2050
    aput v12, v9, v16

    and-int/lit16 v4, v4, 0xff

    .line 2051
    aput v4, v10, v16

    goto :goto_7

    :cond_6
    move/from16 v37, v4

    :cond_7
    const/16 v16, 0x0

    .line 2054
    aput v13, v8, v16

    .line 2055
    aput v15, v9, v16

    .line 2056
    aput v1, v10, v16

    .line 2057
    aget v4, v11, v3

    aput v4, v11, v16

    .line 2058
    aget v4, v2, v3

    aput v4, v2, v16

    :goto_7
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x1:I

    add-int v12, v5, v4

    if-ltz v12, :cond_8

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y1:I

    add-int/2addr v12, v14

    if-ltz v12, :cond_8

    add-int/2addr v4, v5

    .line 2061
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    if-ge v4, v12, :cond_8

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y1:I

    add-int/2addr v4, v14

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->height:I

    if-ge v4, v12, :cond_8

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y1:I

    add-int v4, v37, v4

    .line 2063
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    mul-int v4, v4, v12

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x1:I

    add-int/2addr v12, v5

    add-int/2addr v4, v12

    aget v4, v36, v4

    shr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    const/16 v38, 0x1

    .line 2064
    aput v12, v8, v38

    shr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    .line 2065
    aput v12, v9, v38

    and-int/lit16 v4, v4, 0xff

    .line 2066
    aput v4, v10, v38

    goto :goto_8

    :cond_8
    const/16 v38, 0x1

    .line 2069
    aput v13, v8, v38

    .line 2070
    aput v15, v9, v38

    .line 2071
    aput v1, v10, v38

    .line 2072
    aget v4, v11, v3

    aput v4, v11, v38

    .line 2073
    aget v4, v2, v3

    aput v4, v2, v38

    :goto_8
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    const/4 v12, 0x2

    if-le v4, v12, :cond_10

    .line 2077
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x2:I

    add-int/2addr v4, v5

    if-ltz v4, :cond_9

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y2:I

    add-int/2addr v4, v14

    if-ltz v4, :cond_9

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x2:I

    add-int/2addr v4, v5

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    if-ge v4, v12, :cond_9

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y2:I

    add-int/2addr v4, v14

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->height:I

    if-ge v4, v12, :cond_9

    .line 2079
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y2:I

    add-int v4, v35, v4

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    mul-int v4, v4, v12

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x2:I

    add-int/2addr v12, v5

    add-int/2addr v4, v12

    aget v4, v20, v4

    shr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    const/16 v18, 0x2

    .line 2080
    aput v12, v8, v18

    shr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    .line 2081
    aput v12, v9, v18

    and-int/lit16 v4, v4, 0xff

    .line 2082
    aput v4, v10, v18

    goto :goto_9

    :cond_9
    const/16 v18, 0x2

    .line 2085
    aput v13, v8, v18

    .line 2086
    aput v15, v9, v18

    .line 2087
    aput v1, v10, v18

    .line 2088
    aget v4, v11, v3

    aput v4, v11, v18

    .line 2089
    aget v4, v2, v3

    aput v4, v2, v18

    :goto_9
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    const/4 v12, 0x3

    if-le v4, v12, :cond_10

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x3:I

    add-int v12, v5, v4

    if-ltz v12, :cond_a

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y3:I

    add-int/2addr v12, v14

    if-ltz v12, :cond_a

    add-int/2addr v4, v5

    .line 2093
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    if-ge v4, v12, :cond_a

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y3:I

    add-int/2addr v4, v14

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->height:I

    if-ge v4, v12, :cond_a

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y3:I

    add-int v4, v28, v4

    .line 2095
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    mul-int v4, v4, v12

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x3:I

    add-int/2addr v12, v5

    add-int/2addr v4, v12

    aget v4, v29, v4

    shr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    const/16 v17, 0x3

    .line 2096
    aput v12, v8, v17

    shr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    .line 2097
    aput v12, v9, v17

    and-int/lit16 v4, v4, 0xff

    .line 2098
    aput v4, v10, v17

    goto :goto_a

    :cond_a
    const/16 v17, 0x3

    .line 2101
    aput v13, v8, v17

    .line 2102
    aput v15, v9, v17

    .line 2103
    aput v1, v10, v17

    .line 2104
    aget v4, v11, v3

    aput v4, v11, v17

    .line 2105
    aget v4, v2, v3

    aput v4, v2, v17

    :goto_a
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    const/4 v12, 0x4

    if-le v4, v12, :cond_f

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x4:I

    add-int v12, v5, v4

    if-ltz v12, :cond_b

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y4:I

    add-int/2addr v12, v14

    if-ltz v12, :cond_b

    add-int/2addr v4, v5

    .line 2109
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    if-ge v4, v12, :cond_b

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y4:I

    add-int/2addr v4, v14

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->height:I

    if-ge v4, v12, :cond_b

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y4:I

    add-int v4, v30, v4

    .line 2111
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    mul-int v4, v4, v12

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x4:I

    add-int/2addr v12, v5

    add-int/2addr v4, v12

    aget v4, v31, v4

    shr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    const/16 v24, 0x4

    .line 2112
    aput v12, v8, v24

    shr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    .line 2113
    aput v12, v9, v24

    and-int/lit16 v4, v4, 0xff

    .line 2114
    aput v4, v10, v24

    goto :goto_b

    :cond_b
    const/16 v24, 0x4

    .line 2117
    aput v13, v8, v24

    .line 2118
    aput v15, v9, v24

    .line 2119
    aput v1, v10, v24

    .line 2120
    aget v4, v11, v3

    aput v4, v11, v24

    .line 2121
    aget v4, v2, v3

    aput v4, v2, v24

    :goto_b
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    const/4 v12, 0x5

    if-le v4, v12, :cond_e

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x5:I

    add-int v12, v5, v4

    if-ltz v12, :cond_c

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y5:I

    add-int/2addr v12, v14

    if-ltz v12, :cond_c

    add-int/2addr v4, v5

    .line 2125
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    if-ge v4, v12, :cond_c

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y5:I

    add-int/2addr v4, v14

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->height:I

    if-ge v4, v12, :cond_c

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y5:I

    add-int v4, v32, v4

    .line 2127
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    mul-int v4, v4, v12

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x5:I

    add-int/2addr v12, v5

    add-int/2addr v4, v12

    aget v4, v33, v4

    shr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    const/16 v23, 0x5

    .line 2128
    aput v12, v8, v23

    shr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    .line 2129
    aput v12, v9, v23

    and-int/lit16 v4, v4, 0xff

    .line 2130
    aput v4, v10, v23

    goto :goto_c

    :cond_c
    const/16 v23, 0x5

    .line 2133
    aput v13, v8, v23

    .line 2134
    aput v15, v9, v23

    .line 2135
    aput v1, v10, v23

    .line 2136
    aget v4, v11, v3

    aput v4, v11, v23

    .line 2137
    aget v4, v2, v3

    aput v4, v2, v23

    :goto_c
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    const/4 v12, 0x6

    if-le v4, v12, :cond_11

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x6:I

    add-int v12, v5, v4

    if-ltz v12, :cond_d

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y6:I

    add-int/2addr v12, v14

    if-ltz v12, :cond_d

    add-int/2addr v4, v5

    .line 2141
    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    if-ge v4, v12, :cond_d

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y6:I

    add-int/2addr v4, v14

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->height:I

    if-ge v4, v12, :cond_d

    iget v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_y6:I

    add-int v13, v34, v1

    .line 2143
    iget v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->width:I

    mul-int v13, v13, v1

    iget v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->offset_x6:I

    add-int/2addr v1, v5

    add-int/2addr v13, v1

    aget v1, v27, v13

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    const/4 v12, 0x6

    .line 2144
    aput v4, v8, v12

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 2145
    aput v4, v9, v12

    and-int/lit16 v1, v1, 0xff

    .line 2146
    aput v1, v10, v12

    goto :goto_e

    :cond_d
    const/4 v12, 0x6

    .line 2149
    aput v13, v8, v12

    .line 2150
    aput v15, v9, v12

    .line 2151
    aput v1, v10, v12

    .line 2152
    aget v1, v11, v3

    aput v1, v11, v12

    .line 2153
    aget v1, v2, v3

    aput v1, v2, v12

    goto :goto_e

    :cond_e
    const/4 v12, 0x6

    const/16 v23, 0x5

    goto :goto_e

    :cond_f
    const/4 v12, 0x6

    goto :goto_d

    :cond_10
    const/4 v12, 0x6

    const/16 v17, 0x3

    :goto_d
    const/16 v23, 0x5

    const/16 v24, 0x4

    .line 2169
    :cond_11
    :goto_e
    aget v1, v8, v3

    int-to-float v1, v1

    .line 2170
    aget v4, v9, v3

    int-to-float v4, v4

    .line 2171
    aget v13, v10, v3

    int-to-float v13, v13

    add-float v15, v1, v4

    add-float/2addr v15, v13

    const/high16 v22, 0x40400000    # 3.0f

    div-float v15, v15, v22

    const/high16 v38, 0x41fc0000    # 31.5f

    const v39, 0x3f7d70a4    # 0.99f

    const/high16 v40, 0x42ff0000    # 127.5f

    const/high16 v41, 0x3f800000    # 1.0f

    const/16 v42, 0x0

    const/high16 v43, 0x42c00000    # 96.0f

    cmpg-float v44, v15, v40

    if-gtz v44, :cond_13

    const/high16 v44, 0x42000000    # 32.0f

    cmpg-float v45, v15, v44

    if-gtz v45, :cond_12

    const/16 v44, 0x0

    goto :goto_f

    :cond_12
    const/high16 v45, 0x42400000    # 48.0f

    cmpg-float v45, v15, v45

    if-gtz v45, :cond_14

    sub-float v44, v15, v44

    const/high16 v45, 0x41800000    # 16.0f

    div-float v44, v44, v45

    goto :goto_f

    :cond_13
    sub-float v44, v15, v40

    cmpl-float v45, v44, v43

    if-lez v45, :cond_14

    sub-float v44, v44, v43

    mul-float v44, v44, v39

    div-float v44, v44, v38

    sub-float v44, v41, v44

    goto :goto_f

    :cond_14
    const/high16 v44, 0x3f800000    # 1.0f

    .line 2193
    :goto_f
    aget v45, v11, v3

    mul-float v1, v1, v45

    aget v46, v2, v3

    add-float v1, v1, v46

    mul-float v4, v4, v45

    add-float v4, v4, v46

    mul-float v45, v45, v13

    add-float v45, v45, v46

    mul-float v13, v44, v1

    add-float v13, v42, v13

    mul-float v46, v44, v4

    add-float v46, v42, v46

    mul-float v47, v44, v45

    add-float v47, v42, v47

    add-float v48, v42, v44

    if-eqz v26, :cond_16

    add-int/lit8 v49, v3, 0x1

    .line 2203
    aget v12, v8, v49

    int-to-float v12, v12

    move/from16 v50, v6

    .line 2204
    aget v6, v9, v49

    int-to-float v6, v6

    move-object/from16 v51, v7

    .line 2205
    aget v7, v10, v49

    int-to-float v7, v7

    add-float v52, v12, v6

    add-float v52, v52, v7

    div-float v52, v52, v22

    sub-float v53, v52, v40

    .line 2207
    invoke-static/range {v53 .. v53}, Ljava/lang/Math;->abs(F)F

    move-result v53

    cmpl-float v54, v53, v43

    if-lez v54, :cond_15

    sub-float v53, v53, v43

    mul-float v53, v53, v39

    div-float v53, v53, v38

    sub-float v53, v41, v53

    goto :goto_10

    :cond_15
    const/high16 v53, 0x3f800000    # 1.0f

    .line 2213
    :goto_10
    aget v54, v11, v49

    mul-float v12, v12, v54

    aget v49, v2, v49

    add-float v12, v12, v49

    mul-float v6, v6, v54

    add-float v6, v6, v49

    mul-float v54, v54, v7

    add-float v54, v54, v49

    mul-float v12, v12, v53

    add-float/2addr v13, v12

    mul-float v6, v6, v53

    add-float v46, v46, v6

    mul-float v54, v54, v53

    add-float v47, v47, v54

    add-float v48, v48, v53

    add-float v15, v15, v52

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v15, v6

    add-float v44, v44, v53

    div-float v44, v44, v6

    goto :goto_11

    :cond_16
    move/from16 v50, v6

    move-object/from16 v51, v7

    :goto_11
    move v7, v13

    move/from16 v6, v44

    float-to-double v12, v6

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    cmpg-double v44, v12, v52

    if-gez v44, :cond_1e

    cmpg-float v12, v15, v40

    if-gtz v12, :cond_17

    const/4 v12, 0x1

    goto :goto_12

    :cond_17
    const/4 v12, -0x1

    :goto_12
    const/4 v13, 0x1

    if-eqz v26, :cond_18

    if-ne v12, v13, :cond_18

    add-int/lit8 v15, v3, 0x1

    move/from16 v44, v3

    goto :goto_13

    :cond_18
    move v15, v3

    move/from16 v44, v15

    :goto_13
    iget v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->n_bitmaps:I

    sub-int/2addr v3, v13

    const/4 v13, 0x2

    .line 2238
    div-int/2addr v3, v13

    move v13, v7

    const/16 v49, 0x0

    move v7, v6

    const/4 v6, 0x0

    :goto_14
    if-ge v6, v3, :cond_1d

    sub-float v7, v41, v7

    add-int/2addr v15, v12

    move/from16 v52, v12

    .line 2245
    aget v12, v8, v15

    int-to-float v12, v12

    move-object/from16 v53, v8

    .line 2246
    aget v8, v9, v15

    int-to-float v8, v8

    move-object/from16 v54, v9

    .line 2247
    aget v9, v10, v15

    int-to-float v9, v9

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v3, :cond_19

    add-float v49, v12, v8

    add-float v49, v49, v9

    div-float v49, v49, v22

    sub-float v49, v49, v40

    .line 2252
    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(F)F

    move-result v49

    cmpl-float v55, v49, v43

    if-lez v55, :cond_19

    sub-float v55, v49, v43

    mul-float v55, v55, v39

    div-float v55, v55, v38

    sub-float v55, v41, v55

    mul-float v7, v7, v55

    .line 2262
    :cond_19
    aget v55, v11, v15

    mul-float v12, v12, v55

    aget v56, v2, v15

    add-float v12, v12, v56

    mul-float v8, v8, v55

    add-float v8, v8, v56

    mul-float v55, v55, v9

    add-float v9, v55, v56

    move-object/from16 v55, v2

    .line 2266
    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 2267
    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v56, 0x437a0000    # 250.0f

    cmpg-float v56, v2, v56

    if-gtz v56, :cond_1b

    sub-float v2, v2, v40

    .line 2281
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v2, v43

    const/high16 v56, 0x44fa0000    # 2000.0f

    cmpl-float v57, v2, v42

    if-lez v57, :cond_1a

    const v57, 0x433e79e8

    mul-float v2, v2, v57

    add-float v56, v2, v56

    :cond_1a
    sub-float v2, v1, v12

    sub-float v57, v4, v8

    sub-float v58, v45, v9

    mul-float v2, v2, v2

    mul-float v57, v57, v57

    add-float v2, v2, v57

    mul-float v58, v58, v58

    add-float v2, v2, v58

    add-float v56, v2, v56

    div-float v2, v2, v56

    mul-float v56, v2, v1

    sub-float v57, v41, v2

    mul-float v12, v12, v57

    add-float v12, v56, v12

    mul-float v56, v2, v4

    mul-float v8, v8, v57

    add-float v8, v56, v8

    mul-float v2, v2, v45

    mul-float v57, v57, v9

    add-float v9, v2, v57

    :cond_1b
    mul-float v12, v12, v7

    add-float/2addr v13, v12

    mul-float v8, v8, v7

    add-float v46, v46, v8

    mul-float v9, v9, v7

    add-float v47, v47, v9

    add-float v48, v48, v7

    cmpg-float v2, v49, v43

    if-gtz v2, :cond_1c

    goto :goto_15

    :cond_1c
    move/from16 v12, v52

    move-object/from16 v8, v53

    move-object/from16 v9, v54

    move-object/from16 v2, v55

    goto/16 :goto_14

    :cond_1d
    move-object/from16 v55, v2

    move-object/from16 v53, v8

    move-object/from16 v54, v9

    goto :goto_15

    :cond_1e
    move-object/from16 v55, v2

    move/from16 v44, v3

    move-object/from16 v53, v8

    move-object/from16 v54, v9

    move v13, v7

    :goto_15
    div-float v13, v13, v48

    div-float v1, v46, v48

    div-float v2, v47, v48

    move-object/from16 v3, v25

    .line 2318
    invoke-virtual {v0, v3, v13, v1, v2}, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->tonemap([IFFF)V

    const/4 v1, 0x0

    aget v2, v3, v1

    shl-int/lit8 v2, v2, 0x10

    const/high16 v4, -0x1000000

    or-int/2addr v2, v4

    const/4 v4, 0x1

    aget v6, v3, v4

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    const/4 v6, 0x2

    aget v7, v3, v6

    or-int/2addr v2, v7

    .line 2321
    aput v2, v21, v19

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v13, v34

    move/from16 v1, v35

    move-object/from16 v12, v36

    move/from16 v4, v37

    move/from16 v3, v44

    move/from16 v6, v50

    move-object/from16 v7, v51

    move-object/from16 v8, v53

    move-object/from16 v9, v54

    move-object/from16 v2, v55

    goto/16 :goto_6

    :cond_1f
    move-object/from16 v55, v2

    move/from16 v44, v3

    move-object/from16 v53, v8

    move-object/from16 v54, v9

    move-object/from16 v3, v25

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/16 v17, 0x3

    add-int/lit8 v14, v14, 0x1

    move-object v13, v3

    move/from16 v15, v19

    move-object/from16 v1, v21

    move/from16 v5, v26

    move/from16 v3, v44

    const/4 v4, 0x2

    const/4 v12, 0x3

    goto/16 :goto_1

    :cond_20
    return-void
.end method

.method public init(I)V
    .locals 4

    .line 1936
    invoke-super {p0, p1}, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRApplyFunction;->init(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1939
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap3:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1941
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap3:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap4:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1943
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap4:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap5:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1945
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap5:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap6:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1947
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap6:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_a

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap1:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap1:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1950
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap1:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    :cond_5
    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap3:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap3:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1952
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap3:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    :cond_6
    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap4:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap4:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1954
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap4:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    :cond_7
    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap5:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap5:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1956
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap5:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    :cond_8
    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap6:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->fast_bitmap6:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 1958
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$HDRNApplyFunction;->bitmap6:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    return-void
.end method
