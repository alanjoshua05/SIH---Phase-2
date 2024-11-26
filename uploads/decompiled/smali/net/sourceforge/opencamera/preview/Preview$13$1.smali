.class Lnet/sourceforge/opencamera/preview/Preview$13$1;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview$13;->onError(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/preview/Preview$13;

.field final synthetic val$final_extra:I

.field final synthetic val$final_what:I


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview$13;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$13$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$13;

    iput p2, p0, Lnet/sourceforge/opencamera/preview/Preview$13$1;->val$final_what:I

    iput p3, p0, Lnet/sourceforge/opencamera/preview/Preview$13$1;->val$final_extra:I

    .line 5832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$13$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$13;

    .line 5835
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$13;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview$13$1;->val$final_what:I

    iget v2, p0, Lnet/sourceforge/opencamera/preview/Preview$13$1;->val$final_extra:I

    invoke-static {v0, v1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->access$3700(Lnet/sourceforge/opencamera/preview/Preview;II)V

    return-void
.end method
