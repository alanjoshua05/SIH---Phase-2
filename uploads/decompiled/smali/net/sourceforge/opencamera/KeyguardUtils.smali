.class public Lnet/sourceforge/opencamera/KeyguardUtils;
.super Ljava/lang/Object;
.source "KeyguardUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requireKeyguard(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    const-string v0, "keyguard"

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 16
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/KeyguardManager;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lnet/sourceforge/opencamera/KeyguardUtils$1;

    invoke-direct {v1, p1}, Lnet/sourceforge/opencamera/KeyguardUtils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/KeyguardManager;Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 31
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method
