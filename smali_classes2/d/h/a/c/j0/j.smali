.class public Ld/h/a/c/j0/j;
.super Ld/h/a/c/r0/v/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/h/a/c/r0/v/l0<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/nio/file/Path;

    invoke-direct {p0, v0}, Ld/h/a/c/r0/v/l0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public M(Ljava/nio/file/Path;Ld/h/a/b/i;Ld/h/a/c/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ld/h/a/b/i;->l1(Ljava/lang/String;)V

    return-void
.end method

.method public N(Ljava/nio/file/Path;Ld/h/a/b/i;Ld/h/a/c/e0;Ld/h/a/c/o0/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/nio/file/Path;

    sget-object v1, Ld/h/a/b/p;->p:Ld/h/a/b/p;

    .line 2
    invoke-virtual {p4, p1, v0, v1}, Ld/h/a/c/o0/h;->h(Ljava/lang/Object;Ljava/lang/Class;Ld/h/a/b/p;)Ld/h/a/b/l0/c;

    move-result-object v0

    .line 3
    invoke-virtual {p4, p2, v0}, Ld/h/a/c/o0/h;->o(Ld/h/a/b/i;Ld/h/a/b/l0/c;)Ld/h/a/b/l0/c;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Ld/h/a/c/j0/j;->M(Ljava/nio/file/Path;Ld/h/a/b/i;Ld/h/a/c/e0;)V

    .line 5
    invoke-virtual {p4, p2, v0}, Ld/h/a/c/o0/h;->v(Ld/h/a/b/i;Ld/h/a/b/l0/c;)Ld/h/a/b/l0/c;

    return-void
.end method

.method public bridge synthetic m(Ljava/lang/Object;Ld/h/a/b/i;Ld/h/a/c/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Ld/h/a/c/j0/j;->M(Ljava/nio/file/Path;Ld/h/a/b/i;Ld/h/a/c/e0;)V

    return-void
.end method

.method public bridge synthetic n(Ljava/lang/Object;Ld/h/a/b/i;Ld/h/a/c/e0;Ld/h/a/c/o0/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3, p4}, Ld/h/a/c/j0/j;->N(Ljava/nio/file/Path;Ld/h/a/b/i;Ld/h/a/c/e0;Ld/h/a/c/o0/h;)V

    return-void
.end method
