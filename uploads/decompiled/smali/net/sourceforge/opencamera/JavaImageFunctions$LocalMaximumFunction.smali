.class Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;
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
    name = "LocalMaximumFunction"
.end annotation


# instance fields
.field private final bytes:[B

.field private final corner_threshold:F

.field private final height:I

.field private final pixels_f:[F

.field private final width:I


# direct methods
.method constructor <init>([F[BIIF)V
    .locals 0

    .line 3196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;->pixels_f:[F

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;->bytes:[B

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;->width:I

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;->height:I

    iput p5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;->corner_threshold:F

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p4

    :goto_0
    add-int v2, p4, p6

    if-ge v1, v2, :cond_2

    move/from16 v2, p3

    :goto_1
    add-int v3, p3, p5

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;->pixels_f:[F

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;->width:I

    mul-int v5, v1, v4

    add-int/2addr v5, v2

    .line 3213
    aget v5, v3, v5

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;->bytes:[B

    mul-int v7, v1, v4

    add-int/2addr v7, v2

    const/4 v8, 0x0

    int-to-byte v9, v8

    .line 3214
    aput-byte v9, v6, v7

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;->corner_threshold:F

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_0

    const/4 v7, 0x2

    if-lt v2, v7, :cond_0

    add-int/lit8 v9, v4, -0x2

    if-ge v2, v9, :cond_0

    if-lt v1, v7, :cond_0

    iget v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$LocalMaximumFunction;->height:I

    sub-int/2addr v9, v7

    if-ge v1, v9, :cond_0

    add-int/lit8 v7, v1, -0x2

    mul-int v9, v7, v4

    add-int/lit8 v10, v2, -0x2

    add-int/2addr v9, v10

    .line 3236
    aget v9, v3, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_0

    mul-int v9, v7, v4

    add-int/lit8 v11, v2, -0x1

    add-int/2addr v9, v11

    aget v9, v3, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_0

    mul-int v9, v7, v4

    add-int/2addr v9, v2

    aget v9, v3, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_0

    mul-int v9, v7, v4

    add-int/lit8 v12, v2, 0x1

    add-int/2addr v9, v12

    aget v9, v3, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_0

    mul-int v7, v7, v4

    add-int/lit8 v9, v2, 0x2

    add-int/2addr v7, v9

    aget v7, v3, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_0

    add-int/lit8 v7, v1, -0x1

    mul-int v13, v7, v4

    add-int/2addr v13, v10

    aget v13, v3, v13

    cmpl-float v13, v5, v13

    if-lez v13, :cond_0

    mul-int v13, v7, v4

    add-int/2addr v13, v11

    aget v13, v3, v13

    cmpl-float v13, v5, v13

    if-lez v13, :cond_0

    mul-int v13, v7, v4

    add-int/2addr v13, v2

    aget v13, v3, v13

    cmpl-float v13, v5, v13

    if-lez v13, :cond_0

    mul-int v13, v7, v4

    add-int/2addr v13, v12

    aget v13, v3, v13

    cmpl-float v13, v5, v13

    if-lez v13, :cond_0

    mul-int v7, v7, v4

    add-int/2addr v7, v9

    aget v7, v3, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_0

    mul-int v7, v1, v4

    add-int/2addr v7, v10

    aget v7, v3, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_0

    mul-int v7, v1, v4

    add-int/2addr v7, v11

    aget v7, v3, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_0

    mul-int v7, v1, v4

    add-int/2addr v7, v12

    aget v7, v3, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_0

    mul-int v7, v1, v4

    add-int/2addr v7, v9

    aget v7, v3, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_0

    add-int/lit8 v7, v1, 0x1

    mul-int v13, v7, v4

    add-int/2addr v13, v10

    aget v13, v3, v13

    cmpl-float v13, v5, v13

    if-lez v13, :cond_0

    mul-int v13, v7, v4

    add-int/2addr v13, v11

    aget v13, v3, v13

    cmpl-float v13, v5, v13

    if-lez v13, :cond_0

    mul-int v13, v7, v4

    add-int/2addr v13, v2

    aget v13, v3, v13

    cmpl-float v13, v5, v13

    if-lez v13, :cond_0

    mul-int v13, v7, v4

    add-int/2addr v13, v12

    aget v13, v3, v13

    cmpl-float v13, v5, v13

    if-lez v13, :cond_0

    mul-int v7, v7, v4

    add-int/2addr v7, v9

    aget v7, v3, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_0

    add-int/lit8 v7, v1, 0x2

    mul-int v13, v7, v4

    add-int/2addr v13, v10

    aget v10, v3, v13

    cmpl-float v10, v5, v10

    if-lez v10, :cond_0

    mul-int v10, v7, v4

    add-int/2addr v10, v11

    aget v10, v3, v10

    cmpl-float v10, v5, v10

    if-lez v10, :cond_0

    mul-int v10, v7, v4

    add-int/2addr v10, v2

    aget v10, v3, v10

    cmpl-float v10, v5, v10

    if-lez v10, :cond_0

    mul-int v10, v7, v4

    add-int/2addr v10, v12

    aget v10, v3, v10

    cmpl-float v10, v5, v10

    if-lez v10, :cond_0

    mul-int v7, v7, v4

    add-int/2addr v7, v9

    aget v3, v3, v7

    cmpl-float v3, v5, v3

    if-lez v3, :cond_0

    const/16 v8, 0xff

    :cond_0
    mul-int v4, v4, v1

    add-int/2addr v4, v2

    int-to-byte v3, v8

    .line 3270
    aput-byte v3, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 3284
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 3278
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
