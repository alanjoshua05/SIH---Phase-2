.class Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;
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
    name = "AvgBrightenApplyFunction"
.end annotation


# instance fields
.field private final black_level:F

.field private final brighten:Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;

.field private final height:I

.field private final median_filter_strength:F

.field private final pixels_in_rgbf:[F

.field private final value_to_gamma_scale_lut:[F

.field private final white_level:F

.field private final width:I


# direct methods
.method constructor <init>([FIIFFFFFFF)V
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x100

    new-array v3, v2, [F

    iput-object v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->value_to_gamma_scale_lut:[F

    move-object v3, p1

    iput-object v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->pixels_in_rgbf:[F

    move v3, p2

    iput v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->width:I

    move v3, p3

    iput v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->height:I

    .line 999
    new-instance v9, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;

    move-object v3, v9

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;-><init>(FFFFF)V

    iput-object v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->brighten:Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;

    move/from16 v3, p9

    iput v3, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->median_filter_strength:F

    iput v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->black_level:F

    const/high16 v3, 0x437f0000    # 255.0f

    sub-float v1, v3, v1

    div-float v1, v3, v1

    iput v1, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->white_level:F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    int-to-float v4, v1

    iget-object v5, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->brighten:Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;

    .line 1005
    invoke-static {v5}, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->access$000(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F

    move-result v5

    div-float v5, v4, v5

    float-to-double v5, v5

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->brighten:Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;

    invoke-static {v7}, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->access$100(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v3

    iget-object v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->value_to_gamma_scale_lut:[F

    div-float/2addr v5, v4

    .line 1006
    aput v5, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;IIIII)V
    .locals 39

    move-object/from16 v0, p0

    .line 1016
    invoke-virtual/range {p1 .. p1}, Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;->getCachedPixelsI()[I

    move-result-object v1

    const/4 v2, 0x5

    new-array v3, v2, [Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 1019
    new-instance v6, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;-><init>(Lnet/sourceforge/opencamera/JavaImageFunctions$1;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move/from16 v2, p4

    const/4 v5, 0x0

    :goto_1
    add-int v6, p4, p6

    if-ge v2, v6, :cond_18

    iget v6, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->width:I

    mul-int v6, v6, v2

    add-int v6, v6, p3

    const/4 v7, 0x3

    mul-int/lit8 v6, v6, 0x3

    move/from16 v8, p3

    :goto_2
    add-int v9, p3, p5

    if-ge v8, v9, :cond_17

    iget-object v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->pixels_in_rgbf:[F

    add-int/lit8 v10, v6, 0x1

    .line 1029
    aget v11, v9, v6

    add-int/lit8 v12, v6, 0x2

    .line 1030
    aget v10, v9, v10

    add-int/2addr v6, v7

    .line 1031
    aget v12, v9, v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-lez v8, :cond_b

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->width:I

    add-int/lit8 v7, v15, -0x1

    if-ge v8, v7, :cond_b

    if-lez v2, :cond_b

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->height:I

    sub-int/2addr v7, v14

    if-ge v2, v7, :cond_b

    aget-object v7, v3, v4

    add-int/lit8 v4, v2, -0x1

    .line 1060
    invoke-virtual {v7, v9, v8, v4, v15}, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->setRGB([FIII)V

    aget-object v4, v3, v14

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->pixels_in_rgbf:[F

    add-int/lit8 v9, v8, -0x1

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->width:I

    .line 1061
    invoke-virtual {v4, v7, v9, v2, v15}, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->setRGB([FIII)V

    aget-object v4, v3, v13

    .line 1062
    invoke-virtual {v4, v11, v10, v12}, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->setRGB(FFF)V

    const/4 v4, 0x3

    aget-object v7, v3, v4

    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->pixels_in_rgbf:[F

    add-int/lit8 v9, v8, 0x1

    iget v15, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->width:I

    .line 1063
    invoke-virtual {v7, v4, v9, v2, v15}, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->setRGB([FIII)V

    const/4 v4, 0x4

    aget-object v7, v3, v4

    iget-object v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->pixels_in_rgbf:[F

    add-int/lit8 v15, v2, 0x1

    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->width:I

    .line 1064
    invoke-virtual {v7, v9, v8, v15, v13}, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->setRGB([FIII)V

    const/4 v7, 0x0

    aget-object v9, v3, v7

    .line 1069
    iget v9, v9, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    aget-object v13, v3, v14

    iget v13, v13, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    cmpl-float v9, v9, v13

    if-lez v9, :cond_1

    aget-object v9, v3, v7

    aget-object v13, v3, v14

    aput-object v13, v3, v7

    aput-object v9, v3, v14

    :cond_1
    const/4 v7, 0x3

    aget-object v9, v3, v7

    .line 1074
    iget v9, v9, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    aget-object v13, v3, v4

    iget v13, v13, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    cmpl-float v9, v9, v13

    if-lez v9, :cond_2

    aget-object v9, v3, v7

    aget-object v13, v3, v4

    aput-object v13, v3, v7

    aput-object v9, v3, v4

    :cond_2
    const/4 v9, 0x0

    aget-object v13, v3, v9

    .line 1079
    iget v13, v13, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    aget-object v15, v3, v7

    iget v15, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_3

    aget-object v13, v3, v9

    aget-object v15, v3, v7

    aput-object v15, v3, v9

    aput-object v13, v3, v7

    aget-object v7, v3, v14

    aget-object v9, v3, v4

    aput-object v9, v3, v14

    aput-object v7, v3, v4

    :cond_3
    aget-object v7, v3, v14

    .line 1088
    iget v7, v7, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    const/4 v9, 0x2

    aget-object v13, v3, v9

    iget v13, v13, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    cmpl-float v7, v7, v13

    if-lez v7, :cond_7

    aget-object v7, v3, v9

    .line 1089
    iget v7, v7, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    const/4 v13, 0x3

    aget-object v15, v3, v13

    iget v13, v15, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    cmpl-float v7, v7, v13

    if-lez v7, :cond_5

    aget-object v7, v3, v9

    .line 1090
    iget v7, v7, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    aget-object v13, v3, v4

    iget v13, v13, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    cmpl-float v7, v7, v13

    if-lez v7, :cond_4

    aget-object v7, v3, v9

    aget-object v13, v3, v4

    aput-object v13, v3, v9

    aput-object v7, v3, v4

    :cond_4
    :goto_3
    const/4 v7, 0x2

    goto :goto_4

    :cond_5
    aget-object v4, v3, v14

    .line 1098
    iget v4, v4, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    const/4 v7, 0x3

    aget-object v13, v3, v7

    iget v13, v13, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    cmpl-float v4, v4, v13

    if-lez v4, :cond_6

    aget-object v4, v3, v9

    aget-object v13, v3, v7

    aput-object v13, v3, v9

    aput-object v4, v3, v7

    goto :goto_3

    :cond_6
    aget-object v4, v3, v9

    aget-object v13, v3, v14

    aput-object v13, v3, v9

    aput-object v4, v3, v14

    goto :goto_3

    :cond_7
    const/4 v7, 0x3

    aget-object v9, v3, v14

    .line 1111
    iget v9, v9, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    aget-object v13, v3, v7

    iget v7, v13, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    cmpl-float v7, v9, v7

    if-lez v7, :cond_9

    aget-object v7, v3, v14

    .line 1112
    iget v7, v7, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    aget-object v9, v3, v4

    iget v9, v9, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_8

    const/4 v7, 0x2

    aget-object v9, v3, v7

    aget-object v13, v3, v4

    aput-object v13, v3, v7

    aput-object v9, v3, v4

    goto :goto_4

    :cond_8
    const/4 v7, 0x2

    aget-object v4, v3, v7

    aget-object v9, v3, v14

    aput-object v9, v3, v7

    aput-object v4, v3, v14

    goto :goto_4

    :cond_9
    const/4 v7, 0x2

    aget-object v4, v3, v7

    .line 1124
    iget v4, v4, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    const/4 v9, 0x3

    aget-object v13, v3, v9

    iget v13, v13, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->lum:F

    cmpl-float v4, v4, v13

    if-lez v4, :cond_a

    aget-object v4, v3, v7

    aget-object v13, v3, v9

    aput-object v13, v3, v7

    aput-object v4, v3, v9

    :cond_a
    :goto_4
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->median_filter_strength:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v13, v9, v4

    mul-float v13, v13, v11

    aget-object v11, v3, v7

    .line 1184
    iget v11, v11, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->fr:F

    mul-float v4, v4, v11

    add-float v11, v13, v4

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->median_filter_strength:F

    sub-float v13, v9, v4

    mul-float v13, v13, v10

    aget-object v10, v3, v7

    .line 1185
    iget v10, v10, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->fg:F

    mul-float v4, v4, v10

    add-float v10, v13, v4

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->median_filter_strength:F

    sub-float/2addr v9, v4

    mul-float v9, v9, v12

    aget-object v12, v3, v7

    .line 1186
    iget v12, v12, Lnet/sourceforge/opencamera/JavaImageFunctions$RGBf_luminance;->fb:F

    mul-float v4, v4, v12

    add-float v12, v9, v4

    goto :goto_5

    :cond_b
    const/4 v7, 0x2

    :goto_5
    if-lt v8, v7, :cond_c

    add-int/lit8 v7, v8, -0x2

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :goto_6
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->width:I

    add-int/lit8 v9, v4, -0x2

    if-ge v8, v9, :cond_d

    add-int/lit8 v4, v8, 0x2

    goto :goto_7

    :cond_d
    add-int/lit8 v4, v4, -0x1

    :goto_7
    const/4 v9, 0x2

    if-lt v2, v9, :cond_e

    add-int/lit8 v9, v2, -0x2

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    :goto_8
    iget v13, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->height:I

    add-int/lit8 v15, v13, -0x2

    if-ge v2, v15, :cond_f

    add-int/lit8 v13, v2, 0x2

    goto :goto_9

    :cond_f
    add-int/lit8 v13, v13, -0x1

    :goto_9
    move v15, v9

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_a
    const/high16 v20, 0x3f000000    # 0.5f

    if-gt v15, v13, :cond_12

    iget v14, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->width:I

    mul-int v14, v14, v15

    add-int/2addr v14, v7

    const/16 v22, 0x3

    mul-int/lit8 v14, v14, 0x3

    move-object/from16 v23, v3

    move v3, v7

    :goto_b
    if-gt v3, v4, :cond_11

    move/from16 v24, v4

    iget-object v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->pixels_in_rgbf:[F

    add-int/lit8 v25, v14, 0x1

    .line 1223
    aget v26, v4, v14

    add-int/lit8 v27, v14, 0x2

    .line 1224
    aget v25, v4, v25

    add-int/lit8 v14, v14, 0x3

    .line 1225
    aget v4, v4, v27

    cmpl-float v22, v25, v20

    if-lez v22, :cond_10

    div-float v22, v10, v25

    mul-float v26, v26, v22

    mul-float v25, v25, v22

    mul-float v4, v4, v22

    :cond_10
    sub-float v22, v11, v26

    sub-float v27, v10, v25

    sub-float v28, v12, v4

    mul-float v29, v22, v22

    mul-float v30, v27, v27

    add-float v29, v29, v30

    mul-float v30, v28, v28

    add-float v29, v29, v30

    const/high16 v30, 0x42000000    # 32.0f

    add-float v30, v29, v30

    div-float v29, v29, v30

    mul-float v22, v22, v29

    add-float v26, v26, v22

    mul-float v27, v27, v29

    add-float v25, v25, v27

    mul-float v29, v29, v28

    add-float v4, v4, v29

    add-float v17, v17, v26

    add-float v18, v18, v25

    add-float v19, v19, v4

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v24

    const/16 v22, 0x3

    goto :goto_b

    :cond_11
    move/from16 v24, v4

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v23

    const/4 v14, 0x1

    goto :goto_a

    :cond_12
    move-object/from16 v23, v3

    int-to-float v3, v9

    div-float v17, v17, v3

    div-float v18, v18, v3

    div-float v19, v19, v3

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x1

    if-lt v8, v4, :cond_14

    iget v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->width:I

    add-int/lit8 v9, v7, -0x1

    if-ge v8, v9, :cond_14

    if-lt v2, v4, :cond_14

    iget v9, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->height:I

    sub-int/2addr v9, v4

    if-ge v2, v9, :cond_14

    add-int/lit8 v4, v2, -0x1

    mul-int v9, v4, v7

    add-int/lit8 v10, v8, -0x1

    add-int/2addr v9, v10

    const/4 v11, 0x3

    mul-int/lit8 v9, v9, 0x3

    mul-int v12, v4, v7

    add-int/2addr v12, v8

    mul-int/lit8 v12, v12, 0x3

    mul-int v4, v4, v7

    add-int/lit8 v13, v8, 0x1

    add-int/2addr v4, v13

    mul-int/lit8 v4, v4, 0x3

    mul-int v14, v2, v7

    add-int/2addr v14, v10

    mul-int/lit8 v14, v14, 0x3

    mul-int v15, v2, v7

    add-int/2addr v15, v13

    mul-int/lit8 v15, v15, 0x3

    add-int/lit8 v21, v2, 0x1

    mul-int v22, v21, v7

    add-int v22, v22, v10

    mul-int/lit8 v22, v22, 0x3

    mul-int v10, v21, v7

    add-int/2addr v10, v8

    mul-int/lit8 v10, v10, 0x3

    mul-int v21, v21, v7

    add-int v21, v21, v13

    mul-int/lit8 v21, v21, 0x3

    iget-object v7, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->pixels_in_rgbf:[F

    .line 1334
    aget v13, v7, v9

    add-int/lit8 v24, v9, 0x1

    .line 1335
    aget v24, v7, v24

    const/16 v16, 0x2

    add-int/lit8 v9, v9, 0x2

    .line 1336
    aget v9, v7, v9

    .line 1337
    aget v25, v7, v12

    add-int/lit8 v26, v12, 0x1

    .line 1338
    aget v26, v7, v26

    add-int/lit8 v12, v12, 0x2

    .line 1339
    aget v12, v7, v12

    .line 1340
    aget v27, v7, v4

    add-int/lit8 v28, v4, 0x1

    .line 1341
    aget v28, v7, v28

    add-int/lit8 v4, v4, 0x2

    .line 1342
    aget v4, v7, v4

    .line 1344
    aget v29, v7, v14

    add-int/lit8 v30, v14, 0x1

    .line 1345
    aget v30, v7, v30

    add-int/lit8 v14, v14, 0x2

    .line 1346
    aget v14, v7, v14

    .line 1347
    aget v31, v7, v15

    add-int/lit8 v32, v15, 0x1

    .line 1348
    aget v32, v7, v32

    add-int/lit8 v15, v15, 0x2

    .line 1349
    aget v15, v7, v15

    .line 1351
    aget v33, v7, v22

    add-int/lit8 v34, v22, 0x1

    .line 1352
    aget v34, v7, v34

    add-int/lit8 v22, v22, 0x2

    .line 1353
    aget v22, v7, v22

    .line 1354
    aget v35, v7, v10

    add-int/lit8 v36, v10, 0x1

    .line 1355
    aget v36, v7, v36

    add-int/lit8 v10, v10, 0x2

    .line 1356
    aget v10, v7, v10

    .line 1357
    aget v37, v7, v21

    add-int/lit8 v38, v21, 0x1

    .line 1358
    aget v38, v7, v38

    add-int/lit8 v21, v21, 0x2

    .line 1359
    aget v7, v7, v21

    add-float v13, v13, v25

    add-float v13, v13, v27

    add-float v13, v13, v29

    const/high16 v16, 0x41000000    # 8.0f

    mul-float v21, v17, v16

    add-float v13, v13, v21

    add-float v13, v13, v31

    add-float v13, v13, v33

    add-float v13, v13, v35

    add-float v13, v13, v37

    const/high16 v21, 0x41800000    # 16.0f

    div-float v13, v13, v21

    add-float v24, v24, v26

    add-float v24, v24, v28

    add-float v24, v24, v30

    mul-float v25, v18, v16

    add-float v24, v24, v25

    add-float v24, v24, v32

    add-float v24, v24, v34

    add-float v24, v24, v36

    add-float v24, v24, v38

    div-float v24, v24, v21

    add-float/2addr v9, v12

    add-float/2addr v9, v4

    add-float/2addr v9, v14

    mul-float v16, v16, v19

    add-float v9, v9, v16

    add-float/2addr v9, v15

    add-float v9, v9, v22

    add-float/2addr v9, v10

    add-float/2addr v9, v7

    div-float v9, v9, v21

    sub-float v4, v17, v13

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float v4, v4, v7

    sub-float v10, v18, v24

    mul-float v10, v10, v7

    sub-float v9, v19, v9

    mul-float v9, v9, v7

    mul-float v7, v4, v4

    mul-float v12, v10, v10

    add-float/2addr v7, v12

    mul-float v12, v9, v9

    add-float/2addr v7, v12

    const/high16 v12, 0x42800000    # 64.0f

    cmpl-float v7, v7, v12

    if-lez v7, :cond_13

    add-float v17, v17, v4

    add-float v18, v18, v10

    add-float v19, v19, v9

    :cond_13
    move/from16 v4, v17

    move/from16 v7, v18

    move/from16 v9, v19

    .line 1375
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v10, 0x0

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 1376
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 1377
    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v19

    goto :goto_c

    :cond_14
    const/4 v11, 0x3

    :goto_c
    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->black_level:F

    sub-float v17, v17, v4

    sub-float v18, v18, v4

    sub-float v19, v19, v4

    iget v4, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->white_level:F

    mul-float v7, v17, v4

    mul-float v9, v18, v4

    mul-float v4, v4, v19

    .line 1387
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v10, 0x0

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1388
    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 1389
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1391
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1392
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->brighten:Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;

    .line 1395
    invoke-static {v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->access$300(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F

    move-result v10

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_15

    goto :goto_d

    :cond_15
    iget-object v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->brighten:Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;

    .line 1398
    invoke-static {v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->access$400(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F

    move-result v10

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_16

    iget-object v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->brighten:Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;

    .line 1404
    invoke-static {v10}, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->access$500(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F

    move-result v10

    iget-object v12, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->brighten:Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;

    invoke-static {v12}, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;->access$600(Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;)F

    move-result v12

    div-float/2addr v12, v4

    add-float/2addr v10, v12

    mul-float v7, v7, v10

    mul-float v9, v9, v10

    mul-float v3, v3, v10

    goto :goto_d

    :cond_16
    iget-object v10, v0, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;->value_to_gamma_scale_lut:[F

    add-float v4, v4, v20

    float-to-int v4, v4

    .line 1413
    aget v4, v10, v4

    mul-float v7, v7, v4

    mul-float v9, v9, v4

    mul-float v3, v3, v4

    :goto_d
    add-float v7, v7, v20

    float-to-int v4, v7

    add-float v9, v9, v20

    float-to-int v7, v9

    add-float v3, v3, v20

    float-to-int v3, v3

    const/16 v9, 0xff

    .line 1424
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v10, 0x0

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1425
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1426
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v4, v4, 0x10

    const/high16 v9, -0x1000000

    or-int/2addr v4, v9

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    or-int/2addr v3, v4

    .line 1429
    aput v3, v1, v5

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v23

    const/4 v4, 0x0

    const/4 v7, 0x3

    goto/16 :goto_2

    :cond_17
    move-object/from16 v23, v3

    const/4 v10, 0x0

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_18
    return-void
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[BIIII)V
    .locals 0

    .line 1456
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Lnet/sourceforge/opencamera/JavaImageProcessing$CachedBitmap;I[IIIII)V
    .locals 0

    .line 1437
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(I)V
    .locals 0

    return-void
.end method
