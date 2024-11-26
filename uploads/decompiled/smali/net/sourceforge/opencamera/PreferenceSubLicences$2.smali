.class Lnet/sourceforge/opencamera/PreferenceSubLicences$2;
.super Ljava/lang/Object;
.source "PreferenceSubLicences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubLicences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/PreferenceSubLicences;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubLicences;Landroid/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubLicences$2;->this$0:Lnet/sourceforge/opencamera/PreferenceSubLicences;

    iput-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubLicences$2;->val$pref:Landroid/preference/Preference;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubLicences$2;->val$pref:Landroid/preference/Preference;

    .line 45
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_licence_androidx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubLicences$2;->this$0:Lnet/sourceforge/opencamera/PreferenceSubLicences;

    const v1, 0x7f1001d0

    const-string v2, "androidx_LICENSE-2.0.txt"

    .line 49
    invoke-static {p1, v1, v2}, Lnet/sourceforge/opencamera/PreferenceSubLicences;->access$000(Lnet/sourceforge/opencamera/PreferenceSubLicences;ILjava/lang/String;)V

    :cond_0
    return v0
.end method
