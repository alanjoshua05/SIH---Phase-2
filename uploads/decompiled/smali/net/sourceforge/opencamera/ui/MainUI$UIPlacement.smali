.class final enum Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;
.super Ljava/lang/Enum;
.source "MainUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ui/MainUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UIPlacement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

.field public static final enum UIPLACEMENT_LEFT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

.field public static final enum UIPLACEMENT_RIGHT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

.field public static final enum UIPLACEMENT_TOP:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_RIGHT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_LEFT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_TOP:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    const-string v1, "UIPLACEMENT_RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_RIGHT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    .line 64
    new-instance v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    const-string v1, "UIPLACEMENT_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_LEFT:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    .line 65
    new-instance v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    const-string v1, "UIPLACEMENT_TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->UIPLACEMENT_TOP:Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    .line 62
    invoke-static {}, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->$values()[Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->$VALUES:[Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    .line 62
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->$VALUES:[Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    .line 62
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    return-object v0
.end method
