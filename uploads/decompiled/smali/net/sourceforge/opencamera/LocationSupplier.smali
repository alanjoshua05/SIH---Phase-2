.class public Lnet/sourceforge/opencamera/LocationSupplier;
.super Ljava/lang/Object;
.source "LocationSupplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;,
        Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationSupplier"


# instance fields
.field private cached_location:Landroid/location/Location;

.field private cached_location_ms:J

.field private final context:Landroid/content/Context;

.field private locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

.field private final locationManager:Landroid/location/LocationManager;

.field private volatile test_force_no_location:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/LocationSupplier;->context:Landroid/content/Context;

    const-string v0, "location"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/LocationSupplier;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/sourceforge/opencamera/LocationSupplier;->cacheLocation()V

    return-void
.end method

.method static synthetic access$202(Lnet/sourceforge/opencamera/LocationSupplier;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 21
    iput-object p1, p0, Lnet/sourceforge/opencamera/LocationSupplier;->cached_location:Landroid/location/Location;

    return-object p1
.end method

.method private cacheLocation()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/LocationSupplier;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "LocationSupplier"

    const-string v1, "### asked to cache location when location not available"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/LocationSupplier;->cached_location:Landroid/location/Location;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->cached_location_ms:J

    :goto_0
    return-void
.end method

.method private getCachedLocation()Landroid/location/Location;
    .locals 8

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->cached_location:Landroid/location/Location;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/sourceforge/opencamera/LocationSupplier;->cached_location_ms:J

    const-wide/16 v6, 0x4e20

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->cached_location:Landroid/location/Location;

    return-object v0

    :cond_0
    iput-object v1, p0, Lnet/sourceforge/opencamera/LocationSupplier;->cached_location:Landroid/location/Location;

    :cond_1
    return-object v1
.end method

.method public static locationToDMS(D)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x0

    const-string v2, ""

    cmpg-double v3, p0, v0

    if-gez v3, :cond_0

    const-string v0, "-"

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 332
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v1, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 335
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    int-to-double v7, v1

    .line 336
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v7

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    mul-double p0, p0, v7

    double-to-int v1, p0

    if-eqz v5, :cond_2

    if-nez v1, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    int-to-double v9, v1

    .line 341
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v9

    .line 342
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    mul-double p0, p0, v7

    double-to-int p0, p0

    if-eqz v5, :cond_3

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 347
    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v0

    .line 355
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u00b0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method freeLocationListeners()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 264
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lnet/sourceforge/opencamera/LocationSupplier;->context:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 265
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    return-void

    :cond_2
    :goto_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    .line 277
    array-length v1, v0

    const/4 v3, 0x0

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationManager:Landroid/location/LocationManager;

    .line 278
    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    .line 279
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iput-object v3, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    :cond_4
    return-void
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/LocationSupplier;->getLocation(Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;)Landroid/location/Location;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 94
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;->access$002(Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;Z)Z

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget-boolean v1, p0, Lnet/sourceforge/opencamera/LocationSupplier;->test_force_no_location:Z

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    .line 105
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 106
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->getLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_4
    invoke-direct {p0}, Lnet/sourceforge/opencamera/LocationSupplier;->getCachedLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    .line 112
    invoke-static {p1, v1}, Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;->access$002(Lnet/sourceforge/opencamera/LocationSupplier$LocationInfo;Z)Z

    :cond_5
    return-object v0
.end method

.method public hasLocationListeners()Z
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 309
    :cond_0
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return v1

    .line 311
    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public noLocationListeners()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setForceNoLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/LocationSupplier;->test_force_no_location:Z

    return-void
.end method

.method setupLocationListener()Z
    .locals 10

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->context:Landroid/content/Context;

    .line 181
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_location"

    const/4 v2, 0x0

    .line 184
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v3, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    if-nez v3, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->context:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 196
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lnet/sourceforge/opencamera/LocationSupplier;->context:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 197
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    return v2

    :cond_2
    const/4 v0, 0x1

    const/4 v3, 0x1

    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    iput-object v4, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    .line 221
    new-instance v5, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;-><init>(Lnet/sourceforge/opencamera/LocationSupplier;Lnet/sourceforge/opencamera/LocationSupplier$1;)V

    aput-object v5, v4, v2

    iget-object v4, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    .line 222
    new-instance v5, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    invoke-direct {v5, p0, v6}, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;-><init>(Lnet/sourceforge/opencamera/LocationSupplier;Lnet/sourceforge/opencamera/LocationSupplier$1;)V

    aput-object v5, v4, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationManager:Landroid/location/LocationManager;

    .line 227
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v4, "network"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationManager:Landroid/location/LocationManager;

    const-string v5, "network"

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    .line 228
    aget-object v9, v0, v1

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_4
    if-eqz v3, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationManager:Landroid/location/LocationManager;

    .line 236
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v3, "gps"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v3, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    .line 237
    aget-object v8, v0, v2

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    .line 247
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/LocationSupplier;->freeLocationListeners()V

    :cond_6
    :goto_2
    return v1
.end method

.method public testHasReceivedLocation()Z
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/LocationSupplier;->locationListeners:[Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 292
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 293
    iget-boolean v4, v4, Lnet/sourceforge/opencamera/LocationSupplier$MyLocationListener;->test_has_received_location:Z

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
