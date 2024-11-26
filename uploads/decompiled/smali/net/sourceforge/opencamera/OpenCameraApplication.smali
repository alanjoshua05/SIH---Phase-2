.class public Lnet/sourceforge/opencamera/OpenCameraApplication;
.super Landroid/app/Application;
.source "OpenCameraApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenCameraApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private checkAppReplacingState()V
    .locals 2

    .line 25
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/OpenCameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "OpenCameraApplication"

    const-string v1, "app is replacing, kill"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    invoke-direct {p0}, Lnet/sourceforge/opencamera/OpenCameraApplication;->checkAppReplacingState()V

    return-void
.end method
