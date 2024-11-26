.class Lnet/sourceforge/opencamera/PreferenceSubPreview$1;
.super Ljava/lang/Object;
.source "PreferenceSubPreview.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubPreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/PreferenceSubPreview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubPreview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubPreview$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubPreview;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const-string p1, "preference_ghost_image_selected"

    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubPreview$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubPreview;

    .line 51
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/MainActivity;

    .line 52
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->openGhostImageChooserDialogSAF(Z)V

    :cond_0
    return p2
.end method
