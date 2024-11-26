.class public final enum Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;
.super Ljava/lang/Enum;
.source "JavaImageFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

.field public static final enum TYPE_INTENSITY:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

.field public static final enum TYPE_LIGHTNESS:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

.field public static final enum TYPE_LUMINANCE:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

.field public static final enum TYPE_RGB:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

.field public static final enum TYPE_VALUE:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_RGB:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_LUMINANCE:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_VALUE:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_INTENSITY:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_LIGHTNESS:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2544
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    const-string v1, "TYPE_RGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_RGB:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    .line 2545
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    const-string v1, "TYPE_LUMINANCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_LUMINANCE:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    .line 2546
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    const-string v1, "TYPE_VALUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_VALUE:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    .line 2547
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    const-string v1, "TYPE_INTENSITY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_INTENSITY:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    .line 2548
    new-instance v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    const-string v1, "TYPE_LIGHTNESS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->TYPE_LIGHTNESS:Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    .line 2543
    invoke-static {}, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->$values()[Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->$VALUES:[Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2543
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    .line 2543
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->$VALUES:[Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    .line 2543
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/JavaImageFunctions$ComputeHistogramApplyFunction$Type;

    return-object v0
.end method
