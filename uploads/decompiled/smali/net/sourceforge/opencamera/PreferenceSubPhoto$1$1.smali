.class Lnet/sourceforge/opencamera/PreferenceSubPhoto$1$1;
.super Ljava/lang/Object;
.source "PreferenceSubPhoto.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1$1;->this$1:Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1$1;->this$1:Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;

    .line 145
    iget-object p1, p1, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "done_raw_info"

    const/4 v0, 0x1

    .line 146
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
