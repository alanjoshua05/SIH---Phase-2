.class public Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$LoadSettingsFileChooserDialog;
.super Lnet/sourceforge/opencamera/ui/FolderChooserDialog;
.source "PreferenceSubSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadSettingsFileChooserDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 237
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$LoadSettingsFileChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/opencamera/MainActivity;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$LoadSettingsFileChooserDialog;->getChosenFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getSettingsManager()Lnet/sourceforge/opencamera/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/SettingsManager;->loadSettings(Ljava/lang/String;)Z

    .line 246
    :cond_0
    invoke-super {p0, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
