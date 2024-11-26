.class Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState$1;
.super Ljava/lang/Object;
.source "MyEditTextPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;
    .locals 1

    .line 149
    new-instance v0, Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;

    invoke-direct {v0, p1}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState$1;->newArray(I)[Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;
    .locals 0

    .line 153
    new-array p1, p1, [Lnet/sourceforge/opencamera/ui/MyEditTextPreference$SavedState;

    return-object p1
.end method
