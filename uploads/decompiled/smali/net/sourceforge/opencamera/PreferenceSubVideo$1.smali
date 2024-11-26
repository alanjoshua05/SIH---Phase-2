.class Lnet/sourceforge/opencamera/PreferenceSubVideo$1;
.super Ljava/lang/Object;
.source "PreferenceSubVideo.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubVideo;->setupDependencies()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/PreferenceSubVideo;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubVideo;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubVideo$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubVideo;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 199
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubVideo$1;->this$0:Lnet/sourceforge/opencamera/PreferenceSubVideo;

    .line 200
    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->access$000(Lnet/sourceforge/opencamera/PreferenceSubVideo;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
