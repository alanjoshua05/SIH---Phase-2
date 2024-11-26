.class public Lnet/sourceforge/opencamera/HDRProcessor;
.super Ljava/lang/Object;
.source "HDRProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;,
        Lnet/sourceforge/opencamera/HDRProcessor$SortCallback;,
        Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;,
        Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;,
        Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;,
        Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;,
        Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;,
        Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;,
        Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;,
        Lnet/sourceforge/opencamera/HDRProcessor$AvgData;,
        Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HDRProcessor"

.field public static final default_tonemapping_algorithm_c:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

.field public static final use_renderscript:Z = true


# instance fields
.field private alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

.field private cached_avg_sample_size:I

.field private final context:Landroid/content/Context;

.field private createMTBScript:Lnet/sourceforge/opencamera/ScriptC_create_mtb;

.field private final is_test:Z

.field public offsets_x:[I

.field public offsets_y:[I

.field private processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

.field private rs:Landroid/renderscript/RenderScript;

.field public sharp_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    sget-object v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_REINHARD:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    sput-object v0, Lnet/sourceforge/opencamera/HDRProcessor;->default_tonemapping_algorithm_c:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    iput-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->sharp_index:I

    const/4 v0, 0x1

    iput v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->cached_avg_sample_size:I

    iput-object p1, p0, Lnet/sourceforge/opencamera/HDRProcessor;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/HDRProcessor;->is_test:Z

    return-void
.end method

.method private autoAlignment([I[I[Landroid/renderscript/Allocation;IILjava/util/List;IZLnet/sourceforge/opencamera/HDRProcessor$SortCallback;ZIZIIIJ)Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[",
            "Landroid/renderscript/Allocation;",
            "II",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;IZ",
            "Lnet/sourceforge/opencamera/HDRProcessor$SortCallback;",
            "ZIZIIIJ)",
            "Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p9

    .line 2019
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v9, :cond_1

    .line 2020
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v9

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2021
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unequal bitmaps and allocations lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2023
    :cond_1
    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v7

    if-ne v0, v1, :cond_24

    .line 2026
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v8

    if-ne v0, v1, :cond_23

    const/4 v14, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v13, :cond_2

    .line 2032
    aput v14, v7, v0

    .line 2033
    aput v14, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p12, :cond_3

    .line 2044
    div-int/lit8 v0, p4, 0x2

    .line 2045
    div-int/lit8 v1, p5, 0x2

    .line 2046
    div-int/lit8 v2, v0, 0x2

    .line 2047
    div-int/lit8 v3, v1, 0x2

    move v15, v0

    move v4, v1

    move v5, v2

    move v2, v3

    goto :goto_2

    :cond_3
    move/from16 v15, p4

    move/from16 v4, p5

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_2
    const/16 v16, 0x0

    if-eqz p10, :cond_5

    .line 2058
    new-array v3, v13, [Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v13, :cond_4

    .line 2060
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object/from16 v1, v17

    move/from16 p4, v2

    move v2, v5

    move-object/from16 v17, v3

    move/from16 v3, p4

    move/from16 p5, v4

    move v4, v15

    move v14, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/HDRProcessor;->computeMedianLuminance(Landroid/graphics/Bitmap;IIII)Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;

    move-result-object v0

    aput-object v0, v17, v18

    add-int/lit8 v1, v18, 0x1

    move/from16 v2, p4

    move/from16 v4, p5

    move v5, v14

    move-object/from16 v3, v17

    const/4 v14, 0x0

    goto :goto_3

    :cond_4
    move/from16 p4, v2

    move-object/from16 v17, v3

    move/from16 p5, v4

    move v14, v5

    goto :goto_4

    :cond_5
    move/from16 p4, v2

    move/from16 p5, v4

    move v14, v5

    move-object/from16 v17, v16

    :goto_4
    if-nez p8, :cond_9

    if-eqz p10, :cond_9

    .line 2086
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 2087
    :goto_5
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 2088
    new-instance v3, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;

    aget-object v2, v17, v4

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Bitmap;

    aget-object v19, v9, v4

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v8, v3

    move-object/from16 v3, v18

    move/from16 v18, v4

    move-object/from16 v4, v19

    move-object v7, v5

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;-><init>(Lnet/sourceforge/opencamera/HDRProcessor;Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation;I)V

    .line 2089
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v18, 0x1

    move-object/from16 v8, p2

    move-object v5, v7

    move-object/from16 v7, p1

    goto :goto_5

    :cond_6
    move-object v7, v5

    .line 2097
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$1;

    invoke-direct {v0, v6}, Lnet/sourceforge/opencamera/HDRProcessor$1;-><init>(Lnet/sourceforge/opencamera/HDRProcessor;)V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2105
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2106
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2107
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;

    iget-object v1, v1, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2108
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;

    iget-object v1, v1, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;->luminanceInfo:Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;

    aput-object v1, v17, v0

    .line 2109
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;

    iget-object v1, v1, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;->allocation:Landroid/renderscript/Allocation;

    aput-object v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    if-eqz v12, :cond_9

    .line 2118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2119
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2120
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;

    iget v2, v2, Lnet/sourceforge/opencamera/HDRProcessor$1BitmapInfo;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2124
    :cond_8
    invoke-interface {v12, v0}, Lnet/sourceforge/opencamera/HDRProcessor$SortCallback;->sortOrder(Ljava/util/List;)V

    :cond_9
    if-eqz p10, :cond_a

    .line 2138
    aget-object v1, v17, v11

    iget v1, v1, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->median_value:I

    goto :goto_8

    :cond_a
    const/4 v1, -0x1

    .line 2151
    :goto_8
    new-array v2, v13, [Landroid/renderscript/Allocation;

    iget-object v3, v6, Lnet/sourceforge/opencamera/HDRProcessor;->createMTBScript:Lnet/sourceforge/opencamera/ScriptC_create_mtb;

    if-nez v3, :cond_b

    .line 2157
    new-instance v3, Lnet/sourceforge/opencamera/ScriptC_create_mtb;

    iget-object v4, v6, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {v3, v4}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v3, v6, Lnet/sourceforge/opencamera/HDRProcessor;->createMTBScript:Lnet/sourceforge/opencamera/ScriptC_create_mtb;

    :cond_b
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v13, :cond_10

    if-eqz p10, :cond_c

    .line 2167
    aget-object v4, v17, v3

    iget v4, v4, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->median_value:I

    goto :goto_a

    :cond_c
    const/4 v4, -0x1

    :goto_a
    if-eqz p10, :cond_d

    .line 2184
    aget-object v5, v17, v3

    iget-boolean v5, v5, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;->noisy:Z

    if-eqz v5, :cond_d

    .line 2190
    aput-object v16, v2, v3

    move/from16 v5, p4

    move/from16 v8, p5

    goto :goto_b

    :cond_d
    const/4 v5, 0x5

    .line 2199
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0xfa

    .line 2200
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, v6, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 2219
    invoke-static {v5}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    move/from16 v8, p5

    invoke-static {v5, v7, v15, v8}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v5

    aput-object v5, v2, v3

    if-eqz p10, :cond_e

    iget-object v5, v6, Lnet/sourceforge/opencamera/HDRProcessor;->createMTBScript:Lnet/sourceforge/opencamera/ScriptC_create_mtb;

    .line 2223
    invoke-virtual {v5, v4}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->set_median_value(I)V

    :cond_e
    iget-object v4, v6, Lnet/sourceforge/opencamera/HDRProcessor;->createMTBScript:Lnet/sourceforge/opencamera/ScriptC_create_mtb;

    .line 2224
    invoke-virtual {v4, v14}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->set_start_x(I)V

    iget-object v4, v6, Lnet/sourceforge/opencamera/HDRProcessor;->createMTBScript:Lnet/sourceforge/opencamera/ScriptC_create_mtb;

    move/from16 v5, p4

    .line 2225
    invoke-virtual {v4, v5}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->set_start_y(I)V

    iget-object v4, v6, Lnet/sourceforge/opencamera/HDRProcessor;->createMTBScript:Lnet/sourceforge/opencamera/ScriptC_create_mtb;

    .line 2226
    aget-object v7, v2, v3

    invoke-virtual {v4, v7}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->set_out_bitmap(Landroid/renderscript/Allocation;)V

    .line 2230
    new-instance v4, Landroid/renderscript/Script$LaunchOptions;

    invoke-direct {v4}, Landroid/renderscript/Script$LaunchOptions;-><init>()V

    add-int v7, v14, v15

    .line 2234
    invoke-static {v4, v14, v7}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;

    add-int v7, v5, v8

    .line 2235
    invoke-static {v4, v5, v7}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;

    if-eqz p10, :cond_f

    iget-object v7, v6, Lnet/sourceforge/opencamera/HDRProcessor;->createMTBScript:Lnet/sourceforge/opencamera/ScriptC_create_mtb;

    .line 2237
    aget-object v10, v9, v3

    invoke-virtual {v7, v10, v4}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->forEach_create_mtb(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    goto :goto_b

    :cond_f
    iget-object v7, v6, Lnet/sourceforge/opencamera/HDRProcessor;->createMTBScript:Lnet/sourceforge/opencamera/ScriptC_create_mtb;

    .line 2239
    aget-object v10, v9, v3

    invoke-virtual {v7, v10, v4}, Lnet/sourceforge/opencamera/ScriptC_create_mtb;->forEach_create_greyscale(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    :goto_b
    add-int/lit8 v3, v3, 0x1

    move/from16 p4, v5

    move/from16 p5, v8

    goto :goto_9

    :cond_10
    move/from16 v8, p5

    .line 2282
    invoke-static/range {p14 .. p15}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int v3, v3, p13

    .line 2284
    div-int/lit16 v3, v3, 0x96

    const/4 v4, 0x1

    :goto_c
    if-ge v4, v3, :cond_11

    mul-int/lit8 v4, v4, 0x2

    goto :goto_c

    .line 2307
    :cond_11
    aget-object v3, v2, v11

    if-nez v3, :cond_14

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v13, :cond_13

    .line 2311
    aget-object v0, v2, v14

    if-eqz v0, :cond_12

    .line 2312
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 2313
    aput-object v16, v2, v14

    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 2316
    :cond_13
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;

    invoke-direct {v0, v1}, Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;-><init>(I)V

    return-object v0

    :cond_14
    iget-object v3, v6, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    if-nez v3, :cond_15

    .line 2323
    new-instance v3, Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    iget-object v5, v6, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {v3, v5}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v3, v6, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    :cond_15
    iget-object v3, v6, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    .line 2328
    aget-object v5, v2, v11

    invoke-virtual {v3, v5}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->set_bitmap0(Landroid/renderscript/Allocation;)V

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v13, :cond_20

    if-ne v3, v11, :cond_17

    :goto_f
    move/from16 v5, p11

    :cond_16
    move/from16 v17, v4

    const/4 v4, -0x1

    goto/16 :goto_14

    .line 2342
    :cond_17
    aget-object v5, v2, v3

    if-nez v5, :cond_18

    goto :goto_f

    :cond_18
    iget-object v7, v6, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    .line 2350
    invoke-virtual {v7, v5}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->set_bitmap1(Landroid/renderscript/Allocation;)V

    move/from16 v5, p11

    move v7, v4

    :goto_10
    if-le v7, v5, :cond_16

    .line 2357
    div-int/lit8 v7, v7, 0x2

    .line 2379
    div-int v9, v15, v7

    .line 2380
    div-int v10, v8, v7

    iget-object v12, v6, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    .line 2430
    aget v14, p1, v3

    invoke-virtual {v12, v14}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->set_off_x(I)V

    iget-object v12, v6, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    .line 2431
    aget v14, p2, v3

    invoke-virtual {v12, v14}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->set_off_y(I)V

    iget-object v12, v6, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    .line 2432
    invoke-virtual {v12, v7}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->set_step_size(I)V

    iget-object v12, v6, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 2435
    invoke-static {v12}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v14

    const/16 v0, 0x9

    invoke-static {v12, v14, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v12

    iget-object v14, v6, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    .line 2436
    invoke-virtual {v14, v12}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->bind_errors(Landroid/renderscript/Allocation;)V

    iget-object v14, v6, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    .line 2437
    invoke-virtual {v14}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->invoke_init_errors()V

    .line 2439
    new-instance v14, Landroid/renderscript/Script$LaunchOptions;

    invoke-direct {v14}, Landroid/renderscript/Script$LaunchOptions;-><init>()V

    const/4 v0, 0x0

    .line 2442
    invoke-static {v14, v0, v9}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;

    .line 2443
    invoke-static {v14, v0, v10}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;

    .line 2445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p10, :cond_19

    iget-object v9, v6, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    .line 2447
    aget-object v10, v2, v11

    invoke-virtual {v9, v10, v14}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->forEach_align_mtb(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    goto :goto_11

    :cond_19
    iget-object v9, v6, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    .line 2449
    aget-object v10, v2, v11

    invoke-virtual {v9, v10, v14}, Lnet/sourceforge/opencamera/ScriptC_align_mtb;->forEach_align(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    :goto_11
    const/16 v9, 0x9

    new-array v10, v9, [I

    .line 2455
    invoke-virtual {v12, v10}, Landroid/renderscript/Allocation;->copyTo([I)V

    .line 2456
    invoke-virtual {v12}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v0, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    :goto_12
    if-ge v12, v9, :cond_1c

    .line 2463
    aget v9, v10, v12

    move/from16 v17, v4

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1a

    if-ge v9, v14, :cond_1b

    :cond_1a
    move v14, v9

    move v0, v12

    :cond_1b
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v17

    const/16 v9, 0x9

    goto :goto_12

    :cond_1c
    move/from16 v17, v4

    const v4, 0x77359400

    if-lt v14, v4, :cond_1e

    const-string v0, "HDRProcessor"

    const-string v4, "    auto-alignment failed due to overflow"

    .line 2474
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v6, Lnet/sourceforge/opencamera/HDRProcessor;->is_test:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x4

    goto :goto_13

    .line 2478
    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    :goto_13
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1f

    .line 2505
    rem-int/lit8 v9, v0, 0x3

    .line 2506
    div-int/lit8 v0, v0, 0x3

    add-int/2addr v9, v4

    add-int/2addr v0, v4

    .line 2513
    aget v10, p1, v3

    mul-int v9, v9, v7

    add-int/2addr v10, v9

    aput v10, p1, v3

    .line 2514
    aget v9, p2, v3

    mul-int v0, v0, v7

    add-int/2addr v9, v0

    aput v9, p2, v3

    :cond_1f
    move/from16 v4, v17

    goto/16 :goto_10

    :goto_14
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v17

    goto/16 :goto_e

    :cond_20
    const/4 v14, 0x0

    :goto_15
    if-ge v14, v13, :cond_22

    .line 2542
    aget-object v0, v2, v14

    if-eqz v0, :cond_21

    .line 2543
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 2544
    aput-object v16, v2, v14

    :cond_21
    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    .line 2547
    :cond_22
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;

    invoke-direct {v0, v1}, Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;-><init>(I)V

    return-object v0

    .line 2027
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unequal bitmaps and offsets_y lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2024
    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unequal bitmaps and offsets_x lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :goto_16
    throw v0

    :goto_17
    goto :goto_16
.end method

.method private averageRGB(I)D
    .locals 4

    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 524
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private avgBrightenRGBf([FIIIJ)Landroid/graphics/Bitmap;
    .locals 26

    move-object/from16 v10, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 3476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/4 v0, 0x0

    move-object/from16 v6, p1

    .line 3478
    invoke-direct {v10, v6, v7, v8, v0}, Lnet/sourceforge/opencamera/HDRProcessor;->computeHistogram([FIIZ)[I

    move-result-object v11

    .line 3480
    invoke-virtual {v10, v11}, Lnet/sourceforge/opencamera/HDRProcessor;->getHistogramInfo([I)Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;

    move-result-object v15

    .line 3481
    iget v4, v15, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    .line 3482
    iget v12, v15, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->max_brightness:I

    const/4 v0, 0x1

    move/from16 v1, p4

    move-wide/from16 v2, p5

    move v5, v12

    .line 3495
    invoke-static/range {v0 .. v5}, Lnet/sourceforge/opencamera/HDRProcessor;->computeBrightenFactors(ZIJII)Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;

    move-result-object v0

    .line 3496
    iget v1, v0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gain:F

    .line 3497
    iget v2, v0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->low_x:F

    .line 3498
    iget v3, v0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->mid_x:F

    .line 3499
    iget v0, v0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gamma:F

    .line 3520
    invoke-direct {v10, v15, v11, v9}, Lnet/sourceforge/opencamera/HDRProcessor;->computeBlackLevel(Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;[II)F

    move-result v21

    iget v4, v10, Lnet/sourceforge/opencamera/HDRProcessor;->cached_avg_sample_size:I

    const/4 v5, 0x2

    const/high16 v24, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f800000    # 1.0f

    if-lt v4, v5, :cond_0

    const/high16 v20, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v20, 0x3f800000    # 1.0f

    .line 3527
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 3528
    new-instance v4, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;

    int-to-float v5, v12

    move-object v11, v4

    move-object/from16 v12, p1

    move/from16 v13, p2

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v14, p3

    move-object v7, v15

    move v15, v1

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v5

    invoke-direct/range {v11 .. v21}, Lnet/sourceforge/opencamera/JavaImageFunctions$AvgBrightenApplyFunction;-><init>([FIIFFFFFFF)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v2, v25

    move v4, v5

    move/from16 v5, p2

    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v6, p3

    .line 3530
    invoke-static/range {v0 .. v6}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    const/16 v0, 0x44c

    if-ge v9, v0, :cond_1

    const-wide/32 v0, 0x1029fa0

    cmp-long v2, p5, v0

    if-gez v2, :cond_1

    .line 3548
    iget v0, v7, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v0, v0

    const/high16 v1, -0x3e380000    # -25.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 3549
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3550
    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v14, v11, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v14, v14, v1

    mul-float v0, v0, v24

    add-float v5, v14, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v25

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v8, v22

    .line 3556
    invoke-virtual/range {v0 .. v9}, Lnet/sourceforge/opencamera/HDRProcessor;->adjustHistogram(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFIZJ)V

    :cond_1
    return-object v25
.end method

.method private avgBrightenRS(Landroid/renderscript/Allocation;IIIJ)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v6, p1

    move/from16 v7, p4

    .line 3581
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/HDRProcessor;->initRenderscript()V

    .line 3583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 3585
    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/HDRProcessor;->computeHistogramRS(Landroid/renderscript/Allocation;IIZZ)[I

    move-result-object v11

    .line 3587
    invoke-virtual {v10, v11}, Lnet/sourceforge/opencamera/HDRProcessor;->getHistogramInfo([I)Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;

    move-result-object v12

    .line 3588
    iget v4, v12, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    .line 3589
    iget v13, v12, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->max_brightness:I

    const/4 v0, 0x1

    move/from16 v1, p4

    move-wide/from16 v2, p5

    move v5, v13

    .line 3602
    invoke-static/range {v0 .. v5}, Lnet/sourceforge/opencamera/HDRProcessor;->computeBrightenFactors(ZIJII)Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;

    move-result-object v0

    .line 3603
    iget v15, v0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gain:F

    .line 3604
    iget v1, v0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->low_x:F

    .line 3605
    iget v2, v0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->mid_x:F

    .line 3606
    iget v0, v0, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gamma:F

    .line 3627
    invoke-direct {v10, v12, v11, v7}, Lnet/sourceforge/opencamera/HDRProcessor;->computeBlackLevel(Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;[II)F

    move-result v3

    iget v4, v10, Lnet/sourceforge/opencamera/HDRProcessor;->cached_avg_sample_size:I

    const/4 v5, 0x2

    const/high16 v11, 0x3f000000    # 0.5f

    if-lt v4, v5, :cond_0

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 3637
    :goto_0
    new-instance v5, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;

    iget-object v14, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {v5, v14}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;-><init>(Landroid/renderscript/RenderScript;)V

    .line 3638
    invoke-virtual {v5, v6}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 3639
    invoke-virtual {v5, v3}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;->invoke_setBlackLevel(F)V

    .line 3641
    invoke-virtual {v5, v4}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;->set_median_filter_strength(F)V

    int-to-float v3, v13

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v14, v5

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    .line 3642
    invoke-virtual/range {v14 .. v19}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;->invoke_setBrightenParameters(FFFFF)V

    .line 3644
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v3, p2

    move/from16 v13, p3

    invoke-static {v3, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    iget-object v0, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 3645
    invoke-static {v0, v14}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v15

    .line 3649
    invoke-virtual {v5, v6, v15}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;->forEach_avg_brighten_f(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/16 v0, 0x44c

    if-ge v7, v0, :cond_1

    const-wide/32 v0, 0x1029fa0

    cmp-long v2, p5, v0

    if-gez v2, :cond_1

    .line 3667
    iget v0, v12, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v0, v0

    const/high16 v1, -0x3e380000    # -25.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 3668
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3669
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v1, v4, v0

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v1, v1, v2

    mul-float v0, v0, v11

    add-float v5, v1, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v15

    move/from16 v3, p2

    move/from16 v4, p3

    .line 3675
    invoke-virtual/range {v0 .. v9}, Lnet/sourceforge/opencamera/HDRProcessor;->adjustHistogramRS(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;IIFIZJ)V

    .line 3680
    :cond_1
    invoke-virtual {v15, v14}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 3681
    invoke-virtual {v15}, Landroid/renderscript/Allocation;->destroy()V

    .line 3685
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/HDRProcessor;->freeScripts()V

    return-object v14
.end method

.method private computeBlackLevel(Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;[II)F
    .locals 5

    .line 3438
    iget p1, p1, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->total:I

    int-to-float p1, p1

    const v0, 0x3a83126f    # 0.001f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 3442
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    .line 3443
    aget v4, p2, v0

    add-int/2addr v2, v4

    if-lt v2, p1, :cond_0

    if-ne v3, v1, :cond_0

    move v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-float p1, v3

    const/4 p2, 0x0

    .line 3448
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/16 p2, 0x2bc

    if-gt p3, p2, :cond_2

    const/high16 p2, 0x41900000    # 18.0f

    goto :goto_1

    :cond_2
    const/high16 p2, 0x40800000    # 4.0f

    .line 3451
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public static computeBrightenFactors(ZIJII)Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;
    .locals 10

    if-eqz p0, :cond_0

    const/16 v0, 0x44c

    if-ge p1, v0, :cond_0

    const-wide/32 v0, 0x1029fa0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    const/16 v0, 0xc7

    goto :goto_0

    :cond_0
    const/16 v0, 0x77

    :goto_0
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 3324
    invoke-static {p4, v1, v0}, Lnet/sourceforge/opencamera/HDRProcessor;->getBrightnessTarget(IFI)I

    move-result v8

    const/4 v9, 0x1

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    .line 3334
    invoke-static/range {v2 .. v9}, Lnet/sourceforge/opencamera/HDRProcessor;->computeBrightenFactors(ZIJIIIZ)Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;

    move-result-object p0

    return-object p0
.end method

.method private static computeBrightenFactors(ZIJIIIZ)Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;
    .locals 4

    if-gtz p4, :cond_0

    const/4 p4, 0x1

    :cond_0
    int-to-float p6, p6

    int-to-float p4, p4

    div-float/2addr p6, p4

    const/high16 p4, 0x3f800000    # 1.0f

    cmpg-float v0, p6, p4

    if-gez v0, :cond_1

    if-eqz p7, :cond_1

    const/high16 p6, 0x3f800000    # 1.0f

    :cond_1
    int-to-float v0, p5

    mul-float v1, p6, v0

    const/high16 v2, 0x437f0000    # 255.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    if-eqz p0, :cond_2

    const/16 p4, 0x44c

    if-ge p1, p4, :cond_2

    const-wide/32 p4, 0x1029fa0

    cmp-long p7, p2, p4

    if-gez p7, :cond_2

    const/high16 p2, 0x43190000    # 153.0f

    goto :goto_0

    :cond_2
    const/high16 p2, 0x434c0000    # 204.0f

    :goto_0
    div-float p3, p2, p6

    div-float/2addr p2, v2

    float-to-double p4, p2

    .line 3398
    invoke-static {p4, p5}, Ljava/lang/Math;->log(D)D

    move-result-wide p4

    div-float p2, p3, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p4, v0

    double-to-float p4, p4

    goto :goto_1

    :cond_3
    const p3, 0x437f8000    # 255.5f

    if-eqz p7, :cond_4

    cmpg-float p2, v1, v2

    if-gez p2, :cond_4

    if-lez p5, :cond_4

    div-float/2addr v2, v0

    const/high16 p2, 0x40800000    # 4.0f

    .line 3404
    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    cmpl-float p5, p2, p6

    if-lez p5, :cond_4

    move p6, p2

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    const/16 p0, 0x190

    if-lt p1, p0, :cond_5

    const/high16 p0, 0x42ff0000    # 127.5f

    div-float/2addr p0, p6

    const/high16 p1, 0x3e000000    # 0.125f

    mul-float p0, p0, p1

    const/high16 p1, 0x41000000    # 8.0f

    .line 3422
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    .line 3430
    :goto_2
    new-instance p1, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;

    invoke-direct {p1, p6, p0, p3, p4}, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;-><init>(FFFF)V

    return-object p1
.end method

.method private computeHistogram([FIIZ)[I
    .locals 7

    if-nez p4, :cond_0

    .line 3175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3177
    new-instance p4, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;

    sget-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_VALUE:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    invoke-direct {p4, v0}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;-><init>(Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;)V

    .line 3178
    invoke-virtual {p4, p1, p2}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->setPixelsRGBf([FI)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p4

    move v5, p2

    move v6, p3

    .line 3179
    invoke-static/range {v0 .. v6}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    .line 3180
    invoke-virtual {p4}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->getHistogram()[I

    move-result-object p1

    return-object p1

    .line 3172
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeHistogramAllocation(Landroid/renderscript/Allocation;ZZJ)Landroid/renderscript/Allocation;
    .locals 1

    iget-object p4, p0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 3036
    invoke-static {p4}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p5

    const/16 v0, 0x100

    invoke-static {p4, p5, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object p4

    .line 3047
    new-instance p5, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;

    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {p5, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;-><init>(Landroid/renderscript/RenderScript;)V

    .line 3050
    invoke-virtual {p5, p4}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bind_histogram(Landroid/renderscript/Allocation;)V

    .line 3051
    invoke-virtual {p5}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->invoke_init_histogram()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 3058
    invoke-virtual {p5, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_intensity_f(Landroid/renderscript/Allocation;)V

    goto :goto_0

    .line 3060
    :cond_0
    invoke-virtual {p5, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_intensity(Landroid/renderscript/Allocation;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 3064
    invoke-virtual {p5, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_value_f(Landroid/renderscript/Allocation;)V

    goto :goto_0

    .line 3066
    :cond_2
    invoke-virtual {p5, p1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_value(Landroid/renderscript/Allocation;)V

    :goto_0
    return-object p4
.end method

.method private computeHistogramRS(Landroid/renderscript/Allocation;IIZZ)[I
    .locals 6

    .line 3200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 p2, 0x100

    new-array p2, p2, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    .line 3213
    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/HDRProcessor;->computeHistogramAllocation(Landroid/renderscript/Allocation;ZZJ)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 3214
    invoke-virtual {p1, p2}, Landroid/renderscript/Allocation;->copyTo([I)V

    .line 3215
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    return-object p2
.end method

.method private computeMedianLuminance(Landroid/graphics/Bitmap;IIII)Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;
    .locals 17

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 2593
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x64

    .line 2594
    div-int/2addr v1, v0

    const/16 v2, 0x100

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 2598
    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0xff

    const/4 v8, 0x1

    if-ge v5, v1, :cond_2

    int-to-double v9, v5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 2602
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v11

    int-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v11

    div-double/2addr v9, v13

    move/from16 v13, p5

    int-to-double v14, v13

    .line 2604
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v14

    double-to-int v9, v9

    add-int v9, p3, v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v0, :cond_1

    int-to-double v14, v10

    .line 2606
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v14, v11

    move/from16 v16, v5

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v11

    div-double/2addr v14, v4

    move/from16 v4, p4

    int-to-double v11, v4

    .line 2608
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v11

    double-to-int v5, v14

    add-int v5, p2, v5

    move-object/from16 v11, p1

    .line 2611
    invoke-virtual {v11, v5, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    const/high16 v12, 0xff0000

    and-int/2addr v12, v5

    shr-int/lit8 v12, v12, 0x10

    const v14, 0xff00

    and-int/2addr v14, v5

    shr-int/lit8 v14, v14, 0x8

    and-int/2addr v5, v7

    .line 2615
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2616
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2617
    aget v12, v3, v5

    add-int/2addr v12, v8

    aput v12, v3, v5

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v16

    const/4 v4, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_1
    move-object/from16 v11, p1

    move/from16 v4, p4

    move/from16 v16, v5

    add-int/lit8 v5, v16, 0x1

    const/4 v4, 0x0

    goto :goto_1

    .line 2625
    :cond_2
    div-int/lit8 v0, v6, 0x2

    const/4 v1, 0x0

    :goto_3
    const/4 v4, -0x1

    if-ltz v7, :cond_4

    .line 2637
    aget v5, v3, v7

    add-int/2addr v1, v5

    .line 2638
    div-int/lit8 v5, v6, 0xa

    if-lt v1, v5, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_4
    const/4 v7, -0x1

    :goto_4
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v9, 0x0

    :goto_5
    if-ge v1, v2, :cond_a

    .line 2649
    aget v10, v3, v1

    add-int/2addr v9, v10

    if-ne v5, v4, :cond_5

    if-lez v10, :cond_5

    move v5, v1

    :cond_5
    if-lt v9, v0, :cond_9

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_6
    add-int/lit8 v9, v1, -0x4

    if-gt v0, v9, :cond_6

    .line 2661
    aget v9, v3, v0

    add-int/2addr v4, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_7
    add-int/lit8 v9, v1, 0x4

    if-gt v0, v9, :cond_7

    if-ge v0, v2, :cond_7

    .line 2664
    aget v9, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    int-to-double v2, v4

    int-to-double v9, v6

    .line 2666
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v9

    const-wide v9, 0x3fc999999999999aL    # 0.2

    cmpg-double v0, v2, v9

    if-gez v0, :cond_8

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    .line 2682
    :goto_8
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;

    invoke-direct {v0, v5, v1, v7, v4}, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;-><init>(IIIZ)V

    return-object v0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    const-string v0, "HDRProcessor"

    const-string v1, "computeMedianLuminance failed"

    .line 2685
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;

    const/16 v1, 0x7f

    invoke-direct {v0, v5, v1, v7, v8}, Lnet/sourceforge/opencamera/HDRProcessor$LuminanceInfo;-><init>(IIIZ)V

    return-object v0
.end method

.method private computeSharpness(Landroid/renderscript/Allocation;IJ)F
    .locals 1

    iget-object p3, p0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 3723
    invoke-static {p3}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p4

    invoke-static {p3, p4, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object p3

    .line 3731
    new-instance p4, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;

    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {p4, v0}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;-><init>(Landroid/renderscript/RenderScript;)V

    .line 3736
    invoke-virtual {p4, p3}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->bind_sums(Landroid/renderscript/Allocation;)V

    .line 3737
    invoke-virtual {p4, p1}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->set_bitmap(Landroid/renderscript/Allocation;)V

    .line 3738
    invoke-virtual {p4, p2}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->set_width(I)V

    .line 3739
    invoke-virtual {p4}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->invoke_init_sums()V

    .line 3744
    invoke-virtual {p4, p1}, Lnet/sourceforge/opencamera/ScriptC_calculate_sharpness;->forEach_calculate_sharpness(Landroid/renderscript/Allocation;)V

    .line 3748
    new-array p1, p2, [I

    .line 3749
    invoke-virtual {p3, p1}, Landroid/renderscript/Allocation;->copyTo([I)V

    .line 3750
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->destroy()V

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_0

    .line 3755
    aget v0, p1, p4

    int-to-float v0, v0

    add-float/2addr p3, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method

.method private createFunctionFromBitmaps(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;
    .locals 24

    move-object/from16 v0, p0

    .line 420
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 421
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 422
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 425
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/16 v2, 0x64

    .line 426
    div-int/2addr v2, v1

    const-wide/16 v7, 0x0

    move-wide v9, v7

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v2, :cond_3

    int-to-double v12, v11

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 431
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v14

    move-object/from16 v16, v4

    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v14

    div-double/2addr v12, v3

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v3

    double-to-int v3, v12

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    int-to-double v12, v4

    .line 434
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v14

    move/from16 v19, v4

    move-object/from16 v18, v5

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v14

    div-double/2addr v12, v4

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v4

    double-to-int v4, v12

    add-int v5, v4, p4

    if-ltz v5, :cond_1

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ge v5, v12, :cond_1

    add-int v12, v3, p5

    if-ltz v12, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-lt v12, v13, :cond_0

    goto :goto_2

    :cond_0
    move-object/from16 v13, p2

    .line 441
    invoke-virtual {v13, v5, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    move-object/from16 v12, p3

    .line 442
    invoke-virtual {v12, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 443
    invoke-direct {v0, v5}, Lnet/sourceforge/opencamera/HDRProcessor;->averageRGB(I)D

    move-result-wide v20

    .line 444
    invoke-direct {v0, v4}, Lnet/sourceforge/opencamera/HDRProcessor;->averageRGB(I)D

    move-result-wide v4

    add-double v7, v7, v20

    add-double/2addr v9, v4

    .line 447
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object/from16 v15, v16

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    :goto_2
    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v15, v16

    move-object/from16 v5, v18

    :goto_3
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v16, v15

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_2
    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v15, v16

    add-int/lit8 v11, v11, 0x1

    move-object v4, v15

    goto/16 :goto_0

    :cond_3
    move-object v15, v4

    .line 451
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "HDRProcessor"

    const-string v2, "no samples for response function!"

    .line 452
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v1, 0x406fe00000000000L    # 255.0

    add-double/2addr v7, v1

    add-double/2addr v9, v1

    .line 458
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v1

    .line 462
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v1

    const/4 v1, 0x1

    cmpg-double v2, v7, v9

    if-gez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x0

    .line 471
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 472
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v9, 0x1

    .line 473
    :goto_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 474
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v12, v10, v7

    if-gez v12, :cond_6

    move-wide v7, v10

    :cond_6
    cmpl-double v12, v10, v3

    if-lez v12, :cond_7

    move-wide v3, v10

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    add-double v9, v7, v3

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v11

    const/4 v13, 0x0

    .line 486
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 487
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 488
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v1, v14, :cond_b

    .line 489
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    cmpg-double v14, v20, v16

    if-gez v14, :cond_9

    move-wide/from16 v16, v20

    :cond_9
    cmpl-double v14, v20, v18

    if-lez v14, :cond_a

    move-wide/from16 v18, v20

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    add-double v20, v16, v18

    mul-double v20, v20, v11

    .line 501
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_f

    .line 502
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 503
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    cmpg-double v1, v11, v9

    if-gtz v1, :cond_c

    sub-double/2addr v11, v7

    goto :goto_8

    :cond_c
    sub-double v11, v3, v11

    :goto_8
    if-eqz v2, :cond_e

    cmpg-double v1, v22, v20

    if-gtz v1, :cond_d

    sub-double v22, v22, v16

    goto :goto_9

    :cond_d
    sub-double v22, v18, v22

    :goto_9
    cmpg-double v1, v22, v11

    if-gez v1, :cond_e

    move-wide/from16 v11, v22

    .line 511
    :cond_e
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 515
    :cond_f
    new-instance v7, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;

    iget-object v2, v0, Lnet/sourceforge/opencamera/HDRProcessor;->context:Landroid/content/Context;

    move-object v1, v7

    move/from16 v3, p1

    move-object v4, v15

    invoke-direct/range {v1 .. v6}, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method

.method private freeScripts()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    iput-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->createMTBScript:Lnet/sourceforge/opencamera/ScriptC_create_mtb;

    iput-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->alignMTBScript:Lnet/sourceforge/opencamera/ScriptC_align_mtb;

    return-void
.end method

.method private static getBrightnessTarget(IFI)I
    .locals 2

    if-lez p0, :cond_0

    const/high16 v0, 0x42280000    # 42.0f

    int-to-float v1, p0

    div-float/2addr v0, v1

    .line 3274
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x41700000    # 15.0f

    .line 3279
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_0
    if-gtz p0, :cond_1

    const/4 p0, 0x1

    :cond_1
    int-to-float v0, p0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 3289
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3290
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private initRenderscript()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->context:Landroid/content/Context;

    .line 1235
    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    :cond_0
    return-void
.end method

.method private processAvgCore(Lnet/sourceforge/opencamera/HDRProcessor$AvgData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFIJFJ)Lnet/sourceforge/opencamera/HDRProcessor$AvgData;
    .locals 37

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move/from16 v12, p4

    move/from16 v11, p5

    move/from16 v10, p6

    move/from16 v9, p7

    if-eqz v0, :cond_0

    .line 1473
    iget-object v1, v0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_out:Landroid/renderscript/Allocation;

    .line 1474
    iget-object v2, v0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->pixels_rgbf_out:[F

    .line 1475
    iget-object v3, v0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->bitmap_avg_align:Landroid/graphics/Bitmap;

    .line 1476
    iget-object v4, v0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_avg_align:Landroid/renderscript/Allocation;

    .line 1477
    iget-object v5, v0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->bitmap_orig:Landroid/graphics/Bitmap;

    .line 1478
    iget-object v0, v0, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_orig:Landroid/renderscript/Allocation;

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v18, v2

    move-object/from16 v21, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    :goto_0
    const/4 v7, 0x2

    new-array v0, v7, [I

    iput-object v0, v15, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    new-array v0, v7, [I

    iput-object v0, v15, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    const/16 v22, 0x0

    const/4 v8, 0x1

    if-eqz v14, :cond_1

    if-nez v20, :cond_1

    if-nez v18, :cond_1

    const/16 v23, 0x0

    goto :goto_1

    :cond_1
    if-nez v14, :cond_16

    if-nez v20, :cond_2

    if-eqz v18, :cond_16

    :cond_2
    const/16 v23, 0x1

    .line 1502
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x4079999a    # 3.9f

    cmpl-float v0, p10, v0

    if-lez v0, :cond_3

    move-wide/from16 v1, p8

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    move-wide/from16 v1, p8

    .line 1516
    invoke-virtual {v15, v9, v1, v2}, Lnet/sourceforge/opencamera/HDRProcessor;->getAvgSampleSize(IJ)I

    move-result v5

    div-int/2addr v0, v5

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v5, v0

    .line 1524
    :goto_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v8, v5

    const/high16 v24, 0x3f800000    # 1.0f

    div-float v8, v24, v8

    .line 1525
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1526
    div-int v16, v12, v5

    .line 1527
    div-int v17, v11, v5

    .line 1539
    div-int/lit8 v8, v12, 0x2

    .line 1540
    div-int/lit8 v25, v11, 0x2

    sub-int v26, v12, v8

    .line 1541
    div-int/lit8 v26, v26, 0x2

    sub-int v27, v11, v25

    .line 1542
    div-int/lit8 v27, v27, 0x2

    const/16 v28, 0x0

    if-nez v3, :cond_4

    const/16 v29, 0x0

    move-object/from16 v30, v0

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v27

    move v3, v8

    move/from16 v4, v25

    move/from16 v31, v5

    move-object/from16 v5, v30

    move-object v7, v6

    move/from16 v6, v29

    .line 1549
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v15, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1551
    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    move-object v6, v0

    move-object/from16 v29, v1

    goto :goto_3

    :cond_4
    move-object/from16 v30, v0

    move/from16 v31, v5

    move-object v7, v6

    move-object v6, v3

    move-object/from16 v29, v4

    :goto_3
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move/from16 v2, v27

    move v3, v8

    move/from16 v4, v25

    move-object/from16 v5, v30

    move-object v8, v6

    move/from16 v6, v33

    .line 1555
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v0, v15, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1557
    invoke-static {v0, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v25

    .line 1559
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1560
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1562
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v3, v0, [Landroid/renderscript/Allocation;

    aput-object v29, v3, v22

    const/16 v26, 0x1

    aput-object v25, v3, v26

    .line 1575
    invoke-static/range {p7 .. p9}, Lnet/sourceforge/opencamera/HDRProcessor;->sceneIsLowLight(IJ)Z

    move-result v1

    iget-object v2, v15, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    move-object/from16 p1, v6

    iget-object v6, v15, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    const/16 v27, 0x0

    const/16 v30, 0x1

    const/16 v32, 0x0

    const/16 v34, 0x1

    if-eqz v1, :cond_5

    const/16 v35, 0x2

    goto :goto_4

    :cond_5
    const/16 v35, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v6

    move-object/from16 v36, p1

    move-object v6, v7

    move/from16 v7, v27

    move-object/from16 v26, v8

    const/16 v27, 0x1

    move/from16 v8, v30

    move-object/from16 v9, v32

    move/from16 v10, v33

    move/from16 v11, v34

    move/from16 v12, v28

    move/from16 v13, v35

    move/from16 v14, v16

    move/from16 v15, v17

    move-wide/from16 v16, p11

    .line 1576
    invoke-direct/range {v0 .. v17}, Lnet/sourceforge/opencamera/HDRProcessor;->autoAlignment([I[I[Landroid/renderscript/Allocation;IILjava/util/List;IZLnet/sourceforge/opencamera/HDRProcessor$SortCallback;ZIZIIIJ)Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;

    const/4 v1, 0x0

    :goto_5
    iget-object v2, v0, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    .line 1596
    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 1597
    aget v3, v2, v1

    mul-int v3, v3, v31

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iget-object v2, v0, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    .line 1599
    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 1600
    aget v3, v2, v1

    mul-int v3, v3, v31

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    if-eqz v36, :cond_8

    .line 1605
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    if-eqz v25, :cond_9

    .line 1610
    invoke-virtual/range {v25 .. v25}, Landroid/renderscript/Allocation;->destroy()V

    :cond_9
    const/16 v1, 0x190

    move/from16 v2, p7

    .line 1624
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/16 v3, 0x2bc

    if-lt v2, v3, :cond_b

    const/16 v1, 0x44c

    const/high16 v3, 0x44480000    # 800.0f

    if-lt v2, v1, :cond_a

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v1, 0x44480000    # 800.0f

    const/high16 v2, 0x41000000    # 8.0f

    goto :goto_7

    :cond_a
    const/high16 v1, 0x44480000    # 800.0f

    :cond_b
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_7
    const/high16 v3, 0x42c80000    # 100.0f

    .line 1637
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v1, v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    move/from16 v5, p6

    float-to-double v6, v5

    .line 1648
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v24, v24, v3

    div-float v1, v1, v24

    mul-float v2, v2, v1

    if-nez v21, :cond_d

    if-nez v23, :cond_c

    goto :goto_8

    .line 1665
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "is in floating point mode, but no bitmap_orig supplied"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_8
    if-nez v20, :cond_e

    iget-object v3, v0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1716
    invoke-static {v3}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static {v3, v4, v6, v7}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    goto :goto_9

    :cond_e
    move-object/from16 v3, v20

    :goto_9
    if-nez v20, :cond_f

    iget-object v4, v0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p2

    .line 1723
    invoke-static {v4, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v20

    move-object/from16 v4, v20

    const/16 v22, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v6, p2

    move-object/from16 v4, v20

    :goto_a
    iget-object v7, v0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    if-nez v7, :cond_10

    .line 1731
    new-instance v7, Lnet/sourceforge/opencamera/ScriptC_process_avg;

    iget-object v8, v0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {v7, v8}, Lnet/sourceforge/opencamera/ScriptC_process_avg;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v7, v0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    :cond_10
    iget-object v7, v0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    move-object/from16 v8, p3

    .line 1754
    invoke-static {v7, v8}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v7

    if-nez v19, :cond_12

    if-nez v23, :cond_11

    iget-object v9, v0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1768
    invoke-static {v9, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v9

    goto :goto_b

    .line 1764
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "is in floating point mode, but no allocation_orig supplied"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    move-object/from16 v9, v19

    :goto_b
    iget-object v10, v0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    .line 1773
    invoke-virtual {v10, v9}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_bitmap_orig(Landroid/renderscript/Allocation;)V

    iget-object v10, v0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    .line 1774
    invoke-virtual {v10, v7}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_bitmap_new(Landroid/renderscript/Allocation;)V

    iget-object v10, v0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    iget-object v11, v0, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    .line 1777
    aget v11, v11, v27

    invoke-virtual {v10, v11}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_offset_x_new(I)V

    iget-object v10, v0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    iget-object v11, v0, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    .line 1778
    aget v11, v11, v27

    invoke-virtual {v10, v11}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_offset_y_new(I)V

    iget-object v10, v0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    .line 1782
    invoke-virtual {v10, v5}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_avg_factor(F)V

    iget-object v5, v0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    .line 1783
    invoke-virtual {v5, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_wiener_C(F)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    .line 1784
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_wiener_C_cutoff(F)V

    if-eqz v23, :cond_13

    iget-object v1, v0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    .line 1797
    invoke-virtual {v1, v4, v3}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->forEach_avg_f(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    goto :goto_c

    :cond_13
    iget-object v1, v0, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgScript:Lnet/sourceforge/opencamera/ScriptC_process_avg;

    .line 1799
    invoke-virtual {v1, v4, v3}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->forEach_avg(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 1807
    :goto_c
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    if-eqz v22, :cond_14

    .line 1809
    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    :cond_14
    if-eqz v8, :cond_15

    .line 1828
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1835
    :cond_15
    new-instance v1, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;

    move-object/from16 p3, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v18

    move-object/from16 p6, v26

    move-object/from16 p7, v29

    move-object/from16 p8, p2

    move-object/from16 p9, v9

    invoke-direct/range {p3 .. p9}, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;-><init>(Landroid/renderscript/Allocation;[FLandroid/graphics/Bitmap;Landroid/renderscript/Allocation;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation;)V

    return-object v1

    :cond_16
    move-object v0, v15

    .line 1497
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "only one of bitmap_avg or allocation_out/pixels_rgbf_out should be supplied"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_d
    throw v1

    :goto_e
    goto :goto_d
.end method

.method private processHDRCore(Ljava/util/List;ZLandroid/graphics/Bitmap;ZLnet/sourceforge/opencamera/HDRProcessor$SortCallback;FIZLnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;Z",
            "Landroid/graphics/Bitmap;",
            "Z",
            "Lnet/sourceforge/opencamera/HDRProcessor$SortCallback;",
            "FIZ",
            "Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 543
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v8, 0x0

    .line 544
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 545
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 546
    new-array v7, v9, [Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;

    .line 547
    new-array v0, v9, [I

    iput-object v0, v15, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    .line 548
    new-array v0, v9, [I

    iput-object v0, v15, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    const/4 v6, 0x1

    const/4 v5, 0x3

    if-eq v9, v5, :cond_0

    const/16 v22, 0x1

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    .line 561
    :goto_0
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/HDRProcessor;->initRenderscript()V

    .line 565
    new-array v4, v9, [Landroid/renderscript/Allocation;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_1

    iget-object v1, v15, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 567
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 573
    :cond_1
    rem-int/lit8 v23, v9, 0x2

    const/4 v3, 0x2

    if-nez v23, :cond_2

    div-int/lit8 v0, v9, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v9, -0x1

    div-int/2addr v0, v3

    :goto_2
    iget-object v1, v15, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    iget-object v2, v15, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object v3, v4

    move-object/from16 v25, v4

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, p1

    move-object/from16 v26, v7

    move/from16 v7, v24

    move/from16 v8, p4

    move/from16 v27, v9

    move-object/from16 v9, p5

    move/from16 v14, v20

    move/from16 v15, v21

    move-wide/from16 v16, v18

    .line 578
    invoke-direct/range {v0 .. v17}, Lnet/sourceforge/opencamera/HDRProcessor;->autoAlignment([I[I[Landroid/renderscript/Allocation;IILjava/util/List;IZLnet/sourceforge/opencamera/HDRProcessor$SortCallback;ZIZIIIJ)Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;

    move-result-object v0

    .line 579
    iget v6, v0, Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;->median_brightness:I

    const/4 v8, 0x0

    :goto_3
    move/from16 v11, v27

    if-ge v8, v11, :cond_5

    move/from16 v7, v24

    if-eq v8, v7, :cond_3

    move-object/from16 v12, p1

    .line 589
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v13, p0

    iget-object v0, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    aget v4, v0, v8

    iget-object v0, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    aget v5, v0, v8

    move-object/from16 v0, p0

    move v1, v8

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/HDRProcessor;->createFunctionFromBitmaps(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;

    move-result-object v10

    goto :goto_4

    :cond_3
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    if-eqz v22, :cond_4

    .line 593
    invoke-static {}, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->createIdentity()Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;

    move-result-object v10

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 595
    :goto_4
    aput-object v10, v26, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v24, v7

    move/from16 v27, v11

    goto :goto_3

    :cond_5
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move/from16 v7, v24

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez v23, :cond_8

    add-int/lit8 v1, v7, -0x1

    .line 602
    aget-object v2, v26, v1

    iget v2, v2, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_A:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 603
    aget-object v1, v26, v1

    iget v1, v1, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    add-float v3, v2, v0

    div-float/2addr v1, v3

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpg-float v4, v2, v3

    if-gez v4, :cond_6

    const v2, 0x3727c5ac    # 1.0E-5f

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v11, :cond_8

    .line 616
    aget-object v4, v26, v8

    iget v4, v4, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_A:F

    .line 617
    aget-object v5, v26, v8

    iget v5, v5, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    .line 618
    aget-object v9, v26, v8

    div-float v14, v4, v2

    iput v14, v9, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_A:F

    .line 619
    aget-object v9, v26, v8

    mul-float v4, v4, v1

    div-float/2addr v4, v2

    sub-float/2addr v5, v4

    iput v5, v9, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    .line 620
    aget-object v4, v26, v8

    iget v4, v4, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_7

    .line 623
    aget-object v4, v26, v8

    iput v3, v4, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    .line 667
    aget-object v1, v26, v14

    iget v1, v1, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_A:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    aget-object v3, v26, v14

    iget v3, v3, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    add-float/2addr v1, v3

    cmpg-float v3, v1, v2

    if-gez v3, :cond_9

    const/high16 v1, 0x437f0000    # 255.0f

    :cond_9
    const/high16 v3, 0x40000000    # 2.0f

    const/16 v4, 0x77

    .line 683
    invoke-static {v6, v3, v4}, Lnet/sourceforge/opencamera/HDRProcessor;->getBrightnessTarget(IFI)I

    move-result v3

    div-float v4, v2, v1

    int-to-float v3, v3

    int-to-float v5, v6

    div-float v5, v3, v5

    div-float v6, v3, v2

    add-float/2addr v6, v5

    sub-float/2addr v6, v0

    const/4 v0, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_a

    sub-float/2addr v5, v4

    cmpl-float v4, v5, v0

    if-eqz v4, :cond_a

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    const/high16 v3, 0x42ff0000    # 127.5f

    .line 725
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 738
    :cond_a
    sget-object v3, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$TonemappingAlgorithm:[I

    invoke-virtual/range {p9 .. p9}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v15, 0x1

    if-eq v3, v15, :cond_d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    const/4 v5, 0x3

    if-eq v3, v5, :cond_b

    const/4 v1, 0x0

    :goto_6
    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    const v3, 0x3c008081

    mul-float v1, v1, v3

    goto :goto_6

    :cond_c
    const/4 v5, 0x3

    add-float v3, v1, v2

    div-float/2addr v3, v1

    goto :goto_7

    :cond_d
    const/4 v4, 0x2

    const/4 v5, 0x3

    const v3, -0x40666666    # -1.2f

    mul-float v1, v1, v3

    float-to-double v8, v1

    const-wide v16, 0x406fe00000000000L    # 255.0

    .line 749
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v8, v16, v8

    div-double v8, v16, v8

    double-to-float v3, v8

    :goto_7
    const/4 v1, 0x0

    .line 837
    :goto_8
    new-instance v6, Lnet/sourceforge/opencamera/ScriptC_process_hdr;

    iget-object v8, v13, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;-><init>(Landroid/renderscript/RenderScript;)V

    .line 840
    aget-object v8, v25, v14

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_bitmap0(Landroid/renderscript/Allocation;)V

    if-le v11, v4, :cond_e

    .line 842
    aget-object v8, v25, v4

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_bitmap2(Landroid/renderscript/Allocation;)V

    :cond_e
    iget-object v8, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    .line 846
    aget v8, v8, v14

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_x0(I)V

    iget-object v8, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    .line 847
    aget v8, v8, v14

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_y0(I)V

    if-le v11, v4, :cond_f

    iget-object v8, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    .line 850
    aget v8, v8, v4

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_x2(I)V

    iget-object v8, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    .line 851
    aget v8, v8, v4

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_y2(I)V

    .line 855
    :cond_f
    aget-object v8, v26, v14

    iget v8, v8, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_A:F

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_A0(F)V

    .line 856
    aget-object v8, v26, v14

    iget v8, v8, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_B0(F)V

    if-le v11, v4, :cond_10

    .line 859
    aget-object v8, v26, v4

    iget v8, v8, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_A:F

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_A2(F)V

    .line 860
    aget-object v8, v26, v4

    iget v8, v8, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_B2(F)V

    :cond_10
    if-eqz v22, :cond_11

    .line 865
    aget-object v8, v25, v15

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_bitmap1(Landroid/renderscript/Allocation;)V

    iget-object v8, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    .line 866
    aget v8, v8, v15

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_x1(I)V

    iget-object v8, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    .line 867
    aget v8, v8, v15

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_y1(I)V

    .line 868
    aget-object v8, v26, v15

    iget v8, v8, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_A:F

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_A1(F)V

    .line 869
    aget-object v8, v26, v15

    iget v8, v8, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_B1(F)V

    :cond_11
    const/4 v8, 0x5

    const/4 v9, 0x4

    if-le v11, v5, :cond_12

    .line 873
    aget-object v10, v25, v5

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_bitmap3(Landroid/renderscript/Allocation;)V

    iget-object v10, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    .line 874
    aget v10, v10, v5

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_x3(I)V

    iget-object v10, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    .line 875
    aget v10, v10, v5

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_y3(I)V

    .line 876
    aget-object v10, v26, v5

    iget v10, v10, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_A:F

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_A3(F)V

    .line 877
    aget-object v10, v26, v5

    iget v10, v10, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_B3(F)V

    if-le v11, v9, :cond_12

    .line 880
    aget-object v10, v25, v9

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_bitmap4(Landroid/renderscript/Allocation;)V

    iget-object v10, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    .line 881
    aget v10, v10, v9

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_x4(I)V

    iget-object v10, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    .line 882
    aget v10, v10, v9

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_y4(I)V

    .line 883
    aget-object v10, v26, v9

    iget v10, v10, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_A:F

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_A4(F)V

    .line 884
    aget-object v10, v26, v9

    iget v10, v10, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_B4(F)V

    if-le v11, v8, :cond_12

    .line 887
    aget-object v10, v25, v8

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_bitmap5(Landroid/renderscript/Allocation;)V

    iget-object v10, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    .line 888
    aget v10, v10, v8

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_x5(I)V

    iget-object v10, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    .line 889
    aget v10, v10, v8

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_y5(I)V

    .line 890
    aget-object v10, v26, v8

    iget v10, v10, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_A:F

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_A5(F)V

    .line 891
    aget-object v10, v26, v8

    iget v10, v10, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_B5(F)V

    const/4 v10, 0x6

    if-le v11, v10, :cond_12

    .line 894
    aget-object v14, v25, v10

    invoke-virtual {v6, v14}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_bitmap6(Landroid/renderscript/Allocation;)V

    iget-object v14, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_x:[I

    .line 895
    aget v14, v14, v10

    invoke-virtual {v6, v14}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_x6(I)V

    iget-object v14, v13, Lnet/sourceforge/opencamera/HDRProcessor;->offsets_y:[I

    .line 896
    aget v14, v14, v10

    invoke-virtual {v6, v14}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_offset_y6(I)V

    .line 897
    aget-object v14, v26, v10

    iget v14, v14, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_A:F

    invoke-virtual {v6, v14}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_A6(F)V

    .line 898
    aget-object v10, v26, v10

    iget v10, v10, Lnet/sourceforge/opencamera/HDRProcessor$ResponseFunction;->parameter_B:F

    invoke-virtual {v6, v10}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_parameter_B6(F)V

    .line 907
    :cond_12
    sget-object v10, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$TonemappingAlgorithm:[I

    invoke-virtual/range {p9 .. p9}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->ordinal()I

    move-result v14

    aget v10, v10, v14

    if-eq v10, v15, :cond_17

    if-eq v10, v4, :cond_16

    if-eq v10, v5, :cond_15

    if-eq v10, v9, :cond_14

    if-eq v10, v8, :cond_13

    goto :goto_9

    .line 931
    :cond_13
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->get_tonemap_algorithm_aces_c()I

    move-result v8

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_tonemap_algorithm(I)V

    goto :goto_9

    .line 911
    :cond_14
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->get_tonemap_algorithm_clamp_c()I

    move-result v8

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_tonemap_algorithm(I)V

    goto :goto_9

    .line 926
    :cond_15
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->get_tonemap_algorithm_fu2_c()I

    move-result v8

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_tonemap_algorithm(I)V

    goto :goto_9

    .line 921
    :cond_16
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->get_tonemap_algorithm_reinhard_c()I

    move-result v8

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_tonemap_algorithm(I)V

    goto :goto_9

    .line 916
    :cond_17
    invoke-virtual {v6}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->get_tonemap_algorithm_exponential_c()I

    move-result v8

    invoke-virtual {v6, v8}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_tonemap_algorithm(I)V

    .line 935
    :goto_9
    invoke-virtual {v6, v2}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_tonemap_scale(F)V

    .line 938
    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$TonemappingAlgorithm:[I

    invoke-virtual/range {p9 .. p9}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->ordinal()I

    move-result v8

    aget v2, v2, v8

    if-eq v2, v15, :cond_19

    if-eq v2, v4, :cond_19

    if-eq v2, v5, :cond_18

    goto :goto_a

    .line 945
    :cond_18
    invoke-virtual {v6, v1}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_W(F)V

    goto :goto_a

    .line 941
    :cond_19
    invoke-virtual {v6, v3}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_linear_scale(F)V

    :goto_a
    if-eqz p2, :cond_1a

    .line 957
    aget-object v1, v25, v7

    .line 959
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v14, v1

    move-object v10, v2

    const/16 v16, 0x0

    goto :goto_b

    :cond_1a
    iget-object v1, v13, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p3

    .line 962
    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    move-object v14, v1

    move-object v10, v2

    const/16 v16, 0x1

    :goto_b
    if-eqz v22, :cond_1b

    .line 968
    invoke-virtual {v6, v11}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->set_n_bitmaps_g(I)V

    .line 969
    aget-object v1, v25, v7

    invoke-virtual {v6, v1, v14}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->forEach_hdr_n(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    goto :goto_c

    .line 972
    :cond_1b
    aget-object v1, v25, v7

    invoke-virtual {v6, v1, v14}, Lnet/sourceforge/opencamera/ScriptC_process_hdr;->forEach_hdr(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    :goto_c
    if-eqz p2, :cond_1d

    const/4 v8, 0x0

    .line 983
    :goto_d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_1d

    if-eq v8, v7, :cond_1c

    .line 985
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 986
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_1d
    cmpl-float v0, p6, v0

    if-eqz v0, :cond_1e

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v14

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, v18

    .line 992
    invoke-virtual/range {v0 .. v9}, Lnet/sourceforge/opencamera/HDRProcessor;->adjustHistogramRS(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;IIFIZJ)V

    .line 997
    :cond_1e
    invoke-virtual {v14, v10}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    if-eqz v16, :cond_1f

    .line 1002
    invoke-virtual {v14}, Landroid/renderscript/Allocation;->destroy()V

    :cond_1f
    const/4 v0, 0x0

    if-eqz p2, :cond_20

    .line 1008
    invoke-interface {v12, v0, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    .line 1009
    :goto_e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_20

    const/4 v1, 0x0

    .line 1010
    invoke-interface {v12, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_20
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v11, :cond_21

    .line 1016
    aget-object v0, v25, v8

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 1017
    aput-object v1, v25, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 1020
    :cond_21
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/HDRProcessor;->freeScripts()V

    return-void
.end method

.method private processSingleImage(Ljava/util/List;ZLandroid/graphics/Bitmap;FIZLnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;Z",
            "Landroid/graphics/Bitmap;",
            "FIZ",
            "Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 1030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v1, 0x0

    .line 1032
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1033
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1035
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    move-object v2, v12

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    .line 1041
    :goto_0
    sget-object v0, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;->DROALGORITHM_GAINGAMMA:Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    move-object/from16 v1, p7

    if-ne v1, v0, :cond_2

    .line 1043
    sget-object v0, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->HISTOGRAM_TYPE_VALUE:Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;

    invoke-virtual {v10, v12, v0}, Lnet/sourceforge/opencamera/HDRProcessor;->computeHistogram(Landroid/graphics/Bitmap;Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;)[I

    move-result-object v0

    .line 1044
    invoke-virtual {v10, v0}, Lnet/sourceforge/opencamera/HDRProcessor;->getHistogramInfo([I)Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;

    move-result-object v0

    .line 1045
    iget v1, v0, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    .line 1046
    iget v0, v0, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->max_brightness:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move/from16 v17, v1

    move/from16 v18, v0

    .line 1053
    invoke-static/range {v13 .. v18}, Lnet/sourceforge/opencamera/HDRProcessor;->computeBrightenFactors(ZIJII)Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;

    move-result-object v1

    .line 1054
    iget v14, v1, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gain:F

    .line 1055
    iget v15, v1, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gamma:F

    .line 1056
    iget v5, v1, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->low_x:F

    .line 1057
    iget v1, v1, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->mid_x:F

    float-to-double v6, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 1065
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v18, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v11, v6, v18

    if-gtz v11, :cond_1

    const/16 v6, 0xff

    if-ne v0, v6, :cond_1

    float-to-double v6, v15

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v11, v6, v18

    if-lez v11, :cond_2

    .line 1071
    :cond_1
    new-instance v11, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;

    int-to-float v0, v0

    move-object v13, v11

    move/from16 v16, v5

    move/from16 v17, v1

    move/from16 v18, v0

    invoke-direct/range {v13 .. v18}, Lnet/sourceforge/opencamera/JavaImageFunctions$DROBrightenApplyFunction;-><init>(FFFFF)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v2

    move/from16 v16, v3

    move/from16 v17, v4

    .line 1072
    invoke-static/range {v11 .. v17}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v12

    :goto_1
    move-object/from16 v0, p0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 1081
    invoke-virtual/range {v0 .. v9}, Lnet/sourceforge/opencamera/HDRProcessor;->adjustHistogram(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFIZJ)V

    return-void
.end method

.method private processSingleImageRS(Ljava/util/List;ZLandroid/graphics/Bitmap;FIZLnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;Z",
            "Landroid/graphics/Bitmap;",
            "FIZ",
            "Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 1092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v6, 0x0

    .line 1094
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 1095
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 1097
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/HDRProcessor;->initRenderscript()V

    iget-object v1, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1102
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v12

    if-eqz p2, :cond_0

    .line 1108
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v13, v0

    move-object v14, v12

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    move-object/from16 v1, p3

    .line 1112
    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    const/4 v2, 0x1

    move-object v14, v0

    move-object v13, v1

    const/4 v15, 0x1

    .line 1115
    :goto_0
    sget-object v0, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;->DROALGORITHM_GAINGAMMA:Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    move-object/from16 v1, p7

    if-ne v1, v0, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v7

    move v3, v11

    .line 1117
    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/HDRProcessor;->computeHistogramRS(Landroid/renderscript/Allocation;IIZZ)[I

    move-result-object v0

    .line 1118
    invoke-virtual {v10, v0}, Lnet/sourceforge/opencamera/HDRProcessor;->getHistogramInfo([I)Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;

    move-result-object v0

    .line 1119
    iget v1, v0, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->median_brightness:I

    .line 1120
    iget v0, v0, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;->max_brightness:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move/from16 v20, v1

    move/from16 v21, v0

    .line 1127
    invoke-static/range {v16 .. v21}, Lnet/sourceforge/opencamera/HDRProcessor;->computeBrightenFactors(ZIJII)Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;

    move-result-object v1

    .line 1128
    iget v2, v1, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gain:F

    .line 1129
    iget v3, v1, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gamma:F

    .line 1130
    iget v4, v1, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->low_x:F

    .line 1131
    iget v1, v1, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->mid_x:F

    move/from16 v22, v7

    float-to-double v6, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 1139
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v18, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v20, v6, v18

    if-gtz v20, :cond_1

    const/16 v6, 0xff

    if-ne v0, v6, :cond_1

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v16, v6, v18

    if-lez v16, :cond_4

    .line 1150
    :cond_1
    new-instance v6, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;

    iget-object v7, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {v6, v7}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;-><init>(Landroid/renderscript/RenderScript;)V

    int-to-float v0, v0

    move-object/from16 v16, v6

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v1

    move/from16 v21, v0

    .line 1151
    invoke-virtual/range {v16 .. v21}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;->invoke_setBrightenParameters(FFFFF)V

    .line 1153
    invoke-virtual {v6, v12, v14}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;->forEach_dro_brighten(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    if-eqz v15, :cond_2

    .line 1158
    invoke-virtual {v12}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    move v6, v15

    :goto_1
    move v15, v6

    move-object v12, v14

    goto :goto_2

    :cond_3
    move/from16 v22, v7

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v14

    move/from16 v3, v22

    move v4, v11

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 1167
    invoke-virtual/range {v0 .. v9}, Lnet/sourceforge/opencamera/HDRProcessor;->adjustHistogramRS(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;IIFIZJ)V

    .line 1169
    invoke-virtual {v14, v13}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    if-eqz v15, :cond_5

    .line 1174
    invoke-virtual {v12}, Landroid/renderscript/Allocation;->destroy()V

    .line 1175
    :cond_5
    invoke-virtual {v14}, Landroid/renderscript/Allocation;->destroy()V

    .line 1176
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/HDRProcessor;->freeScripts()V

    return-void
.end method

.method public static sceneIsLowLight(IJ)Z
    .locals 4

    const/16 v0, 0x44c

    if-lt p0, v0, :cond_0

    int-to-long v0, p0

    mul-long v0, v0, p1

    const-wide v2, 0x1010b87200L

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    :cond_0
    const-wide/32 v0, 0xbeb9af0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method adjustHistogram(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFIZJ)V
    .locals 24

    move/from16 v2, p6

    mul-int v0, v2, v2

    const/16 v1, 0x100

    mul-int/lit16 v0, v0, 0x100

    .line 2831
    new-array v5, v0, [I

    new-array v0, v1, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    int-to-double v6, v4

    int-to-double v12, v2

    .line 2834
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v6, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 2835
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v12

    move/from16 v11, p3

    move/from16 v16, v4

    int-to-double v3, v11

    .line 2836
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v3

    double-to-int v10, v8

    .line 2837
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    double-to-int v3, v6

    if-ne v3, v10, :cond_1

    :cond_0
    move/from16 v14, p4

    const/16 v6, 0x100

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    int-to-double v6, v4

    .line 2841
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v6, v12

    .line 2842
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v12

    move/from16 v14, p4

    int-to-double v1, v14

    .line 2843
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v1

    double-to-int v8, v8

    .line 2844
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v1

    double-to-int v1, v6

    if-ne v1, v8, :cond_2

    move v15, v10

    const/16 v6, 0x100

    const/4 v7, 0x0

    goto :goto_3

    .line 2855
    :cond_2
    new-instance v2, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;

    sget-object v6, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_VALUE:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    invoke-direct {v2, v6}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;-><init>(Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;)V

    const/16 v19, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, p1

    move/from16 v20, v10

    move/from16 v21, v8

    move/from16 v22, v3

    move/from16 v23, v1

    .line 2856
    invoke-static/range {v17 .. v23}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    .line 2857
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;->getHistogram()[I

    move-result-object v2

    sub-int v9, v3, v10

    sub-int/2addr v1, v8

    move-object/from16 v6, p0

    move-object v7, v2

    move-object v8, v0

    move v15, v10

    move v10, v1

    move/from16 v11, p7

    .line 2859
    invoke-virtual/range {v6 .. v11}, Lnet/sourceforge/opencamera/HDRProcessor;->clipHistogram([I[IIIZ)V

    mul-int v1, v16, p6

    add-int/2addr v1, v4

    const/16 v6, 0x100

    mul-int/lit16 v1, v1, 0x100

    const/4 v7, 0x0

    .line 2863
    aget v8, v2, v7

    aput v8, v5, v1

    const/4 v8, 0x1

    :goto_2
    if-ge v8, v6, :cond_3

    add-int v9, v1, v8

    add-int/lit8 v10, v9, -0x1

    .line 2865
    aget v10, v5, v10

    aget v11, v2, v8

    add-int/2addr v10, v11

    aput v10, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v11, p3

    move/from16 v2, p6

    move v10, v15

    const/16 v1, 0x100

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :goto_4
    add-int/lit8 v4, v16, 0x1

    move/from16 v2, p6

    const/16 v1, 0x100

    goto/16 :goto_0

    :cond_4
    move/from16 v14, p4

    .line 2878
    new-instance v16, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;

    move-object/from16 v0, v16

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/opencamera/JavaImageFunctions$AdjustHistogramApplyFunction;-><init>(FIII[I)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v21, p3

    move/from16 v22, p4

    .line 2879
    invoke-static/range {v16 .. v22}, Lnet/sourceforge/opencamera/JavaImageProcessing;->applyFunction(Lnet/sourceforge/opencamera/JavaImageProcessing$ApplyFunctionInterface;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method adjustHistogramRS(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;IIFIZJ)V
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    iget-object v0, v6, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 2909
    invoke-static {v0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const/16 v11, 0x100

    invoke-static {v0, v1, v11}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v12

    .line 2912
    new-instance v13, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;

    iget-object v0, v6, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {v13, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;-><init>(Landroid/renderscript/RenderScript;)V

    .line 2915
    invoke-virtual {v13, v12}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->bind_histogram(Landroid/renderscript/Allocation;)V

    mul-int v0, v10, v10

    mul-int/lit16 v14, v0, 0x100

    .line 2920
    new-array v15, v14, [I

    new-array v5, v11, [I

    const/16 v16, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v10, :cond_4

    int-to-double v0, v4

    int-to-double v2, v10

    .line 2923
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v17, v0, v2

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 2924
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double v0, v0, v19

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    move-object/from16 p9, v12

    int-to-double v11, v8

    .line 2925
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v21, v14

    move-object/from16 v22, v15

    mul-double v14, v17, v11

    double-to-int v14, v14

    .line 2926
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v11

    double-to-int v11, v0

    if-ne v11, v14, :cond_1

    :cond_0
    move-object/from16 v15, p9

    move/from16 v23, v4

    move-object v8, v5

    const/16 v0, 0x100

    goto/16 :goto_4

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_0

    int-to-double v0, v12

    .line 2930
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v17, v0, v2

    .line 2931
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double v0, v0, v19

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    move-wide/from16 v23, v2

    int-to-double v2, v9

    .line 2932
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v17, v2

    double-to-int v8, v8

    .line 2933
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    if-ne v0, v8, :cond_2

    move-object/from16 v15, p9

    move-object v8, v5

    move-wide/from16 v17, v23

    const/16 v0, 0x100

    move/from16 v23, v4

    goto :goto_3

    .line 2941
    :cond_2
    new-instance v1, Landroid/renderscript/Script$LaunchOptions;

    invoke-direct {v1}, Landroid/renderscript/Script$LaunchOptions;-><init>()V

    .line 2942
    invoke-static {v1, v14, v11}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;

    .line 2943
    invoke-static {v1, v8, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/renderscript/Script$LaunchOptions;II)Landroid/renderscript/Script$LaunchOptions;

    .line 2945
    invoke-virtual {v13}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->invoke_init_histogram()V

    .line 2946
    invoke-virtual {v13, v7, v1}, Lnet/sourceforge/opencamera/ScriptC_histogram_compute;->forEach_histogram_compute_by_value(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    const/16 v1, 0x100

    new-array v9, v1, [I

    move-object/from16 v15, p9

    .line 2949
    invoke-virtual {v15, v9}, Landroid/renderscript/Allocation;->copyTo([I)V

    sub-int v3, v11, v14

    sub-int v8, v0, v8

    move-object/from16 v0, p0

    move-object v1, v9

    move-wide/from16 v17, v23

    move-object v2, v5

    move/from16 v23, v4

    move v4, v8

    move-object v8, v5

    move/from16 v5, p7

    .line 2980
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/HDRProcessor;->clipHistogram([I[IIIZ)V

    mul-int v4, v23, v10

    add-int/2addr v4, v12

    const/16 v0, 0x100

    mul-int/lit16 v4, v4, 0x100

    aget v1, v9, v16

    .line 2984
    aput v1, v22, v4

    const/4 v1, 0x1

    :goto_2
    if-ge v1, v0, :cond_3

    add-int v2, v4, v1

    add-int/lit8 v3, v2, -0x1

    .line 2986
    aget v3, v22, v3

    aget v5, v9, v1

    add-int/2addr v3, v5

    aput v3, v22, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, p4

    move-object v5, v8

    move-object/from16 p9, v15

    move-wide/from16 v2, v17

    move/from16 v4, v23

    move/from16 v8, p3

    goto/16 :goto_1

    :goto_4
    add-int/lit8 v4, v23, 0x1

    move/from16 v9, p4

    move-object v5, v8

    move-object v12, v15

    move/from16 v14, v21

    move-object/from16 v15, v22

    const/16 v11, 0x100

    move/from16 v8, p3

    goto/16 :goto_0

    :cond_4
    move/from16 v21, v14

    move-object/from16 v22, v15

    move-object v15, v12

    iget-object v0, v6, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 2999
    invoke-static {v0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v0

    move-object/from16 v1, v22

    .line 3000
    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom([I)V

    .line 3004
    new-instance v1, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;

    iget-object v2, v6, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v2}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;-><init>(Landroid/renderscript/RenderScript;)V

    .line 3005
    invoke-virtual {v1, v0}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->set_c_histogram(Landroid/renderscript/Allocation;)V

    move/from16 v2, p5

    .line 3006
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->set_hdr_alpha(F)V

    .line 3007
    invoke-virtual {v1, v10}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->set_n_tiles(I)V

    move/from16 v2, p3

    .line 3008
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->set_width(I)V

    move/from16 v2, p4

    .line 3009
    invoke-virtual {v1, v2}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->set_height(I)V

    move-object/from16 v2, p2

    .line 3013
    invoke-virtual {v1, v7, v2}, Lnet/sourceforge/opencamera/ScriptC_histogram_adjust;->forEach_histogram_adjust(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3017
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    if-eqz v15, :cond_5

    .line 3022
    invoke-virtual {v15}, Landroid/renderscript/Allocation;->destroy()V

    :cond_5
    return-void
.end method

.method autoAlignment([I[IIILjava/util/List;IZI)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[III",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;IZI)V"
        }
    .end annotation

    .line 1961
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/HDRProcessor;->initRenderscript()V

    .line 1964
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    new-array v15, v0, [Landroid/renderscript/Allocation;

    const/16 v19, 0x0

    const/4 v1, 0x0

    .line 1965
    :goto_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    move-object/from16 v14, p0

    iget-object v2, v14, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p5

    .line 1966
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    aput-object v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v14, p0

    move-object/from16 v7, p5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    move/from16 v11, p7

    move/from16 v14, p8

    move-object/from16 v20, v15

    move/from16 v15, p3

    move/from16 v16, p4

    .line 1970
    invoke-direct/range {v1 .. v18}, Lnet/sourceforge/opencamera/HDRProcessor;->autoAlignment([I[I[Landroid/renderscript/Allocation;IILjava/util/List;IZLnet/sourceforge/opencamera/HDRProcessor$SortCallback;ZIZIIIJ)Lnet/sourceforge/opencamera/HDRProcessor$BrightnessDetails;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1973
    aget-object v2, v20, v1

    if-eqz v2, :cond_1

    .line 1974
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v2, 0x0

    .line 1975
    aput-object v2, v20, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1978
    :cond_2
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/HDRProcessor;->freeScripts()V

    return-void
.end method

.method public avgBrighten(Lnet/sourceforge/opencamera/HDRProcessor$AvgData;IIIJ)Landroid/graphics/Bitmap;
    .locals 7

    .line 3707
    iget-object v1, p1, Lnet/sourceforge/opencamera/HDRProcessor$AvgData;->allocation_out:Landroid/renderscript/Allocation;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lnet/sourceforge/opencamera/HDRProcessor;->avgBrightenRS(Landroid/renderscript/Allocation;IIIJ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method brightenImage(Landroid/graphics/Bitmap;III)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1189
    invoke-static/range {v0 .. v7}, Lnet/sourceforge/opencamera/HDRProcessor;->computeBrightenFactors(ZIJIIIZ)Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;

    move-result-object p2

    .line 1190
    iget v1, p2, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gain:F

    .line 1191
    iget v2, p2, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->gamma:F

    .line 1192
    iget v3, p2, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->low_x:F

    .line 1193
    iget v4, p2, Lnet/sourceforge/opencamera/HDRProcessor$BrightenFactors;->mid_x:F

    float-to-double v5, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1201
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v9, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double p2, v5, v9

    if-gtz p2, :cond_0

    const/16 p2, 0xff

    if-ne p3, p2, :cond_0

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double p2, v5, v9

    if-lez p2, :cond_1

    .line 1211
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/HDRProcessor;->initRenderscript()V

    iget-object p2, p0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1213
    invoke-static {p2, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p2

    .line 1214
    new-instance p4, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;

    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {p4, v0}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;-><init>(Landroid/renderscript/RenderScript;)V

    int-to-float v5, p3

    move-object v0, p4

    .line 1215
    invoke-virtual/range {v0 .. v5}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;->invoke_setBrightenParameters(FFFFF)V

    .line 1217
    invoke-virtual {p4, p2, p2}, Lnet/sourceforge/opencamera/ScriptC_avg_brighten;->forEach_dro_brighten(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 1219
    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 1220
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->destroy()V

    .line 1222
    invoke-direct {p0}, Lnet/sourceforge/opencamera/HDRProcessor;->freeScripts()V

    :cond_1
    return-void
.end method

.method clipHistogram([I[IIIZ)V
    .locals 8

    mul-int p3, p3, p4

    mul-int/lit8 p4, p3, 0x5

    const/16 v0, 0x100

    .line 2697
    div-int/2addr p4, v0

    const/4 v1, 0x0

    move v2, p4

    const/4 v3, 0x0

    :goto_0
    sub-int v4, v2, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    add-int v4, v2, v3

    .line 2706
    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    .line 2709
    aget v7, p1, v5

    if-le v7, v4, :cond_0

    sub-int/2addr v7, p4

    add-int/2addr v6, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sub-int v5, p4, v4

    mul-int/lit16 v5, v5, 0x100

    if-le v6, v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    add-int/2addr v2, v3

    .line 2718
    div-int/lit8 v2, v2, 0x2

    const/4 p4, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge p4, v0, :cond_5

    .line 2726
    aget v4, p1, p4

    if-le v4, v2, :cond_4

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 2731
    aput v2, p1, p4

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 2734
    :cond_5
    div-int/2addr v3, v0

    const/4 p4, 0x0

    :goto_3
    if-ge p4, v0, :cond_6

    .line 2740
    aget v2, p1, p4

    add-int/2addr v2, v3

    aput v2, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_6
    if-eqz p5, :cond_b

    .line 2764
    aget p4, p1, v1

    aput p4, p2, v1

    :goto_4
    if-ge v5, v0, :cond_7

    add-int/lit8 p4, v5, -0x1

    .line 2766
    aget p4, p2, p4

    aget p5, p1, v5

    add-int/2addr p4, p5

    aput p4, p2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2770
    :cond_7
    div-int/2addr p3, v0

    :goto_5
    const/16 p4, 0x80

    if-ge v1, p4, :cond_b

    add-int/lit8 p4, v1, 0x1

    mul-int p5, p3, p4

    .line 2778
    aget v2, p2, v1

    if-lt v2, p5, :cond_8

    goto :goto_7

    :cond_8
    int-to-float p5, v1

    const/high16 v2, 0x43000000    # 128.0f

    div-float/2addr p5, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p5

    int-to-float p5, p3

    mul-float v2, v2, p5

    float-to-int p5, v2

    .line 2790
    aget v2, p1, v1

    if-ge v2, p5, :cond_a

    move v2, p4

    :goto_6
    if-ge v2, v0, :cond_a

    .line 2792
    aget v3, p1, v1

    if-ge v3, p5, :cond_a

    .line 2793
    aget v4, p1, v2

    if-le v4, p3, :cond_9

    sub-int/2addr v4, p3

    sub-int v3, p5, v3

    .line 2795
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2796
    aget v4, p1, v1

    add-int/2addr v4, v3

    aput v4, p1, v1

    .line 2797
    aget v4, p1, v2

    sub-int/2addr v4, v3

    aput v4, p1, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    move v1, p4

    goto :goto_5

    :cond_b
    return-void
.end method

.method public computeHistogram(Landroid/graphics/Bitmap;Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;)[I
    .locals 7

    .line 3100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3138
    invoke-direct {p0}, Lnet/sourceforge/opencamera/HDRProcessor;->initRenderscript()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 3139
    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 3143
    sget-object v1, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$HistogramType:[I

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 3155
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown histogram type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p2, 0x0

    const/4 v5, 0x0

    .line 3157
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lnet/sourceforge/opencamera/HDRProcessor;->computeHistogramRS(Landroid/renderscript/Allocation;IIZZ)[I

    move-result-object p1

    .line 3158
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 3159
    invoke-direct {p0}, Lnet/sourceforge/opencamera/HDRProcessor;->freeScripts()V

    return-object p1

    .line 3147
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "histogram type not supported by this function: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAvgSampleSize()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->cached_avg_sample_size:I

    return v0
.end method

.method public getAvgSampleSize(IJ)I
    .locals 0

    .line 1266
    invoke-static {p1, p2, p3}, Lnet/sourceforge/opencamera/HDRProcessor;->sceneIsLowLight(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lnet/sourceforge/opencamera/HDRProcessor;->cached_avg_sample_size:I

    return p1
.end method

.method getHistogramInfo([I)Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;
    .locals 12

    .line 3239
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p1, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3241
    :cond_0
    div-int/lit8 v0, v3, 0x2

    const/4 v2, -0x1

    const-wide/16 v4, 0x0

    move-wide v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 3246
    :goto_1
    array-length v9, p1

    if-ge v1, v9, :cond_3

    .line 3247
    aget v9, p1, v1

    add-int/2addr v4, v9

    mul-int v10, v9, v1

    int-to-double v10, v10

    .line 3248
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v10

    if-lt v4, v0, :cond_1

    if-ne v8, v2, :cond_1

    move v8, v1

    :cond_1
    if-lez v9, :cond_2

    move v5, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    int-to-double v0, v4

    .line 3256
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v0

    const-wide v0, 0x3fb999999999999aL    # 0.1

    add-double/2addr v6, v0

    double-to-int p1, v6

    .line 3258
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;

    invoke-direct {v0, v3, p1, v8, v5}, Lnet/sourceforge/opencamera/HDRProcessor$HistogramInfo;-><init>(IIII)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lnet/sourceforge/opencamera/HDRProcessor;->freeScripts()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 110
    :try_start_0
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_0
    .catch Landroid/renderscript/RSInvalidStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Landroid/renderscript/RSInvalidStateException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    :cond_0
    return-void
.end method

.method public processAvg(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FIJF)Lnet/sourceforge/opencamera/HDRProcessor$AvgData;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/HDRProcessorException;
        }
    .end annotation

    .line 1343
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1344
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1353
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1354
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1357
    invoke-direct {p0}, Lnet/sourceforge/opencamera/HDRProcessor;->initRenderscript()V

    const/4 v3, 0x0

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move/from16 v12, p7

    .line 1395
    invoke-direct/range {v2 .. v14}, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgCore(Lnet/sourceforge/opencamera/HDRProcessor$AvgData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFIJFJ)Lnet/sourceforge/opencamera/HDRProcessor$AvgData;

    move-result-object v0

    return-object v0

    .line 1348
    :cond_0
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessorException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sourceforge/opencamera/HDRProcessorException;-><init>(I)V

    throw v0
.end method

.method public processAvgMulti(Ljava/util/List;FIZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;FIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/HDRProcessorException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1848
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v12, 0x0

    if-ne v0, v1, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1855
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1856
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1863
    :cond_0
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessorException;

    invoke-direct {v0, v1}, Lnet/sourceforge/opencamera/HDRProcessorException;-><init>(I)V

    throw v0

    .line 1867
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1869
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1870
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1872
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/HDRProcessor;->initRenderscript()V

    iget-object v0, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1876
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v13

    iget-object v0, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    .line 1877
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    iget-object v2, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    const/4 v5, 0x2

    .line 1878
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static {v2, v5}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    iget-object v5, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    const/4 v6, 0x3

    .line 1879
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-static {v5, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    iget-object v6, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    const/4 v7, 0x4

    .line 1880
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-static {v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v6

    iget-object v7, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    const/4 v14, 0x5

    .line 1881
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    invoke-static {v7, v14}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v7

    iget-object v14, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    const/4 v15, 0x6

    .line 1882
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap;

    invoke-static {v14, v15}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v14

    iget-object v15, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    const/4 v1, 0x7

    .line 1883
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v15, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 1910
    new-instance v15, Lnet/sourceforge/opencamera/ScriptC_process_avg;

    iget-object v12, v10, Lnet/sourceforge/opencamera/HDRProcessor;->rs:Landroid/renderscript/RenderScript;

    invoke-direct {v15, v12}, Lnet/sourceforge/opencamera/ScriptC_process_avg;-><init>(Landroid/renderscript/RenderScript;)V

    .line 1913
    invoke-virtual {v15, v0}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_bitmap1(Landroid/renderscript/Allocation;)V

    .line 1914
    invoke-virtual {v15, v2}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_bitmap2(Landroid/renderscript/Allocation;)V

    .line 1915
    invoke-virtual {v15, v5}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_bitmap3(Landroid/renderscript/Allocation;)V

    .line 1916
    invoke-virtual {v15, v6}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_bitmap4(Landroid/renderscript/Allocation;)V

    .line 1917
    invoke-virtual {v15, v7}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_bitmap5(Landroid/renderscript/Allocation;)V

    .line 1918
    invoke-virtual {v15, v14}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_bitmap6(Landroid/renderscript/Allocation;)V

    .line 1919
    invoke-virtual {v15, v1}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->set_bitmap7(Landroid/renderscript/Allocation;)V

    .line 1933
    invoke-virtual {v15, v13, v13}, Lnet/sourceforge/opencamera/ScriptC_process_avg;->forEach_avg_multi(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v1, 0x1

    .line 1940
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1941
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v13

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 1946
    invoke-virtual/range {v0 .. v9}, Lnet/sourceforge/opencamera/HDRProcessor;->adjustHistogramRS(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;IIFIZJ)V

    :cond_3
    const/4 v0, 0x0

    .line 1951
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v13, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 1852
    new-instance v1, Lnet/sourceforge/opencamera/HDRProcessorException;

    invoke-direct {v1, v0}, Lnet/sourceforge/opencamera/HDRProcessorException;-><init>(I)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public processHDR(Ljava/util/List;ZLandroid/graphics/Bitmap;ZLnet/sourceforge/opencamera/HDRProcessor$SortCallback;FIZLnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;Z",
            "Landroid/graphics/Bitmap;",
            "Z",
            "Lnet/sourceforge/opencamera/HDRProcessor$SortCallback;",
            "FIZ",
            "Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;",
            "Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/HDRProcessorException;
        }
    .end annotation

    move-object v5, p5

    if-nez p4, :cond_0

    if-nez p2, :cond_0

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 365
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_7

    const/4 v4, 0x7

    if-gt v0, v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v0, :cond_2

    .line 373
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 374
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v6, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 381
    :cond_1
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessorException;

    invoke-direct {v0, v3}, Lnet/sourceforge/opencamera/HDRProcessorException;-><init>(I)V

    throw v0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 385
    sget-object v0, Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;->HDRALGORITHM_SINGLE_IMAGE:Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;

    goto :goto_2

    :cond_3
    sget-object v0, Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;->HDRALGORITHM_STANDARD:Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;

    .line 387
    :goto_2
    sget-object v4, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$HDRAlgorithm:[I

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 402
    invoke-direct/range {v0 .. v9}, Lnet/sourceforge/opencamera/HDRProcessor;->processHDRCore(Ljava/util/List;ZLandroid/graphics/Bitmap;ZLnet/sourceforge/opencamera/HDRProcessor$SortCallback;FIZLnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;)V

    goto :goto_3

    .line 408
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    if-nez p4, :cond_6

    if-eqz v5, :cond_6

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-interface {p5, v0}, Lnet/sourceforge/opencamera/HDRProcessor$SortCallback;->sortOrder(Ljava/util/List;)V

    :cond_6
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p10

    .line 398
    invoke-direct/range {v0 .. v7}, Lnet/sourceforge/opencamera/HDRProcessor;->processSingleImageRS(Ljava/util/List;ZLandroid/graphics/Bitmap;FIZLnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;)V

    :goto_3
    return-void

    .line 370
    :cond_7
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessorException;

    invoke-direct {v0, v2}, Lnet/sourceforge/opencamera/HDRProcessorException;-><init>(I)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public updateAvg(Lnet/sourceforge/opencamera/HDRProcessor$AvgData;IILandroid/graphics/Bitmap;FIJF)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/opencamera/HDRProcessorException;
        }
    .end annotation

    .line 1421
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    move/from16 v5, p2

    if-ne v5, v0, :cond_0

    .line 1422
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    move/from16 v6, p3

    if-ne v6, v0, :cond_0

    .line 1429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p4

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    .line 1436
    invoke-direct/range {v1 .. v13}, Lnet/sourceforge/opencamera/HDRProcessor;->processAvgCore(Lnet/sourceforge/opencamera/HDRProcessor$AvgData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFIJFJ)Lnet/sourceforge/opencamera/HDRProcessor$AvgData;

    return-void

    .line 1426
    :cond_0
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessorException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sourceforge/opencamera/HDRProcessorException;-><init>(I)V

    throw v0
.end method
