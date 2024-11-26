.class final enum Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;
.super Ljava/lang/Enum;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ImageSaver$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ProcessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

.field public static final enum AVERAGE:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

.field public static final enum HDR:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

.field public static final enum NORMAL:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

.field public static final enum PANORAMA:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

.field public static final enum X_NIGHT:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->NORMAL:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->HDR:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->AVERAGE:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->PANORAMA:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->X_NIGHT:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 114
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->NORMAL:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    .line 115
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    const-string v1, "HDR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->HDR:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    .line 116
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    const-string v1, "AVERAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->AVERAGE:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    .line 117
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    const-string v1, "PANORAMA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->PANORAMA:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    .line 118
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    const-string v1, "X_NIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->X_NIGHT:Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    .line 113
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->$values()[Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->$VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    .line 113
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->$VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    .line 113
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/ImageSaver$Request$ProcessType;

    return-object v0
.end method
