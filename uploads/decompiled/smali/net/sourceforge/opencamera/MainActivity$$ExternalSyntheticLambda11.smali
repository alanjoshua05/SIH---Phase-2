.class public final synthetic Lnet/sourceforge/opencamera/MainActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$$ExternalSyntheticLambda11;->f$0:Lnet/sourceforge/opencamera/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$$ExternalSyntheticLambda11;->f$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->openSettings()V

    return-void
.end method
