.class Lnet/sourceforge/opencamera/JavaImageFunctions$ConvertToGreyscaleFunction;
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
    name = "ConvertToGreyscaleFunction"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 2960
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 2985
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 11

    .line 2965
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v0

    const/4 v1, 0x0

    move/from16 v2, p5

    :goto_0
    add-int v3, p5, p7

    if-ge v2, v3, :cond_1

    move v3, p4

    :goto_1
    add-int v4, p4, p6

    if-ge v3, v4, :cond_0

    .line 2969
    aget v4, p3, v1

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v4, v4, 0xff

    int-to-float v5, v5

    float-to-double v7, v5

    const-wide v9, 0x3fd3333333333333L    # 0.3

    .line 2974
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    int-to-float v5, v6

    float-to-double v5, v5

    const-wide v9, 0x3fe2e147ae147ae1L    # 0.59

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v9

    add-double/2addr v7, v5

    int-to-float v4, v4

    float-to-double v4, v4

    const-wide v9, 0x3fbc28f5c28f5c29L    # 0.11

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v9

    add-double/2addr v7, v4

    double-to-int v4, v7

    shl-int/lit8 v4, v4, 0x18

    .line 2977
    aput v4, v0, v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
