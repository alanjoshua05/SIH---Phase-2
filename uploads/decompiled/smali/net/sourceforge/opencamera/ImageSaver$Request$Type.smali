.class final enum Lnet/sourceforge/opencamera/ImageSaver$Request$Type;
.super Ljava/lang/Enum;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ImageSaver$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/ImageSaver$Request$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

.field public static final enum DUMMY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

.field public static final enum JPEG:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

.field public static final enum ON_DESTROY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

.field public static final enum RAW:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/ImageSaver$Request$Type;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->JPEG:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->RAW:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->DUMMY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->ON_DESTROY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    const-string v1, "JPEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->JPEG:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    .line 108
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    const-string v1, "RAW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->RAW:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    .line 109
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    const-string v1, "DUMMY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->DUMMY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    .line 110
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    const-string v1, "ON_DESTROY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->ON_DESTROY:Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    .line 106
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->$values()[Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->$VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/ImageSaver$Request$Type;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    .line 106
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/ImageSaver$Request$Type;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->$VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    .line 106
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/ImageSaver$Request$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/ImageSaver$Request$Type;

    return-object v0
.end method
