.class public final Lh/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lh/i0;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u0007\u001a\u001f\u0010\u0008\u001a\u00020\u00012\n\u0010\t\u001a\u00020\u0001\"\u00020\u0006H\u0087\u0008\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u000b\n\u0005\u0008\u009920\u0001\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "UIntArray",
        "Lkotlin/UIntArray;",
        "size",
        "",
        "init",
        "Lkotlin/Function1;",
        "Lkotlin/UInt;",
        "(ILkotlin/jvm/functions/Function1;)[I",
        "uintArrayOf",
        "elements",
        "uintArrayOf--ajY-9A",
        "([I)[I",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final a(ILh/d3/w/l;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lh/d3/w/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lh/w1;",
            ">;)[I"
        }
    .end annotation

    .annotation build Lh/g1;
        version = "1.3"
    .end annotation

    .annotation build Lh/t;
    .end annotation

    .annotation build Lh/z2/f;
    .end annotation

    const-string v0, "init"

    invoke-static {p1, v0}, Lh/d3/x/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lh/d3/w/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/w1;

    invoke-virtual {v2}, Lh/w1;->p0()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lh/x1;->d([I)[I

    move-result-object p0

    return-object p0
.end method

.method private static final varargs b([I)[I
    .locals 1
    .annotation build Lh/g1;
        version = "1.3"
    .end annotation

    .annotation build Lh/t;
    .end annotation

    .annotation build Lh/z2/f;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lh/d3/x/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
