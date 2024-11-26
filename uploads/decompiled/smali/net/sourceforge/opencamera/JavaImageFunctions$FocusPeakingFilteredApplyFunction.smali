.class public Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;
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
    name = "FocusPeakingFilteredApplyFunction"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->bitmap:Landroid/graphics/Bitmap;

    .line 2877
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->width:I

    .line 2878
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->height:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 2893
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 2944
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 2898
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p5

    const/4 v4, 0x0

    :goto_0
    add-int v5, p5, p7

    if-ge v3, v5, :cond_7

    move/from16 v5, p4

    :goto_1
    add-int v6, p4, p6

    if-ge v5, v6, :cond_6

    const/4 v6, 0x1

    if-lt v5, v6, :cond_5

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->width:I

    sub-int/2addr v7, v6

    if-ge v5, v7, :cond_5

    if-lt v3, v6, :cond_5

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->height:I

    sub-int/2addr v7, v6

    if-ge v3, v7, :cond_5

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2903
    aget-object v7, v7, p2

    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v7, v8, v9}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->ensureCache(II)V

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2904
    aget-object v7, v7, p2

    invoke-virtual {v7}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCacheY()I

    move-result v7

    sub-int v7, v3, v7

    iget-object v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2906
    aget-object v8, v8, p2

    invoke-virtual {v8}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;->getCachedPixelsI()[I

    move-result-object v8

    add-int/lit8 v9, v7, -0x1

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->width:I

    mul-int v9, v9, v10

    add-int/2addr v9, v5

    .line 2909
    aget v9, v8, v9

    const/16 v11, 0xff

    and-int/2addr v9, v11

    mul-int v12, v7, v10

    add-int/lit8 v13, v5, -0x1

    add-int/2addr v12, v13

    .line 2910
    aget v12, v8, v12

    and-int/2addr v12, v11

    .line 2911
    aget v13, p3, v4

    and-int/2addr v13, v11

    mul-int v14, v7, v10

    add-int/lit8 v15, v5, 0x1

    add-int/2addr v14, v15

    .line 2915
    aget v14, v8, v14

    and-int/2addr v14, v11

    add-int/2addr v7, v6

    mul-int v7, v7, v10

    add-int/2addr v7, v5

    .line 2916
    aget v7, v8, v7

    and-int/2addr v7, v11

    if-ne v9, v11, :cond_0

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-ne v12, v11, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    if-ne v13, v11, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    if-ne v14, v11, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    if-ne v7, v11, :cond_4

    add-int/lit8 v6, v6, 0x1

    :cond_4
    const/4 v7, 0x3

    if-lt v6, v7, :cond_5

    const/4 v6, -0x1

    .line 2932
    aput v6, v1, v4

    goto :goto_3

    .line 2935
    :cond_5
    aput v2, v1, v4

    :goto_3
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public init(I)V
    .locals 4

    .line 2883
    new-array v0, p1, [Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iput-object v0, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->fast_bitmap:[Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    .line 2886
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;

    iget-object v3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$FocusPeakingFilteredApplyFunction;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lnet/sourceforge/opencamera/JavaImageProcessing$FastAccessBitmap;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
