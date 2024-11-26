.class Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;
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
    name = "ReduceBitmapYFullFunction"
.end annotation


# instance fields
.field private final bitmap_in:[B

.field private final bitmap_out:[B

.field private final height:I

.field private final width:I


# direct methods
.method constructor <init>([B[BII)V
    .locals 0

    .line 3798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_out:[B

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->width:I

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->height:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    :goto_0
    add-int v2, p4, p6

    if-ge v1, v2, :cond_4

    iget v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->width:I

    mul-int v2, v2, v1

    add-int v2, v2, p3

    const/4 v3, 0x4

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v4, v6, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    iget v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->height:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v6

    if-ge v4, v9, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    and-int/2addr v8, v9

    const/4 v9, -0x1

    const/4 v10, 0x3

    if-eqz v8, :cond_2

    move/from16 v8, p3

    :goto_3
    add-int v11, p3, p5

    if-ge v8, v11, :cond_3

    add-int/lit8 v11, v4, -0x2

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->width:I

    mul-int v11, v11, v12

    add-int/2addr v11, v8

    mul-int/lit8 v11, v11, 0x4

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v11, 0x1

    .line 3834
    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v5

    mul-float v12, v12, v13

    const/4 v13, 0x0

    add-float/2addr v12, v13

    iget-object v14, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/lit8 v15, v11, 0x2

    .line 3835
    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v5

    mul-float v14, v14, v15

    add-float/2addr v14, v13

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/2addr v11, v10

    .line 3836
    aget-byte v11, v15, v11

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v5

    mul-float v11, v11, v15

    add-float/2addr v11, v13

    add-int/lit8 v13, v4, -0x1

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->width:I

    mul-int v13, v13, v15

    add-int/2addr v13, v8

    mul-int/lit8 v13, v13, 0x4

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/lit8 v16, v13, 0x1

    .line 3839
    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    aget v16, v16, v7

    mul-float v15, v15, v16

    add-float/2addr v12, v15

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/lit8 v16, v13, 0x2

    .line 3840
    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    aget v16, v16, v7

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/2addr v13, v10

    .line 3841
    aget-byte v13, v15, v13

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v7

    mul-float v13, v13, v15

    add-float/2addr v11, v13

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->width:I

    mul-int v13, v13, v4

    add-int/2addr v13, v8

    mul-int/lit8 v13, v13, 0x4

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/lit8 v16, v13, 0x1

    .line 3844
    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    aget v16, v16, v6

    mul-float v15, v15, v16

    add-float/2addr v12, v15

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/lit8 v16, v13, 0x2

    .line 3845
    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    aget v16, v16, v6

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/2addr v13, v10

    .line 3846
    aget-byte v13, v15, v13

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v6

    mul-float v13, v13, v15

    add-float/2addr v11, v13

    add-int/lit8 v13, v4, 0x1

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->width:I

    mul-int v13, v13, v15

    add-int/2addr v13, v8

    mul-int/lit8 v13, v13, 0x4

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/lit8 v16, v13, 0x1

    .line 3849
    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    aget v16, v16, v10

    mul-float v15, v15, v16

    add-float/2addr v12, v15

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/lit8 v16, v13, 0x2

    .line 3850
    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    aget v16, v16, v10

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/2addr v13, v10

    .line 3851
    aget-byte v13, v15, v13

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v10

    mul-float v13, v13, v15

    add-float/2addr v11, v13

    add-int/lit8 v13, v4, 0x2

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->width:I

    mul-int v13, v13, v15

    add-int/2addr v13, v8

    mul-int/lit8 v13, v13, 0x4

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/lit8 v16, v13, 0x1

    .line 3854
    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    aget v16, v16, v3

    mul-float v15, v15, v16

    add-float/2addr v12, v15

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/lit8 v16, v13, 0x2

    .line 3855
    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    aget v16, v16, v3

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/2addr v13, v10

    .line 3856
    aget-byte v13, v15, v13

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v3

    mul-float v13, v13, v15

    add-float/2addr v11, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    add-float/2addr v14, v13

    float-to-int v14, v14

    add-float/2addr v11, v13

    float-to-int v11, v11

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_out:[B

    .line 3868
    aput-byte v9, v13, v2

    add-int/lit8 v15, v2, 0x1

    int-to-byte v12, v12

    .line 3869
    aput-byte v12, v13, v15

    add-int/lit8 v12, v2, 0x2

    int-to-byte v14, v14

    .line 3870
    aput-byte v14, v13, v12

    add-int/lit8 v12, v2, 0x3

    int-to-byte v11, v11

    .line 3871
    aput-byte v11, v13, v12

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v2, v3

    goto/16 :goto_3

    :cond_2
    move/from16 v5, p3

    :goto_4
    add-int v6, p3, p5

    if-ge v5, v6, :cond_3

    iget v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->width:I

    mul-int v6, v6, v4

    add-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x4

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_out:[B

    .line 3877
    aput-byte v9, v7, v2

    add-int/lit8 v8, v2, 0x1

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ReduceBitmapYFullFunction;->bitmap_in:[B

    add-int/lit8 v12, v6, 0x1

    .line 3878
    aget-byte v12, v11, v12

    aput-byte v12, v7, v8

    add-int/lit8 v8, v2, 0x2

    add-int/lit8 v12, v6, 0x2

    .line 3879
    aget-byte v12, v11, v12

    aput-byte v12, v7, v8

    add-int/lit8 v8, v2, 0x3

    add-int/2addr v6, v10

    .line 3880
    aget-byte v6, v11, v6

    aput-byte v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 3895
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 3889
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
