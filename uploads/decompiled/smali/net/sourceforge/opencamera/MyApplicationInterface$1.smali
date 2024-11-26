.class Lnet/sourceforge/opencamera/MyApplicationInterface$1;
.super Ljava/lang/Object;
.source "MyApplicationInterface.java"

# interfaces
.implements Lnet/sourceforge/opencamera/GyroSensor$TargetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MyApplicationInterface;->setNextPanoramaPoint(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MyApplicationInterface;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAchieved(I)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1990
    invoke-static {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$000(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/GyroSensor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/GyroSensor;->disableTargetCallback()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1991
    invoke-static {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$100(Lnet/sourceforge/opencamera/MyApplicationInterface;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1992
    :goto_0
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$202(Lnet/sourceforge/opencamera/MyApplicationInterface;Z)Z

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/MyApplicationInterface$1;->this$0:Lnet/sourceforge/opencamera/MyApplicationInterface;

    .line 1996
    invoke-static {p1}, Lnet/sourceforge/opencamera/MyApplicationInterface;->access$300(Lnet/sourceforge/opencamera/MyApplicationInterface;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lnet/sourceforge/opencamera/MainActivity;->takePicturePressed(ZZ)V

    return-void
.end method

.method public onTooFar()V
    .locals 0

    return-void
.end method
