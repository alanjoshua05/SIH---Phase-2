.class public Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;
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
    name = "FocusPeakingApplyFunction"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->bitmap:Landroid/graphics/Bitmap;

    .line 2766
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->width:I

    .line 2767
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->height:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 2782
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 2866
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 31

    move-object/from16 v0, p0

    .line 2787
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    move/from16 v3, p5

    const/4 v4, 0x0

    :goto_0
    add-int v5, p5, p7

    if-ge v3, v5, :cond_3

    move/from16 v5, p4

    :goto_1
    add-int v6, p4, p6

    if-ge v5, v6, :cond_2

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->width:I

    sub-int/2addr v7, v6

    if-ge v5, v7, :cond_1

    if-lt v3, v6, :cond_1

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->height:I

    sub-int/2addr v7, v6

    if-ge v3, v7, :cond_1

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2792
    aget-object v7, v7, p2

    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v7, v8, v9}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2793
    aget-object v7, v7, p2

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v7

    sub-int v7, v3, v7

    iget-object v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2795
    aget-object v8, v8, p2

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v8

    add-int/lit8 v9, v7, -0x1

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->width:I

    mul-int v11, v9, v10

    add-int/lit8 v12, v5, -0x1

    add-int/2addr v11, v12

    .line 2798
    aget v11, v8, v11

    mul-int v13, v9, v10

    add-int/2addr v13, v5

    .line 2799
    aget v13, v8, v13

    mul-int v9, v9, v10

    add-int/lit8 v14, v5, 0x1

    add-int/2addr v9, v14

    .line 2800
    aget v9, v8, v9

    mul-int v15, v7, v10

    add-int/2addr v15, v12

    .line 2801
    aget v15, v8, v15

    .line 2802
    aget v2, p3, v4

    mul-int v16, v7, v10

    add-int v16, v16, v14

    .line 2806
    aget v0, v8, v16

    add-int/2addr v7, v6

    mul-int v6, v7, v10

    add-int/2addr v6, v12

    .line 2807
    aget v6, v8, v6

    mul-int v12, v7, v10

    add-int/2addr v12, v5

    .line 2808
    aget v12, v8, v12

    mul-int v7, v7, v10

    add-int/2addr v7, v14

    .line 2809
    aget v7, v8, v7

    shr-int/lit8 v8, v11, 0x10

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v10, v11, 0x8

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v14, v13, 0x10

    and-int/lit16 v14, v14, 0xff

    move/from16 v16, v3

    shr-int/lit8 v3, v13, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v13, v13, 0xff

    move/from16 v17, v5

    shr-int/lit8 v5, v9, 0x10

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v18, v1

    shr-int/lit8 v1, v9, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v9, v9, 0xff

    move/from16 v19, v4

    shr-int/lit8 v4, v15, 0x10

    and-int/lit16 v4, v4, 0xff

    move/from16 v20, v9

    shr-int/lit8 v9, v15, 0x8

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v15, v15, 0xff

    move/from16 v21, v15

    shr-int/lit8 v15, v2, 0x10

    and-int/lit16 v15, v15, 0xff

    move/from16 v22, v13

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    and-int/lit16 v2, v2, 0xff

    move/from16 v23, v11

    shr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    move/from16 v24, v2

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shr-int/lit8 v0, v6, 0x10

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v2

    shr-int/lit8 v2, v6, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v6, v6, 0xff

    move/from16 v27, v6

    shr-int/lit8 v6, v12, 0x10

    and-int/lit16 v6, v6, 0xff

    move/from16 v28, v2

    shr-int/lit8 v2, v12, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v12, v12, 0xff

    move/from16 v29, v12

    shr-int/lit8 v12, v7, 0x10

    and-int/lit16 v12, v12, 0xff

    move/from16 v30, v2

    shr-int/lit8 v2, v7, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v7, v7, 0xff

    mul-int/lit8 v15, v15, 0x8

    sub-int/2addr v15, v8

    sub-int/2addr v15, v14

    sub-int/2addr v15, v5

    sub-int/2addr v15, v4

    sub-int/2addr v15, v11

    sub-int/2addr v15, v0

    sub-int/2addr v15, v6

    sub-int/2addr v15, v12

    mul-int/lit8 v13, v13, 0x8

    sub-int/2addr v13, v10

    sub-int/2addr v13, v3

    sub-int/2addr v13, v1

    sub-int/2addr v13, v9

    sub-int v13, v13, v26

    sub-int v13, v13, v28

    sub-int v13, v13, v30

    sub-int/2addr v13, v2

    mul-int/lit8 v2, v24, 0x8

    sub-int v2, v2, v23

    sub-int v2, v2, v22

    sub-int v2, v2, v20

    sub-int v2, v2, v21

    sub-int v2, v2, v25

    sub-int v2, v2, v27

    sub-int v2, v2, v29

    sub-int/2addr v2, v7

    mul-int v15, v15, v15

    mul-int v13, v13, v13

    add-int/2addr v15, v13

    mul-int v2, v2, v2

    add-int/2addr v15, v2

    const/high16 v0, 0x10000

    if-le v15, v0, :cond_0

    const/4 v0, -0x1

    .line 2854
    aput v0, v18, v19

    const/4 v0, 0x0

    goto :goto_4

    :cond_0
    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    move-object/from16 v18, v1

    move/from16 v16, v3

    move/from16 v19, v4

    move/from16 v17, v5

    goto :goto_2

    .line 2857
    :goto_3
    aput v0, v18, v19

    :goto_4
    add-int/lit8 v5, v17, 0x1

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v16

    move-object/from16 v1, v18

    goto/16 :goto_1

    :cond_2
    move-object/from16 v18, v1

    move/from16 v16, v3

    move/from16 v19, v4

    const/4 v0, 0x0

    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public init(I)V
    .locals 4

    .line 2772
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2775
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingApplyFunction;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
