.class Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$1;
.super Ljava/lang/Object;
.source "PreferenceSubCameraControlsMore.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    .line 81
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/MainActivity;

    .line 82
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/StorageUtils;->isUsingSAF()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/MainActivity;->openFolderChooserDialogSAF(Z)V

    return v1

    .line 86
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/MainActivity;->useScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->createSaveFolderDialog()Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 92
    new-instance v0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$1$1;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$1$1;-><init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$1;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    .line 101
    iget-object v0, v0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->dialogs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v1

    .line 105
    :cond_1
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/StorageUtils;->getImageFolder()Ljava/io/File;

    move-result-object p1

    .line 107
    new-instance v0, Lnet/sourceforge/opencamera/MyPreferenceFragment$SaveFolderChooserDialog;

    invoke-direct {v0}, Lnet/sourceforge/opencamera/MyPreferenceFragment$SaveFolderChooserDialog;-><init>()V

    .line 108
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->setStartFolder(Ljava/io/File;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    .line 109
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v2, "FOLDER_FRAGMENT"

    invoke-virtual {v0, p1, v2}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v1
.end method
