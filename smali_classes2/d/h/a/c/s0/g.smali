.class public final Ld/h/a/c/s0/g;
.super Ld/h/a/c/s0/f;
.source "SourceFile"


# static fields
.field private static final C1:J = 0x1L


# direct methods
.method public constructor <init>(Ld/h/a/c/s0/l;Ld/h/a/c/j;Ld/h/a/c/j;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ld/h/a/c/s0/f;-><init>(Ld/h/a/c/s0/l;Ld/h/a/c/j;Ld/h/a/c/j;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ld/h/a/c/s0/m;",
            "Ld/h/a/c/j;",
            "[",
            "Ld/h/a/c/j;",
            "Ld/h/a/c/j;",
            "Ld/h/a/c/j;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p9}, Ld/h/a/c/s0/f;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static w0(Ljava/lang/Class;Ld/h/a/c/j;Ld/h/a/c/j;)Ld/h/a/c/s0/g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ld/h/a/c/j;",
            "Ld/h/a/c/j;",
            ")",
            "Ld/h/a/c/s0/g;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Ld/h/a/c/s0/m;->c(Ljava/lang/Class;Ld/h/a/c/j;Ld/h/a/c/j;)Ld/h/a/c/s0/m;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Ld/h/a/c/s0/m;->h()Ld/h/a/c/s0/m;

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 5
    new-instance v0, Ld/h/a/c/s0/g;

    invoke-static {p0}, Ld/h/a/c/s0/l;->i0(Ljava/lang/Class;)Ld/h/a/c/j;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v10}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static x0(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;)Ld/h/a/c/s0/g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ld/h/a/c/s0/m;",
            "Ld/h/a/c/j;",
            "[",
            "Ld/h/a/c/j;",
            "Ld/h/a/c/j;",
            "Ld/h/a/c/j;",
            ")",
            "Ld/h/a/c/s0/g;"
        }
    .end annotation

    .line 1
    new-instance v10, Ld/h/a/c/s0/g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v9}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method


# virtual methods
.method public A0(Ld/h/a/c/j;)Ld/h/a/c/s0/g;
    .locals 11

    .line 1
    iget-object v0, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ld/h/a/c/s0/g;

    iget-object v2, p0, Ld/h/a/c/j;->d:Ljava/lang/Class;

    iget-object v3, p0, Ld/h/a/c/s0/l;->w:Ld/h/a/c/s0/m;

    iget-object v4, p0, Ld/h/a/c/s0/l;->t:Ld/h/a/c/j;

    iget-object v5, p0, Ld/h/a/c/s0/l;->u:[Ld/h/a/c/j;

    iget-object v7, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    iget-object v8, p0, Ld/h/a/c/j;->g:Ljava/lang/Object;

    iget-object v9, p0, Ld/h/a/c/j;->j:Ljava/lang/Object;

    iget-boolean v10, p0, Ld/h/a/c/j;->m:Z

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v10}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public B0(Ljava/lang/Object;)Ld/h/a/c/s0/g;
    .locals 11

    .line 1
    new-instance v10, Ld/h/a/c/s0/g;

    iget-object v1, p0, Ld/h/a/c/j;->d:Ljava/lang/Class;

    iget-object v2, p0, Ld/h/a/c/s0/l;->w:Ld/h/a/c/s0/m;

    iget-object v3, p0, Ld/h/a/c/s0/l;->t:Ld/h/a/c/j;

    iget-object v4, p0, Ld/h/a/c/s0/l;->u:[Ld/h/a/c/j;

    iget-object v0, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    .line 2
    invoke-virtual {v0, p1}, Ld/h/a/c/j;->g0(Ljava/lang/Object;)Ld/h/a/c/j;

    move-result-object v5

    iget-object v6, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    iget-object v7, p0, Ld/h/a/c/j;->g:Ljava/lang/Object;

    iget-object v8, p0, Ld/h/a/c/j;->j:Ljava/lang/Object;

    iget-boolean v9, p0, Ld/h/a/c/j;->m:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public C0(Ljava/lang/Object;)Ld/h/a/c/s0/g;
    .locals 11

    .line 1
    new-instance v10, Ld/h/a/c/s0/g;

    iget-object v1, p0, Ld/h/a/c/j;->d:Ljava/lang/Class;

    iget-object v2, p0, Ld/h/a/c/s0/l;->w:Ld/h/a/c/s0/m;

    iget-object v3, p0, Ld/h/a/c/s0/l;->t:Ld/h/a/c/j;

    iget-object v4, p0, Ld/h/a/c/s0/l;->u:[Ld/h/a/c/j;

    iget-object v0, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    .line 2
    invoke-virtual {v0, p1}, Ld/h/a/c/j;->h0(Ljava/lang/Object;)Ld/h/a/c/j;

    move-result-object v5

    iget-object v6, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    iget-object v7, p0, Ld/h/a/c/j;->g:Ljava/lang/Object;

    iget-object v8, p0, Ld/h/a/c/j;->j:Ljava/lang/Object;

    iget-boolean v9, p0, Ld/h/a/c/j;->m:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public D0()Ld/h/a/c/s0/g;
    .locals 11

    .line 1
    iget-boolean v0, p0, Ld/h/a/c/j;->m:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ld/h/a/c/s0/g;

    iget-object v2, p0, Ld/h/a/c/j;->d:Ljava/lang/Class;

    iget-object v3, p0, Ld/h/a/c/s0/l;->w:Ld/h/a/c/s0/m;

    iget-object v4, p0, Ld/h/a/c/s0/l;->t:Ld/h/a/c/j;

    iget-object v5, p0, Ld/h/a/c/s0/l;->u:[Ld/h/a/c/j;

    iget-object v1, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    .line 3
    invoke-virtual {v1}, Ld/h/a/c/j;->f0()Ld/h/a/c/j;

    move-result-object v6

    iget-object v1, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    invoke-virtual {v1}, Ld/h/a/c/j;->f0()Ld/h/a/c/j;

    move-result-object v7

    iget-object v8, p0, Ld/h/a/c/j;->g:Ljava/lang/Object;

    iget-object v9, p0, Ld/h/a/c/j;->j:Ljava/lang/Object;

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public E0(Ljava/lang/Object;)Ld/h/a/c/s0/g;
    .locals 11

    .line 1
    new-instance v10, Ld/h/a/c/s0/g;

    iget-object v1, p0, Ld/h/a/c/j;->d:Ljava/lang/Class;

    iget-object v2, p0, Ld/h/a/c/s0/l;->w:Ld/h/a/c/s0/m;

    iget-object v3, p0, Ld/h/a/c/s0/l;->t:Ld/h/a/c/j;

    iget-object v4, p0, Ld/h/a/c/s0/l;->u:[Ld/h/a/c/j;

    iget-object v5, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    iget-object v6, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    iget-object v7, p0, Ld/h/a/c/j;->g:Ljava/lang/Object;

    iget-boolean v9, p0, Ld/h/a/c/j;->m:Z

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public F0(Ljava/lang/Object;)Ld/h/a/c/s0/g;
    .locals 11

    .line 1
    new-instance v10, Ld/h/a/c/s0/g;

    iget-object v1, p0, Ld/h/a/c/j;->d:Ljava/lang/Class;

    iget-object v2, p0, Ld/h/a/c/s0/l;->w:Ld/h/a/c/s0/m;

    iget-object v3, p0, Ld/h/a/c/s0/l;->t:Ld/h/a/c/j;

    iget-object v4, p0, Ld/h/a/c/s0/l;->u:[Ld/h/a/c/j;

    iget-object v5, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    iget-object v6, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    iget-object v8, p0, Ld/h/a/c/j;->j:Ljava/lang/Object;

    iget-boolean v9, p0, Ld/h/a/c/j;->m:Z

    move-object v0, v10

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public Z(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;)Ld/h/a/c/j;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ld/h/a/c/s0/m;",
            "Ld/h/a/c/j;",
            "[",
            "Ld/h/a/c/j;",
            ")",
            "Ld/h/a/c/j;"
        }
    .end annotation

    .line 1
    new-instance v10, Ld/h/a/c/s0/g;

    iget-object v5, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    iget-object v6, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    iget-object v7, p0, Ld/h/a/c/j;->g:Ljava/lang/Object;

    iget-object v8, p0, Ld/h/a/c/j;->j:Ljava/lang/Object;

    iget-boolean v9, p0, Ld/h/a/c/j;->m:Z

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public b0(Ld/h/a/c/j;)Ld/h/a/c/j;
    .locals 11

    .line 1
    iget-object v0, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ld/h/a/c/s0/g;

    iget-object v2, p0, Ld/h/a/c/j;->d:Ljava/lang/Class;

    iget-object v3, p0, Ld/h/a/c/s0/l;->w:Ld/h/a/c/s0/m;

    iget-object v4, p0, Ld/h/a/c/s0/l;->t:Ld/h/a/c/j;

    iget-object v5, p0, Ld/h/a/c/s0/l;->u:[Ld/h/a/c/j;

    iget-object v6, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    iget-object v8, p0, Ld/h/a/c/j;->g:Ljava/lang/Object;

    iget-object v9, p0, Ld/h/a/c/j;->j:Ljava/lang/Object;

    iget-boolean v10, p0, Ld/h/a/c/j;->m:Z

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic c0(Ljava/lang/Object;)Ld/h/a/c/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/h/a/c/s0/g;->y0(Ljava/lang/Object;)Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d0(Ljava/lang/Object;)Ld/h/a/c/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/h/a/c/s0/g;->z0(Ljava/lang/Object;)Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f0()Ld/h/a/c/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ld/h/a/c/s0/g;->D0()Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic g0(Ljava/lang/Object;)Ld/h/a/c/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/h/a/c/s0/g;->E0(Ljava/lang/Object;)Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic h0(Ljava/lang/Object;)Ld/h/a/c/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/h/a/c/s0/g;->F0(Ljava/lang/Object;)Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic o0(Ljava/lang/Object;)Ld/h/a/c/s0/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/h/a/c/s0/g;->y0(Ljava/lang/Object;)Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic p0(Ljava/lang/Object;)Ld/h/a/c/s0/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/h/a/c/s0/g;->z0(Ljava/lang/Object;)Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic q0(Ld/h/a/c/j;)Ld/h/a/c/s0/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/h/a/c/s0/g;->A0(Ld/h/a/c/j;)Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic r0(Ljava/lang/Object;)Ld/h/a/c/s0/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/h/a/c/s0/g;->B0(Ljava/lang/Object;)Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic s0(Ljava/lang/Object;)Ld/h/a/c/s0/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/h/a/c/s0/g;->C0(Ljava/lang/Object;)Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic t0()Ld/h/a/c/s0/f;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ld/h/a/c/s0/g;->D0()Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[map type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/h/a/c/j;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic u0(Ljava/lang/Object;)Ld/h/a/c/s0/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/h/a/c/s0/g;->E0(Ljava/lang/Object;)Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic v0(Ljava/lang/Object;)Ld/h/a/c/s0/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/h/a/c/s0/g;->F0(Ljava/lang/Object;)Ld/h/a/c/s0/g;

    move-result-object p0

    return-object p0
.end method

.method public y0(Ljava/lang/Object;)Ld/h/a/c/s0/g;
    .locals 11

    .line 1
    new-instance v10, Ld/h/a/c/s0/g;

    iget-object v1, p0, Ld/h/a/c/j;->d:Ljava/lang/Class;

    iget-object v2, p0, Ld/h/a/c/s0/l;->w:Ld/h/a/c/s0/m;

    iget-object v3, p0, Ld/h/a/c/s0/l;->t:Ld/h/a/c/j;

    iget-object v4, p0, Ld/h/a/c/s0/l;->u:[Ld/h/a/c/j;

    iget-object v5, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    iget-object v0, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    .line 2
    invoke-virtual {v0, p1}, Ld/h/a/c/j;->g0(Ljava/lang/Object;)Ld/h/a/c/j;

    move-result-object v6

    iget-object v7, p0, Ld/h/a/c/j;->g:Ljava/lang/Object;

    iget-object v8, p0, Ld/h/a/c/j;->j:Ljava/lang/Object;

    iget-boolean v9, p0, Ld/h/a/c/j;->m:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public z(Ljava/lang/Class;)Ld/h/a/c/j;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ld/h/a/c/j;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v10, Ld/h/a/c/s0/g;

    iget-object v2, p0, Ld/h/a/c/s0/l;->w:Ld/h/a/c/s0/m;

    iget-object v3, p0, Ld/h/a/c/s0/l;->t:Ld/h/a/c/j;

    iget-object v4, p0, Ld/h/a/c/s0/l;->u:[Ld/h/a/c/j;

    iget-object v5, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    iget-object v6, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    iget-object v7, p0, Ld/h/a/c/j;->g:Ljava/lang/Object;

    iget-object v8, p0, Ld/h/a/c/j;->j:Ljava/lang/Object;

    iget-boolean v9, p0, Ld/h/a/c/j;->m:Z

    move-object v0, v10

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method

.method public z0(Ljava/lang/Object;)Ld/h/a/c/s0/g;
    .locals 11

    .line 1
    new-instance v10, Ld/h/a/c/s0/g;

    iget-object v1, p0, Ld/h/a/c/j;->d:Ljava/lang/Class;

    iget-object v2, p0, Ld/h/a/c/s0/l;->w:Ld/h/a/c/s0/m;

    iget-object v3, p0, Ld/h/a/c/s0/l;->t:Ld/h/a/c/j;

    iget-object v4, p0, Ld/h/a/c/s0/l;->u:[Ld/h/a/c/j;

    iget-object v5, p0, Ld/h/a/c/s0/f;->k1:Ld/h/a/c/j;

    iget-object v0, p0, Ld/h/a/c/s0/f;->v1:Ld/h/a/c/j;

    .line 2
    invoke-virtual {v0, p1}, Ld/h/a/c/j;->h0(Ljava/lang/Object;)Ld/h/a/c/j;

    move-result-object v6

    iget-object v7, p0, Ld/h/a/c/j;->g:Ljava/lang/Object;

    iget-object v8, p0, Ld/h/a/c/j;->j:Ljava/lang/Object;

    iget-boolean v9, p0, Ld/h/a/c/j;->m:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Ld/h/a/c/s0/g;-><init>(Ljava/lang/Class;Ld/h/a/c/s0/m;Ld/h/a/c/j;[Ld/h/a/c/j;Ld/h/a/c/j;Ld/h/a/c/j;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v10
.end method
