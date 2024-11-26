.class synthetic Lnet/sourceforge/opencamera/HDRProcessor$2;
.super Ljava/lang/Object;
.source "HDRProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/HDRProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$sourceforge$opencamera$HDRProcessor$HDRAlgorithm:[I

.field static final synthetic $SwitchMap$net$sourceforge$opencamera$HDRProcessor$HistogramType:[I

.field static final synthetic $SwitchMap$net$sourceforge$opencamera$HDRProcessor$TonemappingAlgorithm:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 3143
    invoke-static {}, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->values()[Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$HistogramType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->HISTOGRAM_TYPE_RGB:Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$HistogramType:[I

    sget-object v3, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->HISTOGRAM_TYPE_LUMINANCE:Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$HistogramType:[I

    sget-object v4, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->HISTOGRAM_TYPE_LIGHTNESS:Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$HistogramType:[I

    sget-object v5, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->HISTOGRAM_TYPE_VALUE:Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$HistogramType:[I

    sget-object v6, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->HISTOGRAM_TYPE_INTENSITY:Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/HDRProcessor$HistogramType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 738
    :catch_4
    invoke-static {}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->values()[Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$TonemappingAlgorithm:[I

    :try_start_5
    sget-object v6, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_EXPONENTIAL:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$TonemappingAlgorithm:[I

    sget-object v6, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_REINHARD:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$TonemappingAlgorithm:[I

    sget-object v6, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_FU2:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    invoke-virtual {v6}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$TonemappingAlgorithm:[I

    sget-object v5, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_CLAMP:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    invoke-virtual {v5}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->ordinal()I

    move-result v5

    aput v3, v2, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$TonemappingAlgorithm:[I

    sget-object v3, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_ACES:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->ordinal()I

    move-result v3

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 387
    :catch_9
    invoke-static {}, Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;->values()[Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$HDRAlgorithm:[I

    :try_start_a
    sget-object v3, Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;->HDRALGORITHM_SINGLE_IMAGE:Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lnet/sourceforge/opencamera/HDRProcessor$2;->$SwitchMap$net$sourceforge$opencamera$HDRProcessor$HDRAlgorithm:[I

    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;->HDRALGORITHM_STANDARD:Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/HDRProcessor$HDRAlgorithm;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
