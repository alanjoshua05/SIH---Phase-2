.class public final enum Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;
.super Ljava/lang/Enum;
.source "MyApplicationInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MyApplicationInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shadow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

.field public static final enum SHADOW_BACKGROUND:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

.field public static final enum SHADOW_NONE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

.field public static final enum SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_NONE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_BACKGROUND:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 3118
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    const-string v1, "SHADOW_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_NONE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    .line 3119
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    const-string v1, "SHADOW_OUTLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_OUTLINE:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    .line 3120
    new-instance v0, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    const-string v1, "SHADOW_BACKGROUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->SHADOW_BACKGROUND:Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    .line 3117
    invoke-static {}, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->$values()[Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->$VALUES:[Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    .line 3117
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->$VALUES:[Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    .line 3117
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/MyApplicationInterface$Shadow;

    return-object v0
.end method
