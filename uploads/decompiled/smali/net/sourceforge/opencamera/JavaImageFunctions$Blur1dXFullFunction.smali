.class Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;
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
    name = "Blur1dXFullFunction"
.end annotation


# instance fields
.field private final bitmap_in:[B

.field private final bitmap_out:[B

.field private final height:I

.field private final width:I


# direct methods
.method constructor <init>([B[BII)V
    .locals 0

    .line 4406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_out:[B

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->width:I

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->height:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    :goto_0
    add-int v3, p4, p6

    if-ge v2, v3, :cond_5

    iget v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->width:I

    mul-int v3, v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    .line 4421
    rem-int/lit8 v5, v2, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v5, 0x2

    .line 4429
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, v1, p5

    iget v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->width:I

    sub-int/2addr v9, v5

    .line 4430
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v10, v1

    :goto_1
    if-ge v10, v7, :cond_1

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_out:[B

    add-int/lit8 v12, v3, 0x1

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    .line 4435
    aget-byte v14, v13, v12

    aput-byte v14, v11, v12

    add-int/lit8 v12, v3, 0x2

    .line 4436
    aget-byte v14, v13, v12

    aput-byte v14, v11, v12

    add-int/lit8 v12, v3, 0x3

    .line 4437
    aget-byte v13, v13, v12

    aput-byte v13, v11, v12

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v7, v9, :cond_3

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->width:I

    mul-int v10, v10, v2

    add-int/2addr v10, v7

    mul-int/lit8 v10, v10, 0x4

    .line 4460
    rem-int/lit8 v11, v7, 0x2

    const/4 v12, 0x0

    if-ne v11, v6, :cond_2

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v10, -0x3

    .line 4466
    aget-byte v11, v11, v13

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v6

    mul-float v11, v11, v13

    add-float/2addr v11, v12

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v14, v10, -0x2

    .line 4467
    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v6

    mul-float v13, v13, v14

    add-float/2addr v13, v12

    iget-object v14, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v15, v10, -0x1

    .line 4468
    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v6

    mul-float v14, v14, v15

    add-float/2addr v14, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v15, v10, 0x5

    .line 4473
    aget-byte v12, v12, v15

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    const/16 v16, 0x3

    aget v15, v15, v16

    mul-float v12, v12, v15

    add-float/2addr v11, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v15, v10, 0x6

    .line 4474
    aget-byte v12, v12, v15

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v16

    mul-float v12, v12, v15

    add-float/2addr v13, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v10, v10, 0x7

    .line 4475
    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v12

    aget v12, v12, v16

    mul-float v10, v10, v12

    add-float/2addr v14, v10

    goto/16 :goto_3

    :cond_2
    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v10, -0x7

    .line 4482
    aget-byte v11, v11, v13

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    mul-float v11, v11, v13

    add-float/2addr v11, v12

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v15, v10, -0x6

    .line 4483
    aget-byte v13, v13, v15

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v15

    aget v15, v15, v14

    mul-float v13, v13, v15

    add-float/2addr v13, v12

    iget-object v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v16, v10, -0x5

    .line 4484
    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v16

    aget v14, v16, v14

    mul-float v15, v15, v14

    add-float/2addr v15, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v14, v10, 0x1

    .line 4489
    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v5

    mul-float v12, v12, v14

    add-float/2addr v11, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v14, v10, 0x2

    .line 4490
    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v5

    mul-float v12, v12, v14

    add-float/2addr v13, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v14, v10, 0x3

    .line 4491
    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v5

    mul-float v12, v12, v14

    add-float/2addr v15, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v14, v10, 0x9

    .line 4496
    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v4

    mul-float v12, v12, v14

    add-float/2addr v11, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v14, v10, 0xa

    .line 4497
    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v14

    aget v14, v14, v4

    mul-float v12, v12, v14

    add-float/2addr v13, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    add-int/lit8 v10, v10, 0xb

    .line 4498
    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v12

    aget v12, v12, v4

    mul-float v10, v10, v12

    add-float v14, v15, v10

    :goto_3
    float-to-double v10, v11

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    .line 4503
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v15

    double-to-float v10, v10

    float-to-double v11, v13

    .line 4504
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v15

    double-to-float v11, v11

    float-to-double v12, v14

    .line 4505
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v15

    double-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v10, v13

    float-to-int v10, v10

    add-float/2addr v11, v13

    float-to-int v11, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_out:[B

    add-int/lit8 v14, v3, 0x1

    int-to-byte v10, v10

    .line 4516
    aput-byte v10, v13, v14

    add-int/lit8 v10, v3, 0x2

    int-to-byte v11, v11

    .line 4517
    aput-byte v11, v13, v10

    add-int/lit8 v10, v3, 0x3

    int-to-byte v11, v12

    .line 4518
    aput-byte v11, v13, v10

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_2

    :cond_3
    :goto_4
    if-ge v9, v8, :cond_4

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_out:[B

    add-int/lit8 v6, v3, 0x1

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dXFullFunction;->bitmap_in:[B

    .line 4531
    aget-byte v10, v7, v6

    aput-byte v10, v5, v6

    add-int/lit8 v6, v3, 0x2

    .line 4532
    aget-byte v10, v7, v6

    aput-byte v10, v5, v6

    add-int/lit8 v6, v3, 0x3

    .line 4533
    aget-byte v7, v7, v6

    aput-byte v7, v5, v6

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v3, v4

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 4547
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 4541
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
