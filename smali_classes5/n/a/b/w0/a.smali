.class public abstract Ln/a/b/w0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/a/b/k;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final c:Ln/a/b/w0/t/c;

.field private final d:Ln/a/b/w0/t/b;

.field private f:Ln/a/b/x0/h;

.field private g:Ln/a/b/x0/i;

.field private j:Ln/a/b/x0/b;

.field private m:Ln/a/b/x0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln/a/b/x0/c<",
            "Ln/a/b/y;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ln/a/b/x0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln/a/b/x0/e<",
            "Ln/a/b/v;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ln/a/b/w0/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln/a/b/w0/a;->f:Ln/a/b/x0/h;

    .line 3
    iput-object v0, p0, Ln/a/b/w0/a;->g:Ln/a/b/x0/i;

    .line 4
    iput-object v0, p0, Ln/a/b/w0/a;->j:Ln/a/b/x0/b;

    .line 5
    iput-object v0, p0, Ln/a/b/w0/a;->m:Ln/a/b/x0/c;

    .line 6
    iput-object v0, p0, Ln/a/b/w0/a;->n:Ln/a/b/x0/e;

    .line 7
    iput-object v0, p0, Ln/a/b/w0/a;->p:Ln/a/b/w0/o;

    .line 8
    invoke-virtual {p0}, Ln/a/b/w0/a;->e()Ln/a/b/w0/t/c;

    move-result-object v0

    iput-object v0, p0, Ln/a/b/w0/a;->c:Ln/a/b/w0/t/c;

    .line 9
    invoke-virtual {p0}, Ln/a/b/w0/a;->d()Ln/a/b/w0/t/b;

    move-result-object v0

    iput-object v0, p0, Ln/a/b/w0/a;->d:Ln/a/b/w0/t/b;

    return-void
.end method


# virtual methods
.method public Q(Ln/a/b/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln/a/b/q;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    .line 1
    invoke-static {p1, v0}, Ln/a/b/d1/a;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ln/a/b/w0/a;->a()V

    .line 3
    iget-object v0, p0, Ln/a/b/w0/a;->n:Ln/a/b/x0/e;

    invoke-interface {v0, p1}, Ln/a/b/x0/e;->a(Ln/a/b/u;)V

    .line 4
    iget-object p0, p0, Ln/a/b/w0/a;->p:Ln/a/b/w0/o;

    invoke-virtual {p0}, Ln/a/b/w0/o;->f()V

    return-void
.end method

.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public b(Ln/a/b/x0/g;Ln/a/b/x0/g;)Ln/a/b/w0/o;
    .locals 0

    .line 1
    new-instance p0, Ln/a/b/w0/o;

    invoke-direct {p0, p1, p2}, Ln/a/b/w0/o;-><init>(Ln/a/b/x0/g;Ln/a/b/x0/g;)V

    return-object p0
.end method

.method public b0()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Ln/a/b/l;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ln/a/b/w0/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    :try_start_0
    iget-object v0, p0, Ln/a/b/w0/a;->f:Ln/a/b/x0/h;

    invoke-interface {v0, v1}, Ln/a/b/x0/h;->b(I)Z

    .line 4
    invoke-virtual {p0}, Ln/a/b/w0/a;->l()Z

    move-result p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1

    :catch_1
    const/4 p0, 0x0

    return p0
.end method

.method public c(Ln/a/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln/a/b/q;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    .line 1
    invoke-static {p1, v0}, Ln/a/b/d1/a;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ln/a/b/w0/a;->a()V

    .line 3
    invoke-interface {p1}, Ln/a/b/p;->d()Ln/a/b/o;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Ln/a/b/w0/a;->c:Ln/a/b/w0/t/c;

    iget-object p0, p0, Ln/a/b/w0/a;->g:Ln/a/b/x0/i;

    invoke-interface {p1}, Ln/a/b/p;->d()Ln/a/b/o;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ln/a/b/w0/t/c;->b(Ln/a/b/x0/i;Ln/a/b/u;Ln/a/b/o;)V

    return-void
.end method

.method public d()Ln/a/b/w0/t/b;
    .locals 1

    .line 1
    new-instance p0, Ln/a/b/w0/t/b;

    new-instance v0, Ln/a/b/w0/t/d;

    invoke-direct {v0}, Ln/a/b/w0/t/d;-><init>()V

    invoke-direct {p0, v0}, Ln/a/b/w0/t/b;-><init>(Ln/a/b/v0/e;)V

    return-object p0
.end method

.method public e()Ln/a/b/w0/t/c;
    .locals 1

    .line 1
    new-instance p0, Ln/a/b/w0/t/c;

    new-instance v0, Ln/a/b/w0/t/e;

    invoke-direct {v0}, Ln/a/b/w0/t/e;-><init>()V

    invoke-direct {p0, v0}, Ln/a/b/w0/t/c;-><init>(Ln/a/b/v0/e;)V

    return-object p0
.end method

.method public f()Ln/a/b/z;
    .locals 0

    .line 1
    sget-object p0, Ln/a/b/w0/l;->a:Ln/a/b/w0/l;

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln/a/b/w0/a;->a()V

    .line 2
    invoke-virtual {p0}, Ln/a/b/w0/a;->j()V

    return-void
.end method

.method public g0(Ln/a/b/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln/a/b/q;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP response"

    .line 1
    invoke-static {p1, v0}, Ln/a/b/d1/a;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ln/a/b/w0/a;->a()V

    .line 3
    iget-object v0, p0, Ln/a/b/w0/a;->d:Ln/a/b/w0/t/b;

    iget-object p0, p0, Ln/a/b/w0/a;->f:Ln/a/b/x0/h;

    invoke-virtual {v0, p0, p1}, Ln/a/b/w0/t/b;->a(Ln/a/b/x0/h;Ln/a/b/u;)Ln/a/b/o;

    move-result-object p0

    .line 4
    invoke-interface {p1, p0}, Ln/a/b/y;->c(Ln/a/b/o;)V

    return-void
.end method

.method public getMetrics()Ln/a/b/n;
    .locals 0

    .line 1
    iget-object p0, p0, Ln/a/b/w0/a;->p:Ln/a/b/w0/o;

    return-object p0
.end method

.method public h(Ln/a/b/x0/i;Ln/a/b/z0/j;)Ln/a/b/x0/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/a/b/x0/i;",
            "Ln/a/b/z0/j;",
            ")",
            "Ln/a/b/x0/e<",
            "Ln/a/b/v;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ln/a/b/w0/u/s;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ln/a/b/w0/u/s;-><init>(Ln/a/b/x0/i;Ln/a/b/y0/v;Ln/a/b/z0/j;)V

    return-object p0
.end method

.method public i(Ln/a/b/x0/h;Ln/a/b/z;Ln/a/b/z0/j;)Ln/a/b/x0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/a/b/x0/h;",
            "Ln/a/b/z;",
            "Ln/a/b/z0/j;",
            ")",
            "Ln/a/b/x0/c<",
            "Ln/a/b/y;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ln/a/b/w0/u/m;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ln/a/b/w0/u/m;-><init>(Ln/a/b/x0/h;Ln/a/b/y0/w;Ln/a/b/z;Ln/a/b/z0/j;)V

    return-object p0
.end method

.method public j()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ln/a/b/w0/a;->g:Ln/a/b/x0/i;

    invoke-interface {p0}, Ln/a/b/x0/i;->flush()V

    return-void
.end method

.method public k(Ln/a/b/x0/h;Ln/a/b/x0/i;Ln/a/b/z0/j;)V
    .locals 1

    const-string v0, "Input session buffer"

    .line 1
    invoke-static {p1, v0}, Ln/a/b/d1/a;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/a/b/x0/h;

    iput-object v0, p0, Ln/a/b/w0/a;->f:Ln/a/b/x0/h;

    const-string v0, "Output session buffer"

    .line 2
    invoke-static {p2, v0}, Ln/a/b/d1/a;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/a/b/x0/i;

    iput-object v0, p0, Ln/a/b/w0/a;->g:Ln/a/b/x0/i;

    .line 3
    instance-of v0, p1, Ln/a/b/x0/b;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Ln/a/b/x0/b;

    iput-object v0, p0, Ln/a/b/w0/a;->j:Ln/a/b/x0/b;

    .line 5
    :cond_0
    invoke-virtual {p0}, Ln/a/b/w0/a;->f()Ln/a/b/z;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Ln/a/b/w0/a;->i(Ln/a/b/x0/h;Ln/a/b/z;Ln/a/b/z0/j;)Ln/a/b/x0/c;

    move-result-object v0

    iput-object v0, p0, Ln/a/b/w0/a;->m:Ln/a/b/x0/c;

    .line 6
    invoke-virtual {p0, p2, p3}, Ln/a/b/w0/a;->h(Ln/a/b/x0/i;Ln/a/b/z0/j;)Ln/a/b/x0/e;

    move-result-object p3

    iput-object p3, p0, Ln/a/b/w0/a;->n:Ln/a/b/x0/e;

    .line 7
    invoke-interface {p1}, Ln/a/b/x0/h;->getMetrics()Ln/a/b/x0/g;

    move-result-object p1

    invoke-interface {p2}, Ln/a/b/x0/i;->getMetrics()Ln/a/b/x0/g;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ln/a/b/w0/a;->b(Ln/a/b/x0/g;Ln/a/b/x0/g;)Ln/a/b/w0/o;

    move-result-object p1

    iput-object p1, p0, Ln/a/b/w0/a;->p:Ln/a/b/w0/o;

    return-void
.end method

.method public l()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ln/a/b/w0/a;->j:Ln/a/b/x0/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ln/a/b/x0/b;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l0()Ln/a/b/y;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln/a/b/q;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln/a/b/w0/a;->a()V

    .line 2
    iget-object v0, p0, Ln/a/b/w0/a;->m:Ln/a/b/x0/c;

    invoke-interface {v0}, Ln/a/b/x0/c;->a()Ln/a/b/u;

    move-result-object v0

    check-cast v0, Ln/a/b/y;

    .line 3
    invoke-interface {v0}, Ln/a/b/y;->v()Ln/a/b/o0;

    move-result-object v1

    invoke-interface {v1}, Ln/a/b/o0;->a()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    .line 4
    iget-object p0, p0, Ln/a/b/w0/a;->p:Ln/a/b/w0/o;

    invoke-virtual {p0}, Ln/a/b/w0/o;->g()V

    :cond_0
    return-object v0
.end method

.method public r0(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln/a/b/w0/a;->a()V

    .line 2
    :try_start_0
    iget-object p0, p0, Ln/a/b/w0/a;->f:Ln/a/b/x0/h;

    invoke-interface {p0, p1}, Ln/a/b/x0/h;->b(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
