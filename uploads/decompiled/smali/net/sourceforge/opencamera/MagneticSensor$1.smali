.class Lnet/sourceforge/opencamera/MagneticSensor$1;
.super Ljava/lang/Object;
.source "MagneticSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MagneticSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MagneticSensor;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MagneticSensor;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MagneticSensor$1;->this$0:Lnet/sourceforge/opencamera/MagneticSensor;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MagneticSensor$1;->this$0:Lnet/sourceforge/opencamera/MagneticSensor;

    .line 100
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/MagneticSensor;->access$002(Lnet/sourceforge/opencamera/MagneticSensor;I)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/MagneticSensor$1;->this$0:Lnet/sourceforge/opencamera/MagneticSensor;

    .line 101
    invoke-static {p1}, Lnet/sourceforge/opencamera/MagneticSensor;->access$100(Lnet/sourceforge/opencamera/MagneticSensor;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MagneticSensor$1;->this$0:Lnet/sourceforge/opencamera/MagneticSensor;

    .line 102
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MagneticSensor;->checkMagneticAccuracy()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MagneticSensor$1;->this$0:Lnet/sourceforge/opencamera/MagneticSensor;

    .line 117
    invoke-static {v0}, Lnet/sourceforge/opencamera/MagneticSensor;->access$200(Lnet/sourceforge/opencamera/MagneticSensor;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->onMagneticSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method
