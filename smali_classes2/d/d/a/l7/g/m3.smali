.class public interface abstract Ld/d/a/l7/g/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/d/a/l7/a;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ld/d/a/l7/g/m3;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ld/d/a/l7/d;->i()Ld/d/a/l7/d;

    move-result-object v0

    const-class v1, Ld/d/a/l7/g/m3;

    invoke-virtual {v0, v1}, Ld/d/a/l7/d;->c(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Ld/d/a/l7/g/m3;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Ld/d/a/l7/d;->i()Ld/d/a/l7/d;

    move-result-object v0

    const-class v1, Ld/d/a/l7/g/m3;

    invoke-virtual {v0, v1}, Ld/d/a/l7/d;->a(Ljava/lang/Class;)Ld/d/a/l7/a;

    move-result-object v0

    check-cast v0, Ld/d/a/l7/g/m3;

    return-object v0
.end method


# virtual methods
.method public abstract Dg()Ld/o/t/g/b/e0;
.end method

.method public abstract I5()Z
.end method

.method public abstract N4(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loop"
        }
    .end annotation
.end method

.method public abstract Sb(Ld/o/t/g/b/e0;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "VPItem"
        }
    .end annotation
.end method

.method public abstract Ve()V
.end method

.method public abstract W4()Z
.end method

.method public abstract a()V
.end method

.method public abstract c3(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resetView",
            "animate"
        }
    .end annotation
.end method

.method public abstract f()V
.end method

.method public abstract isShow()Z
.end method

.method public abstract m0()V
.end method

.method public abstract o5(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "save"
        }
    .end annotation
.end method

.method public abstract show()V
.end method

.method public abstract u3(Ld/o/t/g/b/e0;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VPItem",
            "index"
        }
    .end annotation
.end method

.method public abstract v()V
.end method

.method public abstract ya()Z
.end method

.method public abstract z6()Z
.end method
