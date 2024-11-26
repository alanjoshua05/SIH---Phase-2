.class final enum Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;
.super Ljava/lang/Enum;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ImageSaver$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SaveBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

.field public static final enum SAVEBASE_ALL:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

.field public static final enum SAVEBASE_ALL_PLUS_DEBUG:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

.field public static final enum SAVEBASE_FIRST:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

.field public static final enum SAVEBASE_NONE:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_NONE:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_FIRST:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_ALL:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_ALL_PLUS_DEBUG:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 124
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    const-string v1, "SAVEBASE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_NONE:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    .line 125
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    const-string v1, "SAVEBASE_FIRST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_FIRST:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    .line 126
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    const-string v1, "SAVEBASE_ALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_ALL:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    .line 127
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    const-string v1, "SAVEBASE_ALL_PLUS_DEBUG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->SAVEBASE_ALL_PLUS_DEBUG:Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    .line 123
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->$values()[Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->$VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    .line 123
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->$VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    .line 123
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/ImageSaver$Request$SaveBase;

    return-object v0
.end method
