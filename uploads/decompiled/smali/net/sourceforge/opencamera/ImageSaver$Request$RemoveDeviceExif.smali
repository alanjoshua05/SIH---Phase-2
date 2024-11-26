.class final enum Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;
.super Ljava/lang/Enum;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ImageSaver$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RemoveDeviceExif"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

.field public static final enum KEEP_DATETIME:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

.field public static final enum OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

.field public static final enum ON:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;


# direct methods
.method private static synthetic $values()[Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->ON:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->KEEP_DATETIME:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 176
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->OFF:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    .line 177
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    const-string v1, "ON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->ON:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    .line 178
    new-instance v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    const-string v1, "KEEP_DATETIME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->KEEP_DATETIME:Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    .line 175
    invoke-static {}, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->$values()[Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->$VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;
    .locals 1

    const-class v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    .line 175
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    return-object p0
.end method

.method public static values()[Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;
    .locals 1

    sget-object v0, Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->$VALUES:[Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    .line 175
    invoke-virtual {v0}, [Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sourceforge/opencamera/ImageSaver$Request$RemoveDeviceExif;

    return-object v0
.end method
