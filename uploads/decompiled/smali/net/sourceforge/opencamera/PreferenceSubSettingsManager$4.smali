.class Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$4;
.super Ljava/lang/Object;
.source "PreferenceSubSettingsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$4;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$4;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    .line 196
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/MainActivity;

    .line 201
    new-instance p2, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$LoadSettingsFileChooserDialog;

    invoke-direct {p2}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$LoadSettingsFileChooserDialog;-><init>()V

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p2, v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->setShowDCIMShortcut(Z)V

    .line 203
    invoke-virtual {p2, v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->setShowNewFolderButton(Z)V

    .line 204
    invoke-virtual {p2, v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->setModeFolder(Z)V

    const-string v0, ".xml"

    .line 205
    invoke-virtual {p2, v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->setExtension(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->getSettingsFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->setStartFolder(Ljava/io/File;)V

    .line 207
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->setMaxParent(Ljava/io/File;)V

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$4;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    .line 211
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "FOLDER_FRAGMENT"

    invoke-virtual {p2, p1, v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
