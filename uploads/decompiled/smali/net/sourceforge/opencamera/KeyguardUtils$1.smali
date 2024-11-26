.class Lnet/sourceforge/opencamera/KeyguardUtils$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "KeyguardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/KeyguardUtils;->requireKeyguard(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/KeyguardUtils$1;->val$callback:Ljava/lang/Runnable;

    .line 20
    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/KeyguardUtils$1;->val$callback:Ljava/lang/Runnable;

    .line 25
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
