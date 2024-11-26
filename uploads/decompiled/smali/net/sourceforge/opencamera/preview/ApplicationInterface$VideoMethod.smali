.class public final enum Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;
.super Ljava/lang/Enum;
.source "ApplicationInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/ApplicationInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

.field public static final enum FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

.field public static final enum MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

.field public static final enum SAF:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

.field public static final enum URI:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->SAF:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->URI:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    const-string v1, "FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->FILE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    .line 39
    new-instance v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    const-string v1, "SAF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->SAF:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    .line 40
    new-instance v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    const-string v1, "MEDIASTORE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->MEDIASTORE:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    .line 41
    new-instance v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    const-string v1, "URI"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->URI:Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    .line 37
    invoke-static {}, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->$values()[Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->$VALUES:[Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    .line 37
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->$VALUES:[Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    .line 37
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/preview/ApplicationInterface$VideoMethod;

    return-object v0
.end method
