.class public Ld/c/b/m1/m5;
.super Ld/c/b/m1/t5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld/c/b/m1/t5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final A:J

.field public final B:J

.field public final C:J

.field public final D:J

.field public final E:J

.field public final F:J

.field public G:Ld/c/b/m1/s5;

.field public H:Ld/c/b/m1/s5;

.field public I:Ld/c/b/m1/s5;

.field public J:Ld/c/b/m1/s5;

.field public final u:Ld/c/b/m1/s1;

.field public final v:Ld/c/b/m1/s1;

.field public final w:Ld/c/b/m1/s1;

.field public final x:Ld/c/b/m1/s1;

.field public final y:J

.field public final z:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLd/c/b/n1/r;Ljava/util/function/Supplier;Ljava/util/function/Function;Ld/c/b/m1/s1;Ld/c/b/m1/s1;Ld/c/b/m1/s1;Ld/c/b/m1/s1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "J",
            "Ld/c/b/n1/r;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "Ld/c/b/m1/s1;",
            "Ld/c/b/m1/s1;",
            "Ld/c/b/m1/s1;",
            "Ld/c/b/m1/s1;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v10, v0, [Ld/c/b/m1/s1;

    const/4 v0, 0x0

    aput-object p7, v10, v0

    const/4 v0, 0x1

    aput-object p8, v10, v0

    const/4 v0, 0x2

    aput-object p9, v10, v0

    const/4 v0, 0x3

    aput-object p10, v10, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1
    invoke-direct/range {v1 .. v10}, Ld/c/b/m1/m5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLd/c/b/n1/r;Ljava/util/function/Supplier;Ljava/util/function/Function;[Ld/c/b/m1/s1;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLd/c/b/n1/r;Ljava/util/function/Supplier;Ljava/util/function/Function;[Ld/c/b/m1/s1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ld/c/b/n1/r;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "[",
            "Ld/c/b/m1/s1;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p9}, Ld/c/b/m1/t5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLd/c/b/n1/r;Ljava/util/function/Supplier;Ljava/util/function/Function;[Ld/c/b/m1/s1;)V

    const/4 p1, 0x0

    .line 3
    aget-object p2, p9, p1

    iput-object p2, p0, Ld/c/b/m1/m5;->u:Ld/c/b/m1/s1;

    const/4 p3, 0x1

    .line 4
    aget-object p4, p9, p3

    iput-object p4, p0, Ld/c/b/m1/m5;->v:Ld/c/b/m1/s1;

    const/4 p5, 0x2

    .line 5
    aget-object p5, p9, p5

    iput-object p5, p0, Ld/c/b/m1/m5;->w:Ld/c/b/m1/s1;

    const/4 p6, 0x3

    .line 6
    aget-object p6, p9, p6

    iput-object p6, p0, Ld/c/b/m1/m5;->x:Ld/c/b/m1/s1;

    .line 7
    iget-wide p7, p2, Ld/c/b/m1/s1;->k0:J

    iput-wide p7, p0, Ld/c/b/m1/m5;->y:J

    .line 8
    iget-wide p7, p4, Ld/c/b/m1/s1;->k0:J

    iput-wide p7, p0, Ld/c/b/m1/m5;->z:J

    .line 9
    iget-wide p7, p5, Ld/c/b/m1/s1;->k0:J

    iput-wide p7, p0, Ld/c/b/m1/m5;->A:J

    .line 10
    iget-wide p7, p6, Ld/c/b/m1/s1;->k0:J

    iput-wide p7, p0, Ld/c/b/m1/m5;->B:J

    .line 11
    iget-wide p7, p2, Ld/c/b/m1/s1;->K0:J

    iput-wide p7, p0, Ld/c/b/m1/m5;->C:J

    .line 12
    iget-wide p7, p4, Ld/c/b/m1/s1;->K0:J

    iput-wide p7, p0, Ld/c/b/m1/m5;->D:J

    .line 13
    iget-wide p7, p5, Ld/c/b/m1/s1;->K0:J

    iput-wide p7, p0, Ld/c/b/m1/m5;->E:J

    .line 14
    iget-wide p7, p6, Ld/c/b/m1/s1;->K0:J

    iput-wide p7, p0, Ld/c/b/m1/m5;->F:J

    .line 15
    invoke-virtual {p2}, Ld/c/b/m1/s1;->D()Z

    move-result p7

    if-eqz p7, :cond_0

    .line 16
    iput-object p2, p0, Ld/c/b/m1/v5;->h:Ld/c/b/m1/s1;

    .line 17
    :cond_0
    invoke-virtual {p4}, Ld/c/b/m1/s1;->D()Z

    move-result p7

    if-eqz p7, :cond_1

    .line 18
    iput-object p4, p0, Ld/c/b/m1/v5;->h:Ld/c/b/m1/s1;

    .line 19
    :cond_1
    invoke-virtual {p5}, Ld/c/b/m1/s1;->D()Z

    move-result p7

    if-eqz p7, :cond_2

    .line 20
    iput-object p5, p0, Ld/c/b/m1/v5;->h:Ld/c/b/m1/s1;

    .line 21
    :cond_2
    invoke-virtual {p6}, Ld/c/b/m1/s1;->D()Z

    move-result p7

    if-eqz p7, :cond_3

    .line 22
    iput-object p6, p0, Ld/c/b/m1/v5;->h:Ld/c/b/m1/s1;

    .line 23
    :cond_3
    iget-object p2, p2, Ld/c/b/m1/s1;->s:Ljava/lang/Object;

    if-nez p2, :cond_4

    iget-object p2, p4, Ld/c/b/m1/s1;->s:Ljava/lang/Object;

    if-nez p2, :cond_4

    iget-object p2, p5, Ld/c/b/m1/s1;->s:Ljava/lang/Object;

    if-nez p2, :cond_4

    iget-object p2, p6, Ld/c/b/m1/s1;->s:Ljava/lang/Object;

    if-eqz p2, :cond_5

    :cond_4
    move p1, p3

    :cond_5
    iput-boolean p1, p0, Ld/c/b/m1/v5;->i:Z

    return-void
.end method


# virtual methods
.method public A(Ld/c/b/o0;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/c/b/o0;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v1, p0, Ld/c/b/m1/v5;->j:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Ld/c/b/m1/v5;->b:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ld/c/b/o0;->u(Ljava/lang/Class;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Ld/c/b/o0;->V()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Ld/c/b/m1/v5;->c:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Ld/c/b/o0;->K2()I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    iget-object v3, p0, Ld/c/b/m1/m5;->u:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 7
    iget-object v3, p0, Ld/c/b/m1/m5;->v:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 8
    iget-object v3, p0, Ld/c/b/m1/m5;->w:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 9
    iget-object v3, p0, Ld/c/b/m1/m5;->x:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    const/4 v3, 0x4

    :goto_0
    if-ge v3, v2, :cond_1

    .line 10
    invoke-virtual {p1}, Ld/c/b/o0;->J2()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Ld/c/b/m1/v5;->d:Ljava/util/function/Function;

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1

    .line 13
    :cond_3
    iget-object v2, p0, Ld/c/b/m1/v5;->b:Ljava/lang/Class;

    iget-wide v3, p0, Ld/c/b/m1/v5;->g:J

    iget-wide v5, p0, Ld/c/b/m1/v5;->e:J

    or-long/2addr v5, p4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ld/c/b/o0;->r(Ljava/lang/Class;JJ)Ld/c/b/m1/s5;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    invoke-interface {v1}, Ld/c/b/m1/s5;->g()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ld/c/b/m1/v5;->b:Ljava/lang/Class;

    if-eq v2, v3, :cond_4

    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 15
    invoke-interface/range {v0 .. v5}, Ld/c/b/m1/s5;->A(Ld/c/b/o0;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v1, -0x5a

    .line 16
    invoke-virtual {p1, v1}, Ld/c/b/o0;->A0(B)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 17
    iget-object v1, p0, Ld/c/b/m1/v5;->c:Ljava/util/function/Supplier;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_5

    .line 18
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 19
    :cond_5
    sget-boolean v1, Ld/c/b/p1/r;->h:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ld/c/b/o0;->A()Ld/c/b/o0$b;

    move-result-object v1

    invoke-virtual {v1}, Ld/c/b/o0$b;->j()J

    move-result-wide v4

    or-long/2addr v4, p4

    sget-object v1, Ld/c/b/o0$c;->c:Ld/c/b/o0$c;

    iget-wide v7, v1, Ld/c/b/o0$c;->N8:J

    and-long/2addr v4, v7

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    .line 20
    :try_start_0
    sget-object v1, Ld/c/b/p1/d0;->a:Lsun/misc/Unsafe;

    iget-object v4, p0, Ld/c/b/m1/v5;->b:Ljava/lang/Class;

    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ld/c/b/n;

    const-string v2, "create instance error"

    invoke-virtual {p1, v2}, Ld/c/b/o0;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ld/c/b/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_7

    .line 22
    iget-boolean v4, p0, Ld/c/b/m1/v5;->i:Z

    if-eqz v4, :cond_7

    .line 23
    invoke-virtual {p0, v1}, Ld/c/b/m1/m5;->h(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const/16 v4, -0x5b

    .line 24
    invoke-virtual {p1, v4}, Ld/c/b/o0;->A0(B)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 25
    iget-object v2, p0, Ld/c/b/m1/v5;->d:Ljava/util/function/Function;

    if-eqz v2, :cond_8

    .line 26
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    :cond_8
    iget-object v0, p0, Ld/c/b/m1/v5;->k:Ld/c/b/n1/r;

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {v0, v1}, Ld/c/b/n1/r;->j(Ljava/lang/Object;)V

    :cond_9
    return-object v1

    .line 29
    :cond_a
    invoke-virtual {p1}, Ld/c/b/o0;->H1()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_b

    goto :goto_2

    .line 30
    :cond_b
    iget-wide v7, p0, Ld/c/b/m1/m5;->y:J

    cmp-long v6, v4, v7

    if-nez v6, :cond_c

    .line 31
    iget-object v4, p0, Ld/c/b/m1/m5;->u:Ld/c/b/m1/s1;

    invoke-virtual {v4, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 32
    :cond_c
    iget-wide v7, p0, Ld/c/b/m1/m5;->z:J

    cmp-long v6, v4, v7

    if-nez v6, :cond_d

    .line 33
    iget-object v4, p0, Ld/c/b/m1/m5;->v:Ld/c/b/m1/s1;

    invoke-virtual {v4, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 34
    :cond_d
    iget-wide v7, p0, Ld/c/b/m1/m5;->A:J

    cmp-long v6, v4, v7

    if-nez v6, :cond_e

    .line 35
    iget-object v4, p0, Ld/c/b/m1/m5;->w:Ld/c/b/m1/s1;

    invoke-virtual {v4, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :cond_e
    iget-wide v7, p0, Ld/c/b/m1/m5;->B:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_f

    .line 37
    iget-object v4, p0, Ld/c/b/m1/m5;->x:Ld/c/b/m1/s1;

    invoke-virtual {v4, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 38
    :cond_f
    iget-wide v4, p0, Ld/c/b/m1/v5;->e:J

    or-long/2addr v4, p4

    invoke-virtual {p1, v4, v5}, Ld/c/b/o0;->u0(J)Z

    move-result v4

    if-nez v4, :cond_10

    .line 39
    invoke-virtual {p0, p1, v1}, Ld/c/b/m1/v5;->i(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 40
    :cond_10
    invoke-virtual {p1}, Ld/c/b/o0;->G()J

    move-result-wide v4

    .line 41
    iget-wide v7, p0, Ld/c/b/m1/m5;->C:J

    cmp-long v6, v4, v7

    if-nez v6, :cond_11

    .line 42
    iget-object v4, p0, Ld/c/b/m1/m5;->u:Ld/c/b/m1/s1;

    invoke-virtual {v4, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 43
    :cond_11
    iget-wide v7, p0, Ld/c/b/m1/m5;->D:J

    cmp-long v6, v4, v7

    if-nez v6, :cond_12

    .line 44
    iget-object v4, p0, Ld/c/b/m1/m5;->v:Ld/c/b/m1/s1;

    invoke-virtual {v4, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 45
    :cond_12
    iget-wide v7, p0, Ld/c/b/m1/m5;->E:J

    cmp-long v6, v4, v7

    if-nez v6, :cond_13

    .line 46
    iget-object v4, p0, Ld/c/b/m1/m5;->w:Ld/c/b/m1/s1;

    invoke-virtual {v4, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 47
    :cond_13
    iget-wide v7, p0, Ld/c/b/m1/m5;->F:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_14

    .line 48
    iget-object v4, p0, Ld/c/b/m1/m5;->x:Ld/c/b/m1/s1;

    invoke-virtual {v4, p1, v1}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 49
    :cond_14
    invoke-virtual {p0, p1, v1}, Ld/c/b/m1/v5;->i(Ld/c/b/o0;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 50
    :cond_15
    new-instance v0, Ld/c/b/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect object, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ld/c/b/o0;->M()B

    move-result v2

    invoke-static {v2}, Ld/c/b/m;->u(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ld/c/b/o0;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/c/b/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D(Ld/c/b/o0;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/c/b/o0;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ld/c/b/m1/v5;->j:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/c/b/m1/v5;->b:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ld/c/b/o0;->u(Ljava/lang/Class;)V

    .line 3
    :cond_0
    iget-object v0, p0, Ld/c/b/m1/v5;->b:Ljava/lang/Class;

    iget-wide v1, p0, Ld/c/b/m1/v5;->e:J

    or-long/2addr v1, p4

    invoke-virtual {p0, p1, v0, v1, v2}, Ld/c/b/m1/v5;->d(Ld/c/b/o0;Ljava/lang/Class;J)Ld/c/b/m1/s5;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    .line 4
    invoke-interface {v3}, Ld/c/b/m1/s5;->g()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ld/c/b/m1/v5;->b:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    .line 5
    invoke-interface/range {v3 .. v8}, Ld/c/b/m1/s5;->D(Ld/c/b/o0;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p1}, Ld/c/b/o0;->K2()I

    move-result p2

    .line 7
    iget-object p3, p0, Ld/c/b/m1/v5;->c:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    if-lez p2, :cond_2

    .line 8
    iget-object p4, p0, Ld/c/b/m1/m5;->u:Ld/c/b/m1/s1;

    invoke-virtual {p4, p1, p3}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    const/4 p4, 0x1

    if-le p2, p4, :cond_2

    .line 9
    iget-object p4, p0, Ld/c/b/m1/m5;->v:Ld/c/b/m1/s1;

    invoke-virtual {p4, p1, p3}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    const/4 p4, 0x2

    if-le p2, p4, :cond_2

    .line 10
    iget-object p4, p0, Ld/c/b/m1/m5;->w:Ld/c/b/m1/s1;

    invoke-virtual {p4, p1, p3}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    const/4 p4, 0x3

    if-le p2, p4, :cond_2

    .line 11
    iget-object p4, p0, Ld/c/b/m1/m5;->x:Ld/c/b/m1/s1;

    invoke-virtual {p4, p1, p3}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    const/4 p4, 0x4

    :goto_0
    if-ge p4, p2, :cond_2

    .line 12
    invoke-virtual {p1}, Ld/c/b/o0;->J2()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object p0, p0, Ld/c/b/m1/v5;->d:Ljava/util/function/Function;

    if-eqz p0, :cond_3

    .line 14
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p3
.end method

.method public G(J)Ld/c/b/m1/s1;
    .locals 2

    .line 1
    iget-wide v0, p0, Ld/c/b/m1/m5;->y:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Ld/c/b/m1/m5;->u:Ld/c/b/m1/s1;

    return-object p0

    .line 3
    :cond_0
    iget-wide v0, p0, Ld/c/b/m1/m5;->z:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Ld/c/b/m1/m5;->v:Ld/c/b/m1/s1;

    return-object p0

    .line 5
    :cond_1
    iget-wide v0, p0, Ld/c/b/m1/m5;->A:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 6
    iget-object p0, p0, Ld/c/b/m1/m5;->w:Ld/c/b/m1/s1;

    return-object p0

    .line 7
    :cond_2
    iget-wide v0, p0, Ld/c/b/m1/m5;->B:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    .line 8
    iget-object p0, p0, Ld/c/b/m1/m5;->x:Ld/c/b/m1/s1;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Ld/c/b/o0;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/c/b/o0;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ld/c/b/m1/v5;->j:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/c/b/m1/v5;->b:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ld/c/b/o0;->u(Ljava/lang/Class;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Ld/c/b/o0;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p5}, Ld/c/b/m1/m5;->A(Ld/c/b/o0;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ld/c/b/o0;->I0()Z

    move-result v0

    const/16 v1, 0x2c

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Ld/c/b/o0;->B0(C)Z

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_2
    iget-wide v2, p0, Ld/c/b/m1/v5;->e:J

    or-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Ld/c/b/o0;->v(J)J

    move-result-wide v8

    .line 8
    invoke-virtual {p1}, Ld/c/b/o0;->V()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    sget-object p4, Ld/c/b/o0$c;->g:Ld/c/b/o0$c;

    iget-wide p4, p4, Ld/c/b/o0$c;->N8:J

    and-long/2addr p4, v8

    const-wide/16 v2, 0x0

    cmp-long p4, p4, v2

    if-eqz p4, :cond_6

    const/16 p2, 0x5b

    .line 10
    invoke-virtual {p1, p2}, Ld/c/b/o0;->B0(C)Z

    .line 11
    iget-object p2, p0, Ld/c/b/m1/v5;->c:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 12
    iget-boolean p3, p0, Ld/c/b/m1/v5;->i:Z

    if-eqz p3, :cond_3

    .line 13
    invoke-virtual {p0, p2}, Ld/c/b/m1/m5;->h(Ljava/lang/Object;)V

    .line 14
    :cond_3
    iget-object p3, p0, Ld/c/b/m1/m5;->u:Ld/c/b/m1/s1;

    invoke-virtual {p3, p1, p2}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    .line 15
    iget-object p3, p0, Ld/c/b/m1/m5;->v:Ld/c/b/m1/s1;

    invoke-virtual {p3, p1, p2}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    .line 16
    iget-object p3, p0, Ld/c/b/m1/m5;->w:Ld/c/b/m1/s1;

    invoke-virtual {p3, p1, p2}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    .line 17
    iget-object p3, p0, Ld/c/b/m1/m5;->x:Ld/c/b/m1/s1;

    invoke-virtual {p3, p1, p2}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    const/16 p3, 0x5d

    .line 18
    invoke-virtual {p1, p3}, Ld/c/b/o0;->B0(C)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 19
    invoke-virtual {p1, v1}, Ld/c/b/o0;->B0(C)Z

    .line 20
    iget-object p0, p0, Ld/c/b/m1/v5;->d:Ljava/util/function/Function;

    if-eqz p0, :cond_4

    .line 21
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p2

    .line 22
    :cond_5
    new-instance p0, Ld/c/b/n;

    const-string p2, "array to bean end error"

    invoke-virtual {p1, p2}, Ld/c/b/o0;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/c/b/n;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 23
    invoke-virtual/range {v4 .. v9}, Ld/c/b/m1/v5;->k(Ld/c/b/o0;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v0, 0x7b

    .line 24
    invoke-virtual {p1, v0}, Ld/c/b/o0;->B0(C)Z

    .line 25
    iget-object v0, p0, Ld/c/b/m1/v5;->c:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 26
    iget-boolean v2, p0, Ld/c/b/m1/v5;->i:Z

    if-eqz v2, :cond_8

    .line 27
    invoke-virtual {p0, v0}, Ld/c/b/m1/m5;->h(Ljava/lang/Object;)V

    :cond_8
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x7d

    .line 28
    invoke-virtual {p1, v3}, Ld/c/b/o0;->B0(C)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    .line 29
    :cond_9
    invoke-virtual {p1}, Ld/c/b/o0;->H1()J

    move-result-wide v3

    if-nez v2, :cond_d

    .line 30
    sget-wide v5, Ld/c/b/m1/s5;->a:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_d

    .line 31
    invoke-virtual {p1}, Ld/c/b/o0;->A2()J

    move-result-wide v3

    .line 32
    invoke-virtual {p1}, Ld/c/b/o0;->A()Ld/c/b/o0$b;

    move-result-object v5

    .line 33
    invoke-virtual {v5, v3, v4}, Ld/c/b/o0$b;->m(J)Ld/c/b/m1/s5;

    move-result-object v3

    if-nez v3, :cond_a

    .line 34
    invoke-virtual {p1}, Ld/c/b/o0;->K()Ljava/lang/String;

    move-result-object v3

    .line 35
    iget-object v4, p0, Ld/c/b/m1/v5;->b:Ljava/lang/Class;

    invoke-virtual {v5, v3, v4}, Ld/c/b/o0$b;->n(Ljava/lang/String;Ljava/lang/Class;)Ld/c/b/m1/s5;

    move-result-object v3

    if-nez v3, :cond_a

    goto/16 :goto_2

    :cond_a
    move-object v4, v3

    if-eq v4, p0, :cond_17

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-wide v8, p4

    .line 36
    invoke-interface/range {v4 .. v9}, Ld/c/b/m1/s5;->b(Ld/c/b/o0;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 37
    :goto_1
    invoke-virtual {p1, v1}, Ld/c/b/o0;->B0(C)Z

    .line 38
    iget-object p1, p0, Ld/c/b/m1/v5;->d:Ljava/util/function/Function;

    if-eqz p1, :cond_b

    .line 39
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    :cond_b
    iget-object p0, p0, Ld/c/b/m1/v5;->k:Ld/c/b/n1/r;

    if-eqz p0, :cond_c

    .line 41
    invoke-virtual {p0, v0}, Ld/c/b/n1/r;->j(Ljava/lang/Object;)V

    :cond_c
    return-object v0

    .line 42
    :cond_d
    iget-wide v5, p0, Ld/c/b/m1/m5;->y:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_e

    .line 43
    iget-object v3, p0, Ld/c/b/m1/m5;->u:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v0}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 44
    :cond_e
    iget-wide v5, p0, Ld/c/b/m1/m5;->z:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_f

    .line 45
    iget-object v3, p0, Ld/c/b/m1/m5;->v:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v0}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 46
    :cond_f
    iget-wide v5, p0, Ld/c/b/m1/m5;->A:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_10

    .line 47
    iget-object v3, p0, Ld/c/b/m1/m5;->w:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v0}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 48
    :cond_10
    iget-wide v5, p0, Ld/c/b/m1/m5;->B:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 49
    iget-object v3, p0, Ld/c/b/m1/m5;->x:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v0}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 50
    :cond_11
    iget-wide v3, p0, Ld/c/b/m1/v5;->e:J

    or-long/2addr v3, p4

    invoke-virtual {p1, v3, v4}, Ld/c/b/o0;->u0(J)Z

    move-result v3

    if-nez v3, :cond_12

    .line 51
    invoke-virtual {p0, p1, v0}, Ld/c/b/m1/v5;->i(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 52
    :cond_12
    invoke-virtual {p1}, Ld/c/b/o0;->G()J

    move-result-wide v3

    .line 53
    iget-wide v5, p0, Ld/c/b/m1/m5;->C:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_13

    .line 54
    iget-object v3, p0, Ld/c/b/m1/m5;->u:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v0}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 55
    :cond_13
    iget-wide v5, p0, Ld/c/b/m1/m5;->D:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_14

    .line 56
    iget-object v3, p0, Ld/c/b/m1/m5;->v:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v0}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 57
    :cond_14
    iget-wide v5, p0, Ld/c/b/m1/m5;->E:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_15

    .line 58
    iget-object v3, p0, Ld/c/b/m1/m5;->w:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v0}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 59
    :cond_15
    iget-wide v5, p0, Ld/c/b/m1/m5;->F:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 60
    iget-object v3, p0, Ld/c/b/m1/m5;->x:Ld/c/b/m1/s1;

    invoke-virtual {v3, p1, v0}, Ld/c/b/m1/s1;->G(Ld/c/b/o0;Ljava/lang/Object;)V

    goto :goto_2

    .line 61
    :cond_16
    invoke-virtual {p0, p1, v0}, Ld/c/b/m1/v5;->i(Ld/c/b/o0;Ljava/lang/Object;)V

    :cond_17
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/c/b/m1/m5;->u:Ld/c/b/m1/s1;

    invoke-virtual {v0, p1}, Ld/c/b/m1/s1;->k(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ld/c/b/m1/m5;->v:Ld/c/b/m1/s1;

    invoke-virtual {v0, p1}, Ld/c/b/m1/s1;->k(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Ld/c/b/m1/m5;->w:Ld/c/b/m1/s1;

    invoke-virtual {v0, p1}, Ld/c/b/m1/s1;->k(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Ld/c/b/m1/m5;->x:Ld/c/b/m1/s1;

    invoke-virtual {p0, p1}, Ld/c/b/m1/s1;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public m(J)Ld/c/b/m1/s1;
    .locals 2

    .line 1
    iget-wide v0, p0, Ld/c/b/m1/m5;->C:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Ld/c/b/m1/m5;->u:Ld/c/b/m1/s1;

    return-object p0

    .line 3
    :cond_0
    iget-wide v0, p0, Ld/c/b/m1/m5;->D:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Ld/c/b/m1/m5;->v:Ld/c/b/m1/s1;

    return-object p0

    .line 5
    :cond_1
    iget-wide v0, p0, Ld/c/b/m1/m5;->E:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 6
    iget-object p0, p0, Ld/c/b/m1/m5;->w:Ld/c/b/m1/s1;

    return-object p0

    .line 7
    :cond_2
    iget-wide v0, p0, Ld/c/b/m1/m5;->F:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    .line 8
    iget-object p0, p0, Ld/c/b/m1/m5;->x:Ld/c/b/m1/s1;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method