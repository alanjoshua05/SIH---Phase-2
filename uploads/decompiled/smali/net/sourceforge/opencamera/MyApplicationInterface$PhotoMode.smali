.class public final enum Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;
.super Ljava/lang/Enum;
.source "MyApplicationInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MyApplicationInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum ExpoBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum X_Auto:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum X_Beauty:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum X_Bokeh:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum X_HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

.field public static final enum X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ExpoBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Auto:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Bokeh:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Beauty:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 67
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "Standard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Standard:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 68
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "DRO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->DRO:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 69
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "HDR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 70
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "ExpoBracketing"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->ExpoBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 71
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "FocusBracketing"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FocusBracketing:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 72
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "FastBurst"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->FastBurst:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 73
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "NoiseReduction"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->NoiseReduction:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 74
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "Panorama"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->Panorama:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 76
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "X_Auto"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Auto:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 77
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "X_HDR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_HDR:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 78
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "X_Night"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Night:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 79
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "X_Bokeh"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Bokeh:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 80
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    const-string v1, "X_Beauty"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->X_Beauty:Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 66
    invoke-static {}, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->$values()[Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->$VALUES:[Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 66
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->$VALUES:[Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    .line 66
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/MyApplicationInterface$PhotoMode;

    return-object v0
.end method
