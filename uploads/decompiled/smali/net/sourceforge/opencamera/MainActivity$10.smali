.class Lnet/sourceforge/opencamera/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$10;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 1492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$10;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 1499
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->onAccelerometerSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method
