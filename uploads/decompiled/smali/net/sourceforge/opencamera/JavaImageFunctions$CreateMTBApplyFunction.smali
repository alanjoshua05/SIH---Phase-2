.class Lnet/sourceforge/opencamera/JavaImageFunctions$CreateMTBApplyFunction;
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
    name = "CreateMTBApplyFunction"
.end annotation


# instance fields
.field private final median_value:I

.field private final use_mtb:Z


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CreateMTBApplyFunction;->use_mtb:Z

    iput p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CreateMTBApplyFunction;->median_value:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 0

    .line 27
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 82
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 7

    .line 32
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object p1

    iget-boolean p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CreateMTBApplyFunction;->use_mtb:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    move p2, p5

    const/4 v1, 0x0

    :goto_0
    add-int v2, p5, p7

    if-ge p2, v2, :cond_6

    move v2, p4

    :goto_1
    add-int v3, p4, p6

    if-ge v2, v3, :cond_3

    .line 37
    aget v3, p3, v1

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v3, v3, 0xff

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 43
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$CreateMTBApplyFunction;->median_value:I

    if-le v3, v4, :cond_0

    sub-int v5, v3, v4

    goto :goto_2

    :cond_0
    sub-int v5, v4, v3

    :goto_2
    const/4 v6, 0x4

    if-gt v5, v6, :cond_1

    const/high16 v3, 0x7f000000

    .line 53
    aput v3, p1, v1

    goto :goto_3

    :cond_1
    if-gt v3, v4, :cond_2

    .line 55
    aput v0, p1, v1

    goto :goto_3

    :cond_2
    const/high16 v3, -0x1000000

    .line 57
    aput v3, p1, v1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    move p2, p5

    :goto_4
    add-int v1, p5, p7

    if-ge p2, v1, :cond_6

    move v1, p4

    :goto_5
    add-int v2, p4, p6

    if-ge v1, v2, :cond_5

    .line 65
    aget v2, p3, v0

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v2, v2, 0xff

    .line 70
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 71
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    .line 73
    aput v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
