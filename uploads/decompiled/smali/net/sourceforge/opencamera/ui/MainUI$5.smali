.class Lnet/sourceforge/opencamera/ui/MainUI$5;
.super Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;
.source "MainUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/MainUI;->setupExposureUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/MainUI;

.field final synthetic val$preview:Lnet/sourceforge/opencamera/preview/Preview;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/MainUI;Landroid/content/SharedPreferences;Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2113
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$sharedPreferences:Landroid/content/SharedPreferences;

    .line 2118
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "preference_iso"

    const-string v3, "auto"

    .line 2119
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2122
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2125
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/preview/Preview;->supportsISORange()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2126
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "ISO: "

    const/4 v7, 0x0

    const-string v8, "preference_exposure_time"

    const/4 v9, 0x1

    const-string v10, ""

    if-eqz v4, :cond_0

    const-wide/32 v1, 0x1fca055

    .line 2130
    invoke-interface {v0, v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1, v5, v9}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;IZ)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2133
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1, v9, v10}, Lnet/sourceforge/opencamera/MainActivity;->updateForSettings(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 2135
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "m"

    if-eqz v3, :cond_4

    .line 2138
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2140
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultHasIso()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2141
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultIso()I

    move-result p1

    .line 2144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "800"

    .line 2152
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2158
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultHasExposureTime()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2159
    invoke-virtual {v1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->captureResultExposureTime()J

    move-result-wide v1

    .line 2162
    invoke-interface {v0, v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2169
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1, v5, v9}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;IZ)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2171
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object p1

    invoke-virtual {p1, v9, v10}, Lnet/sourceforge/opencamera/MainActivity;->updateForSettings(ZLjava/lang/String;)V

    goto :goto_1

    .line 2176
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2183
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2184
    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->parseManualISOValue(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_7

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2190
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v0

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2191
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/opencamera/MainActivity;->getManualSeekbars()Lnet/sourceforge/opencamera/ui/ManualSeekbars;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->setISOProgressBarToClosest(Landroid/widget/SeekBar;J)V

    goto :goto_1

    .line 2196
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2197
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2198
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setISO(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    :cond_7
    :goto_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$5;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2202
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->setupExposureUI()V

    return-void
.end method
