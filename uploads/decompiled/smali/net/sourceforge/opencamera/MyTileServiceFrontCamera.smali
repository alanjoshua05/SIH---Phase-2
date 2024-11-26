.class public Lnet/sourceforge/opencamera/MyTileServiceFrontCamera;
.super Landroid/service/quicksettings/TileService;
.source "MyTileServiceFrontCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyTileServiceFrontCam"

.field public static final TILE_ID:Ljava/lang/String; = "net.sourceforge.opencamera.TILE_FRONT_CAMERA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 46
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/sourceforge/opencamera/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "net.sourceforge.opencamera.TILE_FRONT_CAMERA"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    .line 54
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 55
    invoke-static {p0, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Lnet/sourceforge/opencamera/MyTileServiceFrontCamera;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p0, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Lnet/sourceforge/opencamera/MyTileServiceFrontCamera;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 19
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    return-void
.end method

.method public onStartListening()V
    .locals 0

    .line 34
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    return-void
.end method

.method public onStopListening()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method public onTileAdded()V
    .locals 0

    .line 24
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    .line 29
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    return-void
.end method
