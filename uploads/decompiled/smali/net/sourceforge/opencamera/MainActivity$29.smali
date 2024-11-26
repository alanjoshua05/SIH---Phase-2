.class Lnet/sourceforge/opencamera/MainActivity$29;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->lockScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$29;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$29;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5297
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$3000(Lnet/sourceforge/opencamera/MainActivity;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
