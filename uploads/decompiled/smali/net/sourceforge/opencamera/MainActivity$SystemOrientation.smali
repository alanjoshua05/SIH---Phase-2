.class public final enum Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

.field public static final enum LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

.field public static final enum PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

.field public static final enum REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 224
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    .line 225
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    .line 226
    new-instance v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    const-string v1, "REVERSE_LANDSCAPE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    .line 223
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->$values()[Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->$VALUES:[Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    .line 223
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->$VALUES:[Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    .line 223
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    return-object v0
.end method
