.class Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    iput-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->val$pref:Landroid/preference/Preference;

    iput-object p3, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->val$sharedPreferences:Landroid/content/SharedPreferences;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->val$pref:Landroid/preference/Preference;

    .line 157
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_calibrate_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 160
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    .line 161
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100139

    .line 162
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 163
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$1;-><init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;)V

    const v2, 0x7f100136

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$2;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$2;-><init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;)V

    const v2, 0x7f10013a

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 192
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$3;

    invoke-direct {v1, p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$3;-><init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 200
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    .line 201
    iget-object v1, v1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->dialogs:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method
