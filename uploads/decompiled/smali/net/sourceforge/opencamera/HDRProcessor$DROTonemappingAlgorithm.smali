.class public final enum Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;
.super Ljava/lang/Enum;
.source "HDRProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/HDRProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DROTonemappingAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

.field public static final enum DROALGORITHM_GAINGAMMA:Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

.field public static final enum DROALGORITHM_NONE:Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;->DROALGORITHM_NONE:Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;->DROALGORITHM_GAINGAMMA:Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    const-string v1, "DROALGORITHM_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;->DROALGORITHM_NONE:Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    .line 78
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    const-string v1, "DROALGORITHM_GAINGAMMA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;->DROALGORITHM_GAINGAMMA:Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    .line 76
    invoke-static {}, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;->$values()[Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;->$VALUES:[Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    .line 76
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;->$VALUES:[Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    .line 76
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/HDRProcessor$DROTonemappingAlgorithm;

    return-object v0
.end method
