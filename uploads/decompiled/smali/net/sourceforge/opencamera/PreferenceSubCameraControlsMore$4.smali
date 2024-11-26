.class Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$4;
.super Ljava/lang/Object;
.source "PreferenceSubCameraControlsMore.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->setupDependencies()V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$4;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 229
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$4;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    .line 230
    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->access$000(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
