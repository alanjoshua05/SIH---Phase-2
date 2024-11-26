.class Lnet/sourceforge/opencamera/MagneticSensor;
.super Ljava/lang/Object;
.source "MagneticSensor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MagneticSensor"


# instance fields
.field private mSensorMagnetic:Landroid/hardware/Sensor;

.field private final magneticListener:Landroid/hardware/SensorEventListener;

.field private magneticListenerIsRegistered:Z

.field private magnetic_accuracy:I

.field private magnetic_accuracy_dialog:Landroid/app/AlertDialog;

.field private final main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field private shown_magnetic_accuracy_dialog:Z


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magnetic_accuracy:I

    .line 93
    new-instance v0, Lnet/sourceforge/opencamera/MagneticSensor$1;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/MagneticSensor$1;-><init>(Lnet/sourceforge/opencamera/MagneticSensor;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magneticListener:Landroid/hardware/SensorEventListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->shown_magnetic_accuracy_dialog:Z

    iput-object p1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-void
.end method

.method static synthetic access$002(Lnet/sourceforge/opencamera/MagneticSensor;I)I
    .locals 0

    .line 14
    iput p1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magnetic_accuracy:I

    return p1
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/MagneticSensor;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MagneticSensor;->setMagneticAccuracyDialogText()V

    return-void
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/MagneticSensor;)Lnet/sourceforge/opencamera/MainActivity;
    .locals 0

    .line 14
    iget-object p0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-object p0
.end method

.method private needsMagneticSensor(Landroid/content/SharedPreferences;)Z
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 200
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getGeodirectionPref()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "preference_comment_ypr"

    const/4 v1, 0x0

    .line 201
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "preference_show_geo_direction_lines"

    .line 202
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "preference_show_geo_direction"

    .line 203
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private setMagneticAccuracyDialogText()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magnetic_accuracy_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magnetic_accuracy:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magnetic_accuracy_dialog:Landroid/app/AlertDialog;

    .line 145
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method checkMagneticAccuracy()V
    .locals 4

    iget v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magnetic_accuracy:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->shown_magnetic_accuracy_dialog:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 166
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isTakingPhotoOrOnTimer()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 170
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->isCameraInBackground()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 176
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MagneticSensor;->needsMagneticSensor(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "done_magnetic_accuracy"

    .line 182
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->shown_magnetic_accuracy_dialog:Z

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->shown_magnetic_accuracy_dialog:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 191
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    const v1, 0x7f1000be

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lnet/sourceforge/opencamera/ui/MainUI;->showInfoDialog(IILjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magnetic_accuracy_dialog:Landroid/app/AlertDialog;

    .line 192
    invoke-direct {p0}, Lnet/sourceforge/opencamera/MagneticSensor;->setMagneticAccuracyDialogText()V

    :cond_6
    :goto_0
    return-void
.end method

.method clearDialog()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magnetic_accuracy_dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method getMagneticAccuracy()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magnetic_accuracy:I

    return v0
.end method

.method initSensor(Landroid/hardware/SensorManager;)V
    .locals 2

    const/4 v0, 0x2

    .line 33
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->mSensorMagnetic:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method

.method registerMagneticListener(Landroid/hardware/SensorManager;)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 51
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magneticListenerIsRegistered:Z

    if-nez v1, :cond_0

    .line 53
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MagneticSensor;->needsMagneticSensor(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magneticListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->mSensorMagnetic:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    .line 56
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magneticListenerIsRegistered:Z

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/MagneticSensor;->needsMagneticSensor(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magneticListener:Landroid/hardware/SensorEventListener;

    .line 72
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magneticListenerIsRegistered:Z

    :cond_2
    :goto_0
    return-void
.end method

.method unregisterMagneticListener(Landroid/hardware/SensorManager;)V
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magneticListenerIsRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magneticListener:Landroid/hardware/SensorEventListener;

    .line 84
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MagneticSensor;->magneticListenerIsRegistered:Z

    :cond_0
    return-void
.end method
