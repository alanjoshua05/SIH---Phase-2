.class Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$2;
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

.field final synthetic val$pref:Landroid/preference/Preference;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;Landroid/preference/Preference;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$2;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    iput-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$2;->val$pref:Landroid/preference/Preference;

    iput-object p3, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$2;->val$sharedPreferences:Landroid/content/SharedPreferences;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$2;->val$pref:Landroid/preference/Preference;

    .line 127
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_using_saf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$2;->val$sharedPreferences:Landroid/content/SharedPreferences;

    .line 130
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$2;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    .line 137
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/MainActivity;

    const v0, 0x7f10032d

    .line 138
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    .line 139
    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/MainActivity;->openFolderChooserDialogSAF(Z)V

    :cond_0
    return v1
.end method
