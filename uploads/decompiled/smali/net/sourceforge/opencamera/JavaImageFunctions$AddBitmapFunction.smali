.class Lnet/sourceforge/opencamera/JavaImageFunctions$AddBitmapFunction;
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
    name = "AddBitmapFunction"
.end annotation


# instance fields
.field private final pixels_rgbf1:[F

.field private final width:I


# direct methods
.method constructor <init>([FI)V
    .locals 0

    .line 4898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AddBitmapFunction;->pixels_rgbf1:[F

    iput p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$AddBitmapFunction;->width:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 4910
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 4952
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 15

    move-object v0, p0

    .line 4915
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p5

    const/4 v4, 0x0

    :goto_0
    add-int v5, p5, p7

    if-ge v3, v5, :cond_1

    mul-int/lit8 v5, v3, 0x3

    iget v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AddBitmapFunction;->width:I

    mul-int v5, v5, v6

    move/from16 v6, p4

    :goto_1
    add-int v7, p4, p6

    if-ge v6, v7, :cond_0

    .line 4922
    aget v7, p3, v4

    shr-int/lit8 v8, v7, 0x10

    const/16 v9, 0xff

    and-int/2addr v8, v9

    int-to-float v8, v8

    shr-int/lit8 v10, v7, 0x8

    and-int/2addr v10, v9

    int-to-float v10, v10

    and-int/2addr v7, v9

    int-to-float v7, v7

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AddBitmapFunction;->pixels_rgbf1:[F

    .line 4927
    aget v12, v11, v5

    add-int/lit8 v13, v5, 0x1

    .line 4928
    aget v13, v11, v13

    add-int/lit8 v14, v5, 0x2

    .line 4929
    aget v11, v11, v14

    add-float/2addr v8, v12

    add-float/2addr v10, v13

    add-float/2addr v7, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v8, v11

    float-to-int v8, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    add-float/2addr v7, v11

    float-to-int v7, v7

    .line 4939
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4940
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 4941
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/high16 v9, -0x1000000

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v10, 0x8

    or-int/2addr v8, v9

    or-int/2addr v7, v8

    .line 4944
    aput v7, v1, v4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
