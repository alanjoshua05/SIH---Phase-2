.class public final enum Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;
.super Ljava/lang/Enum;
.source "ApplicationInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/ApplicationInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NRModePref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

.field public static final enum NRMODE_LOW_LIGHT:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

.field public static final enum NRMODE_NORMAL:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->NRMODE_NORMAL:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->NRMODE_LOW_LIGHT:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 171
    new-instance v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    const-string v1, "NRMODE_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->NRMODE_NORMAL:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    .line 172
    new-instance v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    const-string v1, "NRMODE_LOW_LIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->NRMODE_LOW_LIGHT:Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    .line 170
    invoke-static {}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->$values()[Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->$VALUES:[Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    .line 170
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->$VALUES:[Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    .line 170
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/preview/ApplicationInterface$NRModePref;

    return-object v0
.end method
