.class public final enum Lnet/sourceforge/opencamera/preview/Preview$HistogramType;
.super Ljava/lang/Enum;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HistogramType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/preview/Preview$HistogramType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

.field public static final enum HISTOGRAM_TYPE_INTENSITY:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

.field public static final enum HISTOGRAM_TYPE_LIGHTNESS:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

.field public static final enum HISTOGRAM_TYPE_LUMINANCE:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

.field public static final enum HISTOGRAM_TYPE_RGB:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

.field public static final enum HISTOGRAM_TYPE_VALUE:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/preview/Preview$HistogramType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_RGB:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_LUMINANCE:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_VALUE:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_INTENSITY:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_LIGHTNESS:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 156
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    const-string v1, "HISTOGRAM_TYPE_RGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_RGB:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    .line 157
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    const-string v1, "HISTOGRAM_TYPE_LUMINANCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_LUMINANCE:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    .line 158
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    const-string v1, "HISTOGRAM_TYPE_VALUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_VALUE:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    .line 159
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    const-string v1, "HISTOGRAM_TYPE_INTENSITY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_INTENSITY:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    .line 160
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    const-string v1, "HISTOGRAM_TYPE_LIGHTNESS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->HISTOGRAM_TYPE_LIGHTNESS:Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    .line 155
    invoke-static {}, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->$values()[Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->$VALUES:[Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/preview/Preview$HistogramType;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    .line 155
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/preview/Preview$HistogramType;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->$VALUES:[Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    .line 155
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/preview/Preview$HistogramType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/preview/Preview$HistogramType;

    return-object v0
.end method
