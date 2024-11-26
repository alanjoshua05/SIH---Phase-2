.class public Lnet/sourceforge/opencamera/GyroSensor;
.super Ljava/lang/Object;
.source "GyroSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;
    }
.end annotation


# static fields
.field private static final NS2S:F = 1.0E-9f

.field private static final TAG:Ljava/lang/String; = "GyroSensor"


# instance fields
.field private final accelVector:[F

.field private final currentRotationMatrix:[F

.field private final currentRotationMatrixGyroOnly:[F

.field private final deltaRotationMatrix:[F

.field private final deltaRotationVector:[F

.field private final gyroVector:[F

.field private hasTarget:Z

.field private has_gyroVector:Z

.field private has_init_accel:Z

.field private has_lastTargetAngle:Z

.field private has_original_rotation_matrix:Z

.field private has_rotationVector:Z

.field private final inVector:[F

.field private final initAccelVector:[F

.field private is_recording:Z

.field private is_upright:I

.field private lastTargetAngle:F

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorAccel:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final originalRotationMatrix:[F

.field private final rotationVector:[F

.field private targetAchieved:Z

.field private targetAngle:F

.field private targetCallback:Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;

.field private final targetVectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation
.end field

.field private final temp2Matrix:[F

.field private final tempMatrix:[F

.field private final tempVector:[F

.field private timestamp:J

.field private tooFarAngle:F

.field private uprightAngleTol:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [F

    iput-object v1, p0, Lnet/sourceforge/opencamera/GyroSensor;->deltaRotationVector:[F

    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, Lnet/sourceforge/opencamera/GyroSensor;->gyroVector:[F

    const/16 v2, 0x9

    new-array v3, v2, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrixGyroOnly:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/GyroSensor;->deltaRotationMatrix:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/GyroSensor;->temp2Matrix:[F

    const/4 v3, 0x0

    iput-boolean v3, p0, Lnet/sourceforge/opencamera/GyroSensor;->has_init_accel:Z

    new-array v3, v1, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/GyroSensor;->initAccelVector:[F

    new-array v3, v1, [F

    iput-object v3, p0, Lnet/sourceforge/opencamera/GyroSensor;->accelVector:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lnet/sourceforge/opencamera/GyroSensor;->originalRotationMatrix:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lnet/sourceforge/opencamera/GyroSensor;->rotationVector:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lnet/sourceforge/opencamera/GyroSensor;->tempVector:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lnet/sourceforge/opencamera/GyroSensor;->inVector:[F

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/sourceforge/opencamera/GyroSensor;->targetVectors:Ljava/util/List;

    const-string v1, "sensor"

    .line 71
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lnet/sourceforge/opencamera/GyroSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 73
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->mSensor:Landroid/hardware/Sensor;

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/GyroSensor;->mSensorAccel:Landroid/hardware/Sensor;

    .line 87
    invoke-direct {p0}, Lnet/sourceforge/opencamera/GyroSensor;->setToIdentity()V

    return-void
.end method

.method private adjustGyroForAccel()V
    .locals 27

    move-object/from16 v0, p0

    iget-wide v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->has_init_accel:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempVector:[F

    iget-object v2, v0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    iget-object v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->accelVector:[F

    .line 264
    invoke-static {v1, v2, v3}, Lnet/sourceforge/opencamera/GyroSensor;->transformVector([F[F[F)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempVector:[F

    const/4 v2, 0x0

    .line 266
    aget v3, v1, v2

    iget-object v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->initAccelVector:[F

    aget v5, v4, v2

    mul-float v3, v3, v5

    const/4 v5, 0x1

    aget v6, v1, v5

    aget v7, v4, v5

    mul-float v6, v6, v7

    add-float/2addr v3, v6

    const/4 v6, 0x2

    aget v1, v1, v6

    aget v4, v4, v6

    mul-float v1, v1, v4

    add-float/2addr v3, v1

    float-to-double v3, v3

    const-wide v7, 0x3feffffffff920c8L    # 0.99999999995

    cmpl-double v1, v3, v7

    if-ltz v1, :cond_2

    return-void

    .line 282
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    const-wide v7, 0x3f947ae140000000L    # 0.019999999552965164

    mul-double v3, v3, v7

    .line 284
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempVector:[F

    .line 295
    aget v7, v1, v5

    iget-object v8, v0, Lnet/sourceforge/opencamera/GyroSensor;->initAccelVector:[F

    aget v9, v8, v6

    mul-float v10, v7, v9

    aget v11, v1, v6

    aget v12, v8, v5

    mul-float v13, v11, v12

    sub-float/2addr v10, v13

    float-to-double v13, v10

    .line 296
    aget v8, v8, v2

    mul-float v11, v11, v8

    aget v1, v1, v2

    mul-float v9, v9, v1

    sub-float/2addr v11, v9

    float-to-double v9, v11

    mul-float v1, v1, v12

    mul-float v7, v7, v8

    sub-float/2addr v1, v7

    float-to-double v7, v1

    .line 298
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v13, v13

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v9, v9

    add-double/2addr v11, v15

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v7, v7

    add-double/2addr v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, v11, v15

    if-gez v1, :cond_3

    return-void

    .line 303
    :cond_3
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v11

    .line 304
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    .line 305
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v11

    mul-double v11, v3, v3

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v11, v15, v11

    .line 306
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    mul-double v17, v13, v13

    sub-double/2addr v15, v3

    mul-double v17, v17, v15

    add-double v5, v17, v3

    double-to-float v5, v5

    .line 308
    invoke-static {v1, v2, v2, v5}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    mul-double v5, v13, v9

    mul-double v5, v5, v15

    mul-double v17, v11, v7

    move-wide/from16 v19, v3

    sub-double v3, v5, v17

    double-to-float v3, v3

    const/4 v4, 0x1

    .line 309
    invoke-static {v1, v2, v4, v3}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    mul-double v21, v13, v7

    mul-double v21, v21, v15

    mul-double v23, v11, v9

    move-wide/from16 v25, v5

    add-double v4, v21, v23

    double-to-float v3, v4

    const/4 v4, 0x2

    .line 310
    invoke-static {v1, v2, v4, v3}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    add-double v5, v25, v17

    double-to-float v3, v5

    const/4 v4, 0x1

    .line 311
    invoke-static {v1, v4, v2, v3}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    mul-double v5, v9, v9

    mul-double v5, v5, v15

    add-double v5, v5, v19

    double-to-float v3, v5

    .line 312
    invoke-static {v1, v4, v4, v3}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    mul-double v9, v9, v7

    mul-double v9, v9, v15

    mul-double v11, v11, v13

    sub-double v5, v9, v11

    double-to-float v3, v5

    const/4 v5, 0x2

    .line 313
    invoke-static {v1, v4, v5, v3}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    sub-double v13, v21, v23

    double-to-float v3, v13

    .line 314
    invoke-static {v1, v5, v2, v3}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    add-double/2addr v9, v11

    double-to-float v3, v9

    .line 315
    invoke-static {v1, v5, v4, v3}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    mul-double v7, v7, v7

    mul-double v7, v7, v15

    add-double v7, v7, v19

    double-to-float v3, v7

    .line 316
    invoke-static {v1, v5, v5, v3}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_4

    iget-object v7, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    .line 334
    invoke-static {v7, v1, v6}, Lnet/sourceforge/opencamera/GyroSensor;->getMatrixComponent([FII)F

    move-result v7

    iget-object v8, v0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    invoke-static {v8, v6, v4}, Lnet/sourceforge/opencamera/GyroSensor;->getMatrixComponent([FII)F

    move-result v8

    mul-float v7, v7, v8

    add-float/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iget-object v6, v0, Lnet/sourceforge/opencamera/GyroSensor;->temp2Matrix:[F

    .line 336
    invoke-static {v6, v1, v4, v5}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->temp2Matrix:[F

    iget-object v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    const/16 v4, 0x9

    .line 340
    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static getMatrixComponent([FII)F
    .locals 0

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    .line 123
    aget p0, p0, p1

    return p0
.end method

.method private static setMatrixComponent([FIIF)V
    .locals 0

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    .line 129
    aput p3, p0, p1

    return-void
.end method

.method private setToIdentity()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x9

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    .line 97
    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 99
    aput v4, v1, v0

    const/4 v5, 0x4

    .line 100
    aput v4, v1, v5

    const/16 v5, 0x8

    .line 101
    aput v4, v1, v5

    iget-object v4, p0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrixGyroOnly:[F

    .line 102
    invoke-static {v1, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lnet/sourceforge/opencamera/GyroSensor;->initAccelVector:[F

    .line 105
    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->has_init_accel:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->has_original_rotation_matrix:Z

    return-void
.end method

.method static setVector([FFFF)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    aput p1, p0, v0

    const/4 p1, 0x1

    .line 116
    aput p2, p0, p1

    const/4 p1, 0x2

    .line 117
    aput p3, p0, p1

    return-void
.end method

.method private transformTransposeVector([F[F[F)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    .line 150
    aput v3, p1, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 152
    aget v4, p1, v1

    invoke-static {p2, v3, v1}, Lnet/sourceforge/opencamera/GyroSensor;->getMatrixComponent([FII)F

    move-result v5

    aget v6, p3, v3

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    aput v4, p1, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static transformVector([F[F[F)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    .line 137
    aput v3, p0, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 139
    aget v4, p0, v1

    invoke-static {p1, v1, v3}, Lnet/sourceforge/opencamera/GyroSensor;->getMatrixComponent([FII)F

    move-result v5

    aget v6, p2, v3

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    aput v4, p0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addTarget(FFF)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    iget-object p1, p0, Lnet/sourceforge/opencamera/GyroSensor;->targetVectors:Ljava/util/List;

    .line 219
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clearTarget()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->hasTarget:Z

    iget-object v1, p0, Lnet/sourceforge/opencamera/GyroSensor;->targetVectors:Ljava/util/List;

    .line 224
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sourceforge/opencamera/GyroSensor;->targetCallback:Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->has_lastTargetAngle:Z

    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->lastTargetAngle:F

    return-void
.end method

.method disableSensors()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 181
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method disableTargetCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->targetCallback:Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;

    return-void
.end method

.method enableSensors()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->has_rotationVector:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->has_gyroVector:Z

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/GyroSensor;->accelVector:[F

    const/4 v2, 0x0

    .line 167
    aput v2, v1, v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/GyroSensor;->rotationVector:[F

    .line 168
    aput v2, v1, v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/GyroSensor;->gyroVector:[F

    .line 169
    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->mSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/GyroSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 173
    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->mSensorAccel:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lnet/sourceforge/opencamera/GyroSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 175
    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    return-void
.end method

.method public getRelativeInverseVector([F[F)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    .line 637
    invoke-direct {p0, p1, v0, p2}, Lnet/sourceforge/opencamera/GyroSensor;->transformTransposeVector([F[F[F)V

    return-void
.end method

.method public getRelativeInverseVectorGyroOnly([F[F)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrixGyroOnly:[F

    .line 641
    invoke-direct {p0, p1, v0, p2}, Lnet/sourceforge/opencamera/GyroSensor;->transformTransposeVector([F[F[F)V

    return-void
.end method

.method public getRotationMatrix([F)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 645
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method hasSensors()Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->mSensorAccel:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasTarget()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->hasTarget:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->is_recording:Z

    return v0
.end method

.method isTargetAchieved()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->hasTarget:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->targetAchieved:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpright()I
    .locals 1

    iget v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->is_upright:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 358
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const-wide v3, 0x3ee4f8b588e368f1L    # 1.0E-5

    const v5, 0x3e4ccccc    # 0.19999999f

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v2, v11, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v9, :cond_0

    iget-object v12, v0, Lnet/sourceforge/opencamera/GyroSensor;->accelVector:[F

    .line 362
    aget v13, v12, v2

    mul-float v13, v13, v6

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v2

    mul-float v14, v14, v5

    add-float/2addr v13, v14

    aput v13, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->accelVector:[F

    .line 365
    aget v2, v1, v10

    mul-float v2, v2, v2

    aget v5, v1, v11

    mul-float v5, v5, v5

    add-float/2addr v2, v5

    aget v1, v1, v7

    mul-float v1, v1, v1

    add-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v5, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v12, v1, v5

    if-lez v12, :cond_1

    iget-object v5, v0, Lnet/sourceforge/opencamera/GyroSensor;->accelVector:[F

    .line 367
    aget v6, v5, v10

    float-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v1

    double-to-float v6, v12

    aput v6, v5, v10

    .line 368
    aget v6, v5, v11

    float-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v1

    double-to-float v6, v12

    aput v6, v5, v11

    .line 369
    aget v6, v5, v7

    float-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v1

    double-to-float v1, v12

    aput v1, v5, v7

    :cond_1
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->has_init_accel:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->accelVector:[F

    iget-object v2, v0, Lnet/sourceforge/opencamera/GyroSensor;->initAccelVector:[F

    .line 373
    invoke-static {v1, v10, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v11, v0, Lnet/sourceforge/opencamera/GyroSensor;->has_init_accel:Z

    .line 377
    :cond_2
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/GyroSensor;->adjustGyroForAccel()V

    goto/16 :goto_d

    .line 379
    :cond_3
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v12, 0x4

    const/16 v13, 0x9

    if-ne v2, v12, :cond_e

    iget-boolean v2, v0, Lnet/sourceforge/opencamera/GyroSensor;->has_gyroVector:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_5

    iget-object v5, v0, Lnet/sourceforge/opencamera/GyroSensor;->gyroVector:[F

    .line 384
    aget v6, v5, v2

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v6, v6, v12

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v2

    mul-float v14, v14, v12

    add-float/2addr v6, v14

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 388
    :cond_4
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v0, Lnet/sourceforge/opencamera/GyroSensor;->gyroVector:[F

    invoke-static {v2, v10, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v11, v0, Lnet/sourceforge/opencamera/GyroSensor;->has_gyroVector:Z

    :cond_5
    iget-wide v5, v0, Lnet/sourceforge/opencamera/GyroSensor;->timestamp:J

    const-wide/16 v14, 0x0

    cmp-long v2, v5, v14

    if-eqz v2, :cond_d

    .line 395
    iget-wide v5, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v14, v0, Lnet/sourceforge/opencamera/GyroSensor;->timestamp:J

    sub-long/2addr v5, v14

    long-to-float v2, v5

    const v5, 0x3089705f    # 1.0E-9f

    mul-float v2, v2, v5

    iget-object v5, v0, Lnet/sourceforge/opencamera/GyroSensor;->gyroVector:[F

    .line 397
    aget v6, v5, v10

    .line 398
    aget v12, v5, v11

    .line 399
    aget v5, v5, v7

    mul-float v14, v6, v6

    mul-float v15, v12, v12

    add-float/2addr v14, v15

    mul-float v15, v5, v5

    add-float/2addr v14, v15

    float-to-double v14, v14

    .line 402
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    cmpl-double v16, v14, v3

    if-lez v16, :cond_6

    float-to-double v3, v6

    .line 407
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v14

    double-to-float v6, v3

    float-to-double v3, v12

    .line 408
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v14

    double-to-float v12, v3

    float-to-double v3, v5

    .line 409
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v14

    double-to-float v5, v3

    :cond_6
    float-to-double v2, v2

    .line 416
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v14, v2

    .line 417
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 418
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->deltaRotationVector:[F

    mul-float v6, v6, v2

    .line 419
    aput v6, v4, v10

    mul-float v12, v12, v2

    .line 420
    aput v12, v4, v11

    mul-float v2, v2, v5

    .line 421
    aput v2, v4, v7

    .line 422
    aput v3, v4, v9

    iget-object v2, v0, Lnet/sourceforge/opencamera/GyroSensor;->deltaRotationMatrix:[F

    .line 428
    invoke-static {v2, v4}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v9, :cond_9

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v9, :cond_8

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    if-ge v4, v9, :cond_7

    iget-object v6, v0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    .line 437
    invoke-static {v6, v2, v4}, Lnet/sourceforge/opencamera/GyroSensor;->getMatrixComponent([FII)F

    move-result v6

    iget-object v12, v0, Lnet/sourceforge/opencamera/GyroSensor;->deltaRotationMatrix:[F

    invoke-static {v12, v4, v3}, Lnet/sourceforge/opencamera/GyroSensor;->getMatrixComponent([FII)F

    move-result v12

    mul-float v6, v6, v12

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    iget-object v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    .line 439
    invoke-static {v4, v2, v3, v5}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    iget-object v2, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    iget-object v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    .line 443
    invoke-static {v2, v10, v3, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v9, :cond_c

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v9, :cond_b

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    if-ge v4, v9, :cond_a

    iget-object v6, v0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrixGyroOnly:[F

    .line 450
    invoke-static {v6, v2, v4}, Lnet/sourceforge/opencamera/GyroSensor;->getMatrixComponent([FII)F

    move-result v6

    iget-object v12, v0, Lnet/sourceforge/opencamera/GyroSensor;->deltaRotationMatrix:[F

    invoke-static {v12, v4, v3}, Lnet/sourceforge/opencamera/GyroSensor;->getMatrixComponent([FII)F

    move-result v12

    mul-float v6, v6, v12

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    iget-object v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    .line 452
    invoke-static {v4, v2, v3, v5}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    iget-object v2, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    iget-object v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrixGyroOnly:[F

    .line 455
    invoke-static {v2, v10, v3, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/GyroSensor;->adjustGyroForAccel()V

    .line 469
    :cond_d
    iget-wide v1, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->timestamp:J

    goto/16 :goto_d

    .line 471
    :cond_e
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_f

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_16

    :cond_f
    iget-boolean v2, v0, Lnet/sourceforge/opencamera/GyroSensor;->has_rotationVector:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v9, :cond_11

    iget-object v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->rotationVector:[F

    .line 477
    aget v4, v3, v2

    mul-float v4, v4, v6

    iget-object v12, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v12, v2

    mul-float v12, v12, v5

    add-float/2addr v4, v12

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 481
    :cond_10
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->rotationVector:[F

    invoke-static {v2, v10, v3, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v11, v0, Lnet/sourceforge/opencamera/GyroSensor;->has_rotationVector:Z

    :cond_11
    iget-object v2, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    iget-object v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->rotationVector:[F

    .line 485
    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-boolean v2, v0, Lnet/sourceforge/opencamera/GyroSensor;->has_original_rotation_matrix:Z

    if-nez v2, :cond_13

    iget-object v2, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    iget-object v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->originalRotationMatrix:[F

    .line 488
    invoke-static {v2, v10, v3, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v9

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_12

    const/4 v1, 0x1

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->has_original_rotation_matrix:Z

    :cond_13
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v9, :cond_16

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v9, :cond_15

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v3, v9, :cond_14

    iget-object v5, v0, Lnet/sourceforge/opencamera/GyroSensor;->originalRotationMatrix:[F

    .line 498
    invoke-static {v5, v3, v1}, Lnet/sourceforge/opencamera/GyroSensor;->getMatrixComponent([FII)F

    move-result v5

    iget-object v6, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempMatrix:[F

    invoke-static {v6, v3, v2}, Lnet/sourceforge/opencamera/GyroSensor;->getMatrixComponent([FII)F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_14
    iget-object v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    .line 500
    invoke-static {v3, v1, v2, v4}, Lnet/sourceforge/opencamera/GyroSensor;->setMatrixComponent([FIIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    :goto_d
    iget-boolean v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->hasTarget:Z

    if-eqz v1, :cond_1d

    iput-boolean v10, v0, Lnet/sourceforge/opencamera/GyroSensor;->targetAchieved:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    iget-object v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->targetVectors:Ljava/util/List;

    .line 515
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1c

    iget-object v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->targetVectors:Ljava/util/List;

    .line 516
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iget-object v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->inVector:[F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 518
    invoke-static {v4, v8, v5, v8}, Lnet/sourceforge/opencamera/GyroSensor;->setVector([FFFF)V

    iget-object v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempVector:[F

    iget-object v5, v0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    iget-object v6, v0, Lnet/sourceforge/opencamera/GyroSensor;->inVector:[F

    .line 519
    invoke-static {v4, v5, v6}, Lnet/sourceforge/opencamera/GyroSensor;->transformVector([F[F[F)V

    iput v10, v0, Lnet/sourceforge/opencamera/GyroSensor;->is_upright:I

    iget-object v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempVector:[F

    .line 532
    aget v5, v4, v10

    .line 533
    aget v6, v4, v11

    .line 534
    aget v4, v4, v7

    .line 538
    aget v9, v3, v10

    mul-float v12, v5, v9

    aget v13, v3, v11

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    aget v14, v3, v7

    mul-float v15, v4, v14

    add-float/2addr v12, v15

    mul-float v9, v9, v12

    sub-float/2addr v5, v9

    mul-float v13, v13, v12

    sub-float/2addr v6, v13

    mul-float v12, v12, v14

    sub-float/2addr v4, v12

    mul-float v9, v5, v5

    mul-float v6, v6, v6

    add-float/2addr v9, v6

    mul-float v6, v4, v4

    add-float/2addr v9, v6

    float-to-double v12, v9

    .line 546
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v6, v12, v14

    if-lez v6, :cond_18

    float-to-double v5, v5

    .line 552
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v12

    double-to-float v5, v5

    float-to-double v14, v4

    .line 554
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v12

    double-to-float v4, v14

    neg-float v4, v4

    mul-float v6, v4, v4

    add-float/2addr v6, v8

    mul-float v9, v5, v5

    add-float/2addr v6, v9

    float-to-double v12, v6

    .line 563
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v6, v12

    float-to-double v12, v6

    .line 564
    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    double-to-float v6, v12

    iget-object v9, v0, Lnet/sourceforge/opencamera/GyroSensor;->inVector:[F

    const/high16 v12, -0x40800000    # -1.0f

    .line 566
    invoke-static {v9, v8, v8, v12}, Lnet/sourceforge/opencamera/GyroSensor;->setVector([FFFF)V

    iget-object v9, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempVector:[F

    iget-object v12, v0, Lnet/sourceforge/opencamera/GyroSensor;->currentRotationMatrix:[F

    iget-object v13, v0, Lnet/sourceforge/opencamera/GyroSensor;->inVector:[F

    .line 567
    invoke-static {v9, v12, v13}, Lnet/sourceforge/opencamera/GyroSensor;->transformVector([F[F[F)V

    .line 569
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v9, v0, Lnet/sourceforge/opencamera/GyroSensor;->uprightAngleTol:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_18

    iget-object v6, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempVector:[F

    .line 570
    aget v9, v6, v10

    mul-float v4, v4, v9

    aget v9, v6, v11

    mul-float v9, v9, v8

    add-float/2addr v4, v9

    aget v6, v6, v7

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    cmpg-float v4, v4, v8

    if-gez v4, :cond_17

    const/4 v4, 0x1

    goto :goto_f

    :cond_17
    const/4 v4, -0x1

    :goto_f
    iput v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->is_upright:I

    :cond_18
    iget-object v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->tempVector:[F

    .line 575
    aget v5, v4, v10

    aget v6, v3, v10

    mul-float v5, v5, v6

    aget v6, v4, v11

    aget v9, v3, v11

    mul-float v6, v6, v9

    add-float/2addr v5, v6

    aget v4, v4, v7

    aget v3, v3, v7

    mul-float v4, v4, v3

    add-float/2addr v5, v4

    float-to-double v3, v5

    .line 576
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->is_upright:I

    if-nez v4, :cond_1a

    iget v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->targetAngle:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1a

    iput-boolean v11, v0, Lnet/sourceforge/opencamera/GyroSensor;->targetAchieved:Z

    iget-object v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->targetCallback:Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;

    if-eqz v4, :cond_19

    iget-boolean v5, v0, Lnet/sourceforge/opencamera/GyroSensor;->has_lastTargetAngle:Z

    if-eqz v5, :cond_19

    iget v5, v0, Lnet/sourceforge/opencamera/GyroSensor;->lastTargetAngle:F

    cmpl-float v5, v3, v5

    if-lez v5, :cond_19

    .line 591
    invoke-interface {v4, v1}, Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;->onAchieved(I)V

    :cond_19
    iput-boolean v11, v0, Lnet/sourceforge/opencamera/GyroSensor;->has_lastTargetAngle:Z

    iput v3, v0, Lnet/sourceforge/opencamera/GyroSensor;->lastTargetAngle:F

    :cond_1a
    iget v4, v0, Lnet/sourceforge/opencamera/GyroSensor;->tooFarAngle:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1b

    add-int/lit8 v2, v2, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    :cond_1c
    if-lez v2, :cond_1d

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->targetVectors:Ljava/util/List;

    .line 608
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v2, v1, :cond_1d

    iget-object v1, v0, Lnet/sourceforge/opencamera/GyroSensor;->targetCallback:Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;

    if-eqz v1, :cond_1d

    .line 610
    invoke-interface {v1}, Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;->onTooFar()V

    :cond_1d
    return-void
.end method

.method setTarget(FFFFFFLnet/sourceforge/opencamera/GyroSensor$TargetCallback;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->hasTarget:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->targetVectors:Ljava/util/List;

    .line 207
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/GyroSensor;->addTarget(FFF)V

    iput p4, p0, Lnet/sourceforge/opencamera/GyroSensor;->targetAngle:F

    iput p5, p0, Lnet/sourceforge/opencamera/GyroSensor;->uprightAngleTol:F

    iput p6, p0, Lnet/sourceforge/opencamera/GyroSensor;->tooFarAngle:F

    iput-object p7, p0, Lnet/sourceforge/opencamera/GyroSensor;->targetCallback:Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/GyroSensor;->has_lastTargetAngle:Z

    const/4 p1, 0x0

    iput p1, p0, Lnet/sourceforge/opencamera/GyroSensor;->lastTargetAngle:F

    return-void
.end method

.method startRecording()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->is_recording:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->timestamp:J

    .line 189
    invoke-direct {p0}, Lnet/sourceforge/opencamera/GyroSensor;->setToIdentity()V

    return-void
.end method

.method stopRecording()V
    .locals 2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->is_recording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->is_recording:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->timestamp:J

    :cond_0
    return-void
.end method

.method public testForceTargetAchieved(I)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/GyroSensor;->targetCallback:Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;

    if-eqz v0, :cond_0

    .line 654
    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;->onAchieved(I)V

    :cond_0
    return-void
.end method
