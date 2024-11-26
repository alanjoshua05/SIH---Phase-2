.class public Lnet/sourceforge/opencamera/ui/ManualSeekbars;
.super Ljava/lang/Object;
.source "ManualSeekbars.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ManualSeekbars"

.field private static final manual_n:I = 0x3e8


# instance fields
.field private seekbar_values_iso:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private seekbar_values_shutter_speed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private seekbar_values_white_balance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static seekbarScaling(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 20
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    const-wide v0, 0x4058c00000000000L    # 99.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static seekbarScalingInverse(D)D
    .locals 2

    const-wide v0, 0x4058c00000000000L    # 99.0

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private setProgressBarToClosest(Landroid/widget/SeekBar;Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 86
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 87
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    if-eq v4, v0, :cond_0

    cmp-long v7, v5, v1

    if-gez v7, :cond_1

    :cond_0
    move v4, v3

    move-wide v1, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eq v4, v0, :cond_3

    .line 100
    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3
    return-void
.end method

.method public static setProgressSeekbarScaled(Landroid/widget/SeekBar;DDD)V
    .locals 1

    const/16 v0, 0x3e8

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    sub-double/2addr p5, p1

    sub-double/2addr p3, p1

    div-double/2addr p5, p3

    .line 30
    invoke-static {p5, p6}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->seekbarScalingInverse(D)D

    move-result-wide p1

    const-wide p3, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, p3

    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, p3

    double-to-int p1, p1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 36
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public getExposureTime(I)J
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->seekbar_values_shutter_speed:Ljava/util/List;

    .line 78
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getISO(I)I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->seekbar_values_iso:Ljava/util/List;

    .line 74
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1
.end method

.method public getWhiteBalanceTemperature(I)I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->seekbar_values_white_balance:Ljava/util/List;

    .line 70
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1
.end method

.method setISOProgressBarToClosest(Landroid/widget/SeekBar;J)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->seekbar_values_iso:Ljava/util/List;

    .line 104
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->setProgressBarToClosest(Landroid/widget/SeekBar;Ljava/util/List;J)V

    return-void
.end method

.method public setProgressSeekbarISO(Landroid/widget/SeekBar;JJJ)V
    .locals 8

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->seekbar_values_iso:Ljava/util/List;

    .line 131
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x1

    move-wide v3, v1

    :goto_0
    const-wide/16 v5, 0x64

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    cmp-long v5, v3, p2

    if-lez v5, :cond_0

    cmp-long v5, v3, p4

    if-gez v5, :cond_0

    .line 136
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-long/2addr v3, v1

    goto :goto_0

    :cond_1
    move-wide v1, v5

    :goto_1
    const-wide/16 v3, 0x1f4

    cmp-long v7, v1, v3

    if-gez v7, :cond_3

    cmp-long v3, v1, p2

    if-lez v3, :cond_2

    cmp-long v3, v1, p4

    if-gez v3, :cond_2

    .line 142
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v3, 0x5

    add-long/2addr v1, v3

    goto :goto_1

    :cond_3
    :goto_2
    const-wide/16 v1, 0x3e8

    cmp-long v7, v3, v1

    if-gez v7, :cond_5

    cmp-long v1, v3, p2

    if-lez v1, :cond_4

    cmp-long v1, v3, p4

    if-gez v1, :cond_4

    .line 148
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/16 v1, 0xa

    add-long/2addr v3, v1

    goto :goto_2

    :cond_5
    :goto_3
    const-wide/16 v3, 0x1388

    cmp-long v7, v1, v3

    if-gez v7, :cond_7

    cmp-long v3, v1, p2

    if-lez v3, :cond_6

    cmp-long v3, v1, p4

    if-gez v3, :cond_6

    .line 154
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-wide/16 v3, 0x32

    add-long/2addr v1, v3

    goto :goto_3

    :cond_7
    :goto_4
    const-wide/16 v1, 0x2710

    cmp-long v7, v3, v1

    if-gez v7, :cond_9

    cmp-long v1, v3, p2

    if-lez v1, :cond_8

    cmp-long v1, v3, p4

    if-gez v1, :cond_8

    .line 160
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-long/2addr v3, v5

    goto :goto_4

    .line 163
    :cond_9
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 167
    invoke-direct {p0, p1, v0, p6, p7}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->setProgressBarToClosest(Landroid/widget/SeekBar;Ljava/util/List;J)V

    return-void
.end method

.method public setProgressSeekbarShutterSpeed(Landroid/widget/SeekBar;JJJ)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->seekbar_values_shutter_speed:Ljava/util/List;

    .line 176
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    const/16 v4, 0xa

    :goto_0
    const/4 v5, 0x1

    const-wide/32 v6, 0x3b9aca00

    if-lt v4, v5, :cond_1

    int-to-long v8, v4

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    .line 180
    div-long/2addr v6, v8

    cmp-long v5, v6, p2

    if-lez v5, :cond_0

    cmp-long v5, v6, p4

    if-gez v5, :cond_0

    .line 182
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x9

    const/16 v8, 0x9

    :goto_1
    if-lt v8, v5, :cond_3

    int-to-long v9, v8

    const-wide/16 v11, 0x64

    mul-long v9, v9, v11

    .line 187
    div-long v9, v6, v9

    cmp-long v11, v9, p2

    if-lez v11, :cond_2

    cmp-long v11, v9, p4

    if-gez v11, :cond_2

    .line 189
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v8, 0x6

    if-lt v4, v8, :cond_5

    int-to-long v8, v4

    const-wide/16 v10, 0xa

    mul-long v8, v8, v10

    .line 194
    div-long v8, v6, v8

    cmp-long v10, v8, p2

    if-lez v10, :cond_4

    cmp-long v10, v8, p4

    if-gez v10, :cond_4

    .line 196
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    const/16 v4, 0x32

    :goto_3
    if-lt v4, v3, :cond_7

    int-to-long v8, v4

    .line 201
    div-long v8, v6, v8

    cmp-long v10, v8, p2

    if-lez v10, :cond_6

    cmp-long v10, v8, p4

    if-gez v10, :cond_6

    .line 203
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, -0x5

    goto :goto_3

    :cond_7
    const/4 v3, 0x1

    :goto_4
    const/16 v4, 0x14

    if-ge v3, v4, :cond_9

    const-wide/32 v8, 0x5f5e100

    int-to-long v10, v3

    mul-long v10, v10, v8

    cmp-long v4, v10, p2

    if-lez v4, :cond_8

    cmp-long v4, v10, p4

    if-gez v4, :cond_8

    .line 210
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x2

    :goto_5
    if-ge v3, v4, :cond_b

    int-to-long v8, v3

    mul-long v8, v8, v6

    cmp-long v10, v8, p2

    if-lez v10, :cond_a

    cmp-long v10, v8, p4

    if-gez v10, :cond_a

    .line 217
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    const/16 v3, 0x3c

    if-ge v4, v3, :cond_d

    int-to-long v8, v4

    mul-long v8, v8, v6

    cmp-long v3, v8, p2

    if-lez v3, :cond_c

    cmp-long v3, v8, p4

    if-gez v3, :cond_c

    .line 224
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v4, v4, 0x5

    goto :goto_6

    :cond_d
    :goto_7
    const/16 v4, 0xb4

    if-ge v3, v4, :cond_f

    int-to-long v8, v3

    mul-long v8, v8, v6

    cmp-long v4, v8, p2

    if-lez v4, :cond_e

    cmp-long v4, v8, p4

    if-gez v4, :cond_e

    .line 233
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v3, v3, 0xf

    goto :goto_7

    :cond_f
    :goto_8
    const/16 v3, 0x258

    if-ge v4, v3, :cond_11

    int-to-long v8, v4

    mul-long v8, v8, v6

    cmp-long v3, v8, p2

    if-lez v3, :cond_10

    cmp-long v3, v8, p4

    if-gez v3, :cond_10

    .line 240
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v4, v4, 0x3c

    goto :goto_8

    :cond_11
    :goto_9
    const/16 v4, 0x4b0

    if-gt v3, v4, :cond_13

    int-to-long v8, v3

    mul-long v8, v8, v6

    cmp-long v4, v8, p2

    if-lez v4, :cond_12

    cmp-long v4, v8, p4

    if-gez v4, :cond_12

    .line 247
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v3, v3, 0x78

    goto :goto_9

    .line 250
    :cond_13
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    move-wide/from16 v3, p6

    .line 254
    invoke-direct {p0, p1, v2, v3, v4}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->setProgressBarToClosest(Landroid/widget/SeekBar;Ljava/util/List;J)V

    return-void
.end method

.method public setProgressSeekbarWhiteBalance(Landroid/widget/SeekBar;JJJ)V
    .locals 3

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->seekbar_values_white_balance:Ljava/util/List;

    :goto_0
    cmp-long v1, p2, p4

    if-gez v1, :cond_0

    .line 115
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x64

    add-long/2addr p2, v1

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 122
    invoke-direct {p0, p1, v0, p6, p7}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->setProgressBarToClosest(Landroid/widget/SeekBar;Ljava/util/List;J)V

    return-void
.end method
