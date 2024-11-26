.class Lnet/sourceforge/opencamera/MainActivity$24;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->createSaveFolderDialog()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final disallowed:Ljava/lang/String;

.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$24;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 4971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "|\\?*<\":>"

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$24;->disallowed:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    move p4, p2

    :goto_0
    const-string p6, ""

    if-ge p4, p3, :cond_1

    const-string v0, "|\\?*<\":>"

    .line 4976
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-object p6

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    if-nez p5, :cond_2

    .line 4981
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_2

    return-object p6

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
