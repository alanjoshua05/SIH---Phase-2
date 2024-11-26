.class Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;
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
    name = "ReduceBitmapXFullFunction"
.end annotation


# instance fields
.field private final bitmap_in:[B

.field private final bitmap_out:[B

.field private final width:I


# direct methods
.method constructor <init>([B[BI)V
    .locals 0

    .line 3693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_out:[B

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->width:I

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

    iget v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->width:I

    mul-int v2, v2, v1

    add-int v2, v2, p3

    const/4 v3, 0x4

    mul-int/lit8 v2, v2, 0x4

    move/from16 v4, p3

    :goto_1
    add-int v5, p3, p5

    if-ge v4, v5, :cond_1

    mul-int/lit8 v5, v4, 0x2

    iget v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->width:I

    mul-int/lit8 v7, v6, 0x2

    mul-int v7, v7, v1

    add-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x2

    if-lt v5, v9, :cond_0

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v9

    if-ge v5, v6, :cond_0

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v6, v7, -0x7

    .line 3729
    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v6

    const/4 v10, 0x0

    aget v6, v6, v10

    mul-float v5, v5, v6

    const/4 v6, 0x0

    add-float/2addr v5, v6

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v12, v7, -0x6

    .line 3730
    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v12

    aget v12, v12, v10

    mul-float v11, v11, v12

    add-float/2addr v11, v6

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v7, -0x5

    .line 3731
    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v10, v13, v10

    mul-float v12, v12, v10

    add-float/2addr v12, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v10, v7, -0x3

    .line 3734
    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v10

    const/4 v13, 0x1

    aget v10, v10, v13

    mul-float v6, v6, v10

    add-float/2addr v5, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v10, v7, -0x2

    .line 3735
    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v10

    aget v10, v10, v13

    mul-float v6, v6, v10

    add-float/2addr v11, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v10, v7, -0x1

    .line 3736
    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v10

    aget v10, v10, v13

    mul-float v6, v6, v10

    add-float/2addr v12, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v10, v7, 0x1

    .line 3739
    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v10

    aget v10, v10, v9

    mul-float v6, v6, v10

    add-float/2addr v5, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v10, v7, 0x2

    .line 3740
    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v10

    aget v10, v10, v9

    mul-float v6, v6, v10

    add-float/2addr v11, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v10, v7, 0x3

    .line 3741
    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v10

    aget v9, v10, v9

    mul-float v6, v6, v9

    add-float/2addr v12, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v9, v7, 0x5

    .line 3744
    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v9

    const/4 v10, 0x3

    aget v9, v9, v10

    mul-float v6, v6, v9

    add-float/2addr v5, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v9, v7, 0x6

    .line 3745
    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v9

    aget v9, v9, v10

    mul-float v6, v6, v9

    add-float/2addr v11, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v9, v7, 0x7

    .line 3746
    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v9

    aget v9, v9, v10

    mul-float v6, v6, v9

    add-float/2addr v12, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v9, v7, 0x9

    .line 3749
    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v9

    aget v9, v9, v3

    mul-float v6, v6, v9

    add-float/2addr v5, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v9, v7, 0xa

    .line 3750
    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v9

    aget v9, v9, v3

    mul-float v6, v6, v9

    add-float/2addr v11, v6

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v7, v7, 0xb

    .line 3751
    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v7

    aget v7, v7, v3

    mul-float v6, v6, v7

    add-float/2addr v12, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-float/2addr v11, v6

    float-to-int v7, v11

    add-float/2addr v12, v6

    float-to-int v6, v12

    iget-object v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_out:[B

    .line 3763
    aput-byte v8, v9, v2

    add-int/lit8 v8, v2, 0x1

    int-to-byte v5, v5

    .line 3764
    aput-byte v5, v9, v8

    add-int/lit8 v5, v2, 0x2

    int-to-byte v7, v7

    .line 3765
    aput-byte v7, v9, v5

    add-int/lit8 v5, v2, 0x3

    int-to-byte v6, v6

    .line 3766
    aput-byte v6, v9, v5

    goto :goto_2

    :cond_0
    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_out:[B

    .line 3769
    aput-byte v8, v5, v2

    add-int/lit8 v6, v2, 0x1

    iget-object v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapXFullFunction;->bitmap_in:[B

    add-int/lit8 v9, v7, 0x1

    .line 3770
    aget-byte v9, v8, v9

    aput-byte v9, v5, v6

    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v9, v7, 0x2

    .line 3771
    aget-byte v9, v8, v9

    aput-byte v9, v5, v6

    add-int/lit8 v6, v2, 0x3

    add-int/lit8 v7, v7, 0x3

    .line 3772
    aget-byte v7, v8, v7

    aput-byte v7, v5, v6

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 3787
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 3781
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
