.class Lnet/sourceforge/opencamera/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->setupSystemUiVisibilityListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private has_last_system_orientation:Z

.field private last_system_orientation:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3652
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object p1

    .line 3654
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$40;->$SwitchMap$net$sourceforge$opencamera$MainActivity$SystemOrientation:[I

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 3665
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unknown system_orientation?!: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MainActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    .line 3662
    :cond_0
    invoke-static {p2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/view/WindowInsets;)I

    move-result v0

    goto :goto_0

    .line 3659
    :cond_1
    invoke-static {p2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsets;)I

    move-result v0

    goto :goto_0

    .line 3656
    :cond_2
    invoke-static {p2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;)I

    move-result v0

    :goto_0
    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MainActivity$16;->has_last_system_orientation:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity$16;->last_system_orientation:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3670
    invoke-static {v2}, Lnet/sourceforge/opencamera/MainActivity;->access$1700(Lnet/sourceforge/opencamera/MainActivity;)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3674
    invoke-static {v2, v0}, Lnet/sourceforge/opencamera/MainActivity;->access$1702(Lnet/sourceforge/opencamera/MainActivity;I)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3678
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$1800(Lnet/sourceforge/opencamera/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3690
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3691
    new-instance v2, Lnet/sourceforge/opencamera/MainActivity$16$1;

    invoke-direct {v2, p0}, Lnet/sourceforge/opencamera/MainActivity$16$1;-><init>(Lnet/sourceforge/opencamera/MainActivity$16;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3713
    invoke-static {v2}, Lnet/sourceforge/opencamera/MainActivity;->access$1700(Lnet/sourceforge/opencamera/MainActivity;)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3716
    invoke-static {v2, v0}, Lnet/sourceforge/opencamera/MainActivity;->access$1702(Lnet/sourceforge/opencamera/MainActivity;I)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3722
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$1800(Lnet/sourceforge/opencamera/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$1700(Lnet/sourceforge/opencamera/MainActivity;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3725
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->access$1900(Lnet/sourceforge/opencamera/MainActivity;Z)V

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity$16;->has_last_system_orientation:Z

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$16;->last_system_orientation:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3751
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
