.class Lnet/sourceforge/opencamera/ui/DrawPreview$1$1;
.super Ljava/lang/Object;
.source "DrawPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/DrawPreview$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/ui/DrawPreview$1;

.field final synthetic val$new_free_memory_gb:F


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/DrawPreview$1;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1$1;->this$1:Lnet/sourceforge/opencamera/ui/DrawPreview$1;

    iput p2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1$1;->val$new_free_memory_gb:F

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1$1;->this$1:Lnet/sourceforge/opencamera/ui/DrawPreview$1;

    const/4 v1, 0x1

    iget v2, p0, Lnet/sourceforge/opencamera/ui/DrawPreview$1$1;->val$new_free_memory_gb:F

    .line 178
    invoke-static {v0, v1, v2}, Lnet/sourceforge/opencamera/ui/DrawPreview$1;->access$100(Lnet/sourceforge/opencamera/ui/DrawPreview$1;ZF)V

    return-void
.end method
