.class Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;
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
    name = "Blur1dYFullFunction"
.end annotation


# instance fields
.field private final bitmap_in:[B

.field private final bitmap_out:[B

.field private final height:I

.field private final width:I


# direct methods
.method constructor <init>([B[BII)V
    .locals 0

    .line 4562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    iput-object p2, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_out:[B

    iput p3, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->width:I

    iput p4, p0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->height:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p4

    :goto_0
    add-int v2, p4, p6

    if-ge v1, v2, :cond_3

    iget v2, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->width:I

    mul-int v2, v2, v1

    add-int v2, v2, p3

    const/4 v3, 0x4

    mul-int/lit8 v2, v2, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_1

    iget v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->height:I

    sub-int/2addr v6, v5

    if-ge v1, v6, :cond_1

    move/from16 v6, p3

    :goto_1
    add-int v7, p3, p5

    if-ge v6, v7, :cond_2

    .line 4595
    rem-int/lit8 v7, v1, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    add-int/lit8 v7, v1, -0x1

    iget v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->width:I

    mul-int v7, v7, v11

    add-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0x4

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/lit8 v12, v7, 0x1

    .line 4601
    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v12

    aget v12, v12, v10

    mul-float v11, v11, v12

    add-float/2addr v11, v8

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v7, 0x2

    .line 4602
    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v10

    mul-float v12, v12, v13

    add-float/2addr v12, v8

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/2addr v7, v9

    .line 4603
    aget-byte v7, v13, v7

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v10, v13, v10

    mul-float v7, v7, v10

    add-float/2addr v7, v8

    add-int/lit8 v8, v1, 0x1

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->width:I

    mul-int v8, v8, v10

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x4

    iget-object v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v8, 0x1

    .line 4608
    aget-byte v10, v10, v13

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v9

    mul-float v10, v10, v13

    add-float/2addr v11, v10

    iget-object v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v8, 0x2

    .line 4609
    aget-byte v10, v10, v13

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v9

    mul-float v10, v10, v13

    add-float/2addr v12, v10

    iget-object v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/2addr v8, v9

    .line 4610
    aget-byte v8, v10, v8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v10

    aget v9, v10, v9

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v7, v1, -0x2

    iget v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->width:I

    mul-int v7, v7, v10

    add-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0x4

    iget-object v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/lit8 v11, v7, 0x1

    .line 4617
    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    mul-float v10, v10, v11

    add-float/2addr v10, v8

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v7, 0x2

    .line 4618
    aget-byte v11, v11, v13

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v12

    mul-float v11, v11, v13

    add-float/2addr v11, v8

    iget-object v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/2addr v7, v9

    .line 4619
    aget-byte v7, v13, v7

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v12, v13, v12

    mul-float v7, v7, v12

    add-float/2addr v7, v8

    iget v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->width:I

    mul-int v8, v8, v1

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x4

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v8, 0x1

    .line 4624
    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v5

    mul-float v12, v12, v13

    add-float/2addr v10, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v8, 0x2

    .line 4625
    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v5

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/2addr v8, v9

    .line 4626
    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v12

    aget v12, v12, v5

    mul-float v8, v8, v12

    add-float/2addr v7, v8

    add-int/lit8 v8, v1, 0x2

    iget v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->width:I

    mul-int v8, v8, v12

    add-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x4

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v8, 0x1

    .line 4631
    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v3

    mul-float v12, v12, v13

    add-float/2addr v10, v12

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/lit8 v13, v8, 0x2

    .line 4632
    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v13

    aget v13, v13, v3

    mul-float v12, v12, v13

    add-float/2addr v12, v11

    iget-object v11, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    add-int/2addr v8, v9

    .line 4633
    aget-byte v8, v11, v8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions;->access$700()[F

    move-result-object v9

    aget v9, v9, v3

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    move v11, v10

    :goto_2
    float-to-double v8, v11

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 4638
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-float v8, v8

    float-to-double v12, v12

    .line 4639
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    double-to-float v9, v12

    float-to-double v12, v7

    .line 4640
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    double-to-float v7, v12

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v8, v10

    float-to-int v8, v8

    add-float/2addr v9, v10

    float-to-int v9, v9

    add-float/2addr v7, v10

    float-to-int v7, v7

    iget-object v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_out:[B

    .line 4650
    aput-byte v4, v10, v2

    add-int/lit8 v11, v2, 0x1

    int-to-byte v8, v8

    .line 4651
    aput-byte v8, v10, v11

    add-int/lit8 v8, v2, 0x2

    int-to-byte v9, v9

    .line 4652
    aput-byte v9, v10, v8

    add-int/lit8 v8, v2, 0x3

    int-to-byte v7, v7

    .line 4653
    aput-byte v7, v10, v8

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v2, v3

    goto/16 :goto_1

    :cond_1
    move/from16 v5, p3

    :goto_3
    add-int v6, p3, p5

    if-ge v5, v6, :cond_2

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_out:[B

    .line 4658
    aput-byte v4, v6, v2

    add-int/lit8 v7, v2, 0x1

    iget-object v8, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$Blur1dYFullFunction;->bitmap_in:[B

    .line 4659
    aget-byte v9, v8, v7

    aput-byte v9, v6, v7

    add-int/lit8 v7, v2, 0x2

    .line 4660
    aget-byte v9, v8, v7

    aput-byte v9, v6, v7

    add-int/lit8 v7, v2, 0x3

    .line 4661
    aget-byte v8, v8, v7

    aput-byte v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v3

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 4676
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 4670
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
