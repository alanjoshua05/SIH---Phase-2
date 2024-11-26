.class Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;
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
    name = "MergefFunction"
.end annotation


# instance fields
.field private final interpolated_best_path:[I

.field private final merge_blend_width:I

.field private final pixels_rgbf0:[F

.field private final pixels_rgbf1:[F

.field private final width:I


# direct methods
.method constructor <init>([F[FII[I)V
    .locals 0

    .line 4756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;->pixels_rgbf0:[F

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;->pixels_rgbf1:[F

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;->width:I

    iput-object p5, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;->interpolated_best_path:[I

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;->merge_blend_width:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    :goto_0
    add-int v2, p4, p6

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x3

    iget v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;->width:I

    mul-int v2, v2, v3

    iget-object v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;->interpolated_best_path:[I

    .line 4774
    aget v3, v3, v1

    move/from16 v4, p3

    :goto_1
    add-int v5, p3, p5

    if-ge v4, v5, :cond_0

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;->pixels_rgbf0:[F

    .line 4777
    aget v6, v5, v2

    add-int/lit8 v7, v2, 0x1

    .line 4778
    aget v8, v5, v7

    add-int/lit8 v9, v2, 0x2

    .line 4779
    aget v5, v5, v9

    iget-object v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;->pixels_rgbf1:[F

    .line 4780
    aget v11, v10, v2

    .line 4781
    aget v12, v10, v7

    .line 4782
    aget v10, v10, v9

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;->merge_blend_width:I

    .line 4784
    div-int/lit8 v14, v13, 0x2

    sub-int v14, v3, v14

    sub-int v14, v4, v14

    int-to-float v14, v14

    int-to-float v13, v13

    div-float/2addr v14, v13

    const/4 v13, 0x0

    .line 4785
    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    .line 4786
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$MergefFunction;->pixels_rgbf0:[F

    sub-float/2addr v14, v13

    mul-float v6, v6, v14

    mul-float v11, v11, v13

    add-float/2addr v6, v11

    .line 4788
    aput v6, v15, v2

    mul-float v8, v8, v14

    mul-float v12, v12, v13

    add-float/2addr v8, v12

    .line 4789
    aput v8, v15, v7

    mul-float v14, v14, v5

    mul-float v13, v13, v10

    add-float/2addr v14, v13

    .line 4790
    aput v14, v15, v9

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 4804
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 4798
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
