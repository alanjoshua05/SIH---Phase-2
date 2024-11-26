.class Lnet/sourceforge/opencamera/remotecontrol/KrakenGattAttributes;
.super Ljava/lang/Object;
.source "KrakenGattAttributes.java"


# static fields
.field static final CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

.field static final KRAKEN_BUTTONS_CHARACTERISTIC:Ljava/util/UUID;

.field static final KRAKEN_SENSORS_CHARACTERISTIC:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 13
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/remotecontrol/KrakenGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    const-string v0, "00001625-1212-efde-1523-785feabcd123"

    .line 16
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/remotecontrol/KrakenGattAttributes;->KRAKEN_SENSORS_CHARACTERISTIC:Ljava/util/UUID;

    const-string v0, "00001524-1212-efde-1523-785feabcd123"

    .line 18
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/opencamera/remotecontrol/KrakenGattAttributes;->KRAKEN_BUTTONS_CHARACTERISTIC:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDesiredCharacteristics()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/UUID;

    const/4 v1, 0x0

    sget-object v2, Lnet/sourceforge/opencamera/remotecontrol/KrakenGattAttributes;->KRAKEN_BUTTONS_CHARACTERISTIC:Ljava/util/UUID;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sourceforge/opencamera/remotecontrol/KrakenGattAttributes;->KRAKEN_SENSORS_CHARACTERISTIC:Ljava/util/UUID;

    aput-object v2, v0, v1

    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
