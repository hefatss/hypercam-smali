.class public Lk/b/d/s/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/d/s/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lk/b/d/s/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lk/b/d/s/c$a;
    .locals 0

    .line 1
    new-instance p0, Lk/b/d/s/c$a;

    invoke-direct {p0, p1}, Lk/b/d/s/c$a;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lk/b/d/s/c$a;
    .locals 0

    .line 1
    new-array p0, p1, [Lk/b/d/s/c$a;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/d/s/c$a$a;->a(Landroid/os/Parcel;)Lk/b/d/s/c$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/d/s/c$a$a;->b(I)[Lk/b/d/s/c$a;

    move-result-object p0

    return-object p0
.end method
