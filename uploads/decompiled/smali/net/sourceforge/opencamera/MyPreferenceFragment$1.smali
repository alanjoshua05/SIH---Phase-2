.class Lnet/sourceforge/opencamera/MyPreferenceFragment$1;
.super Ljava/lang/Object;
.source "MyPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MyPreferenceFragment;Landroid/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$1;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    iput-object p2, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$1;->val$pref:Landroid/preference/Preference;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$1;->val$pref:Landroid/preference/Preference;

    .line 289
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_camera_api"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$1;->val$pref:Landroid/preference/Preference;

    .line 290
    check-cast p1, Landroid/preference/ListPreference;

    .line 291
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MyPreferenceFragment$1;->this$0:Lnet/sourceforge/opencamera/MyPreferenceFragment;

    .line 298
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/MainActivity;

    .line 299
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->restartOpenCamera()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
