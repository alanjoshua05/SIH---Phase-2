.class public Lnet/sourceforge/opencamera/PreferenceSubRemoteCtrl;
.super Lnet/sourceforge/opencamera/PreferenceSubScreen;
.source "PreferenceSubRemoteCtrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceSubRemoteCtrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lnet/sourceforge/opencamera/PreferenceSubScreen;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubScreen;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130008

    .line 14
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubRemoteCtrl;->addPreferencesFromResource(I)V

    return-void
.end method
