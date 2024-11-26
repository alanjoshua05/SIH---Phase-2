.class Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationSupplier.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/LocationSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field private location:Landroid/location/Location;

.field volatile test_has_received_location:Z

.field final synthetic this$0:Lnet/sourceforge/opencamera/LocationSupplier;


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/LocationSupplier;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->this$0:Lnet/sourceforge/opencamera/LocationSupplier;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/LocationSupplier;Lnet/sourceforge/opencamera/LocationSupplier$1;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;-><init>(Lnet/sourceforge/opencamera/LocationSupplier;)V

    return-void
.end method


# virtual methods
.method getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->location:Landroid/location/Location;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->test_has_received_location:Z

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    :cond_0
    iput-object p1, p0, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->location:Landroid/location/Location;

    iget-object p1, p0, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->this$0:Lnet/sourceforge/opencamera/LocationSupplier;

    .line 136
    invoke-static {p1}, Lnet/sourceforge/opencamera/LocationSupplier;->access$100(Lnet/sourceforge/opencamera/LocationSupplier;)V

    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->location:Landroid/location/Location;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->test_has_received_location:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->this$0:Lnet/sourceforge/opencamera/LocationSupplier;

    .line 169
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/LocationSupplier;->access$202(Lnet/sourceforge/opencamera/LocationSupplier;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->location:Landroid/location/Location;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->test_has_received_location:Z

    iget-object p2, p0, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->this$0:Lnet/sourceforge/opencamera/LocationSupplier;

    .line 153
    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/LocationSupplier;->access$202(Lnet/sourceforge/opencamera/LocationSupplier;Landroid/location/Location;)Landroid/location/Location;

    :goto_0
    return-void
.end method
