.class public final enum Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;
.super Ljava/lang/Enum;
.source "HDRProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/HDRProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TonemappingAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

.field public static final enum TONEMAPALGORITHM_ACES:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

.field public static final enum TONEMAPALGORITHM_CLAMP:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

.field public static final enum TONEMAPALGORITHM_EXPONENTIAL:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

.field public static final enum TONEMAPALGORITHM_FU2:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

.field public static final enum TONEMAPALGORITHM_REINHARD:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_CLAMP:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_EXPONENTIAL:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_REINHARD:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_FU2:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_ACES:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    const-string v1, "TONEMAPALGORITHM_CLAMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_CLAMP:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    .line 70
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    const-string v1, "TONEMAPALGORITHM_EXPONENTIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_EXPONENTIAL:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    .line 71
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    const-string v1, "TONEMAPALGORITHM_REINHARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_REINHARD:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    .line 72
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    const-string v1, "TONEMAPALGORITHM_FU2"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_FU2:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    .line 73
    new-instance v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    const-string v1, "TONEMAPALGORITHM_ACES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->TONEMAPALGORITHM_ACES:Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    .line 68
    invoke-static {}, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->$values()[Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->$VALUES:[Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    .line 68
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->$VALUES:[Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    .line 68
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/HDRProcessor$TonemappingAlgorithm;

    return-object v0
.end method
