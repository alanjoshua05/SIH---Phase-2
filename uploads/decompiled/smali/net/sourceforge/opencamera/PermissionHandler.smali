.class public Lnet/sourceforge/opencamera/PermissionHandler;
.super Ljava/lang/Object;
.source "PermissionHandler.java"


# static fields
.field private static final MY_PERMISSIONS_REQUEST_CAMERA:I = 0x0

.field private static final MY_PERMISSIONS_REQUEST_LOCATION:I = 0x3

.field private static final MY_PERMISSIONS_REQUEST_RECORD_AUDIO:I = 0x2

.field private static final MY_PERMISSIONS_REQUEST_STORAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PermissionHandler"

.field private static final deny_delay_ms:J = 0x3e8L


# instance fields
.field private audio_denied:Z

.field private audio_denied_time_ms:J

.field private camera_denied:Z

.field private camera_denied_time_ms:J

.field private location_denied:Z

.field private location_denied_time_ms:J

.field private final main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field private storage_denied:Z

.field private storage_denied_time_ms:J


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/PermissionHandler;)Lnet/sourceforge/opencamera/MainActivity;
    .locals 0

    .line 17
    iget-object p0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-object p0
.end method

.method private showRequestPermissionRationale(I)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    move-object v3, v0

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v3, v1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v3, v2

    const v1, 0x7f1000d9

    const/4 v1, 0x1

    const v2, 0x7f1000d9

    goto :goto_0

    :cond_2
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "android.permission.RECORD_AUDIO"

    aput-object v4, v3, v1

    const v1, 0x7f1000da

    const/4 v1, 0x1

    const v2, 0x7f1000da

    goto :goto_0

    :cond_3
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v1

    const v1, 0x7f1000db

    const/4 v1, 0x1

    const v2, 0x7f1000db

    goto :goto_0

    :cond_4
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v3, v1

    const v1, 0x7f1000d8

    const/4 v1, 0x1

    const v2, 0x7f1000d8

    :goto_0
    if-eqz v1, :cond_5

    .line 101
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1000dc

    .line 102
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    .line 104
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 105
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lnet/sourceforge/opencamera/PermissionHandler$1;

    invoke-direct {v1, p0, v3, p1}, Lnet/sourceforge/opencamera/PermissionHandler$1;-><init>(Lnet/sourceforge/opencamera/PermissionHandler;[Ljava/lang/String;I)V

    .line 106
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_5
    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[I)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    return-void

    .line 314
    :cond_1
    array-length p1, p2

    if-ne p1, v2, :cond_3

    aget p1, p2, v0

    if-eqz p1, :cond_2

    aget p1, p2, v1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 322
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->initLocation()V

    goto :goto_0

    .line 324
    :cond_3
    array-length p1, p2

    if-lez p1, :cond_4

    aget p1, p2, v0

    if-nez p1, :cond_4

    iget-object p1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 329
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->initLocation()V

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->location_denied:Z

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->location_denied_time_ms:J

    iget-object p1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 341
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    const/4 p2, 0x0

    const v1, 0x7f1000d6

    invoke-virtual {p1, p2, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 342
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 343
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "preference_location"

    .line 344
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    .line 291
    :cond_5
    array-length p1, p2

    if-lez p1, :cond_6

    aget p1, p2, v0

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->audio_denied:Z

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->audio_denied_time_ms:J

    :goto_1
    return-void

    .line 269
    :cond_7
    array-length p1, p2

    if-lez p1, :cond_8

    aget p1, p2, v0

    if-nez p1, :cond_8

    iget-object p1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 275
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->retryOpenCamera()V

    goto :goto_2

    :cond_8
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->storage_denied:Z

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->storage_denied_time_ms:J

    :goto_2
    return-void

    .line 247
    :cond_9
    array-length p1, p2

    if-lez p1, :cond_a

    aget p1, p2, v0

    if-nez p1, :cond_a

    iget-object p1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 253
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->retryOpenCamera()V

    goto :goto_3

    :cond_a
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->camera_denied:Z

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/sourceforge/opencamera/PermissionHandler;->camera_denied_time_ms:J

    :goto_3
    return-void
.end method

.method requestCameraPermission()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->camera_denied:Z

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/sourceforge/opencamera/PermissionHandler;->camera_denied_time_ms:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const-string v1, "android.permission.CAMERA"

    .line 130
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 134
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/PermissionHandler;->showRequestPermissionRationale(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    .line 140
    invoke-static {v0, v3, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method requestLocationPermission()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->location_denied:Z

    if-eqz v0, :cond_1

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/sourceforge/opencamera/PermissionHandler;->location_denied_time_ms:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 219
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 220
    invoke-static {v0, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v3, v4, v1

    .line 230
    invoke-static {v0, v4, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 224
    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/PermissionHandler;->showRequestPermissionRationale(I)V

    :goto_1
    return-void
.end method

.method requestRecordAudioPermission()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->audio_denied:Z

    if-eqz v0, :cond_1

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/sourceforge/opencamera/PermissionHandler;->audio_denied_time_ms:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 191
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 195
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/PermissionHandler;->showRequestPermissionRationale(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 201
    invoke-static {v0, v3, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method requestStoragePermission()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->storage_denied:Z

    if-eqz v0, :cond_2

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/sourceforge/opencamera/PermissionHandler;->storage_denied_time_ms:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 163
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 167
    invoke-direct {p0, v2}, Lnet/sourceforge/opencamera/PermissionHandler;->showRequestPermissionRationale(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/PermissionHandler;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 173
    invoke-static {v0, v3, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
