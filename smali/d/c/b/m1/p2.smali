.class public final Ld/c/b/m1/p2;
.super Ld/c/b/m1/u4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld/c/b/m1/u4<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Character;Ld/c/b/n1/r;Ljava/lang/reflect/Field;)V
    .locals 11

    .line 1
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Ld/c/b/m1/u4;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Ld/c/b/n1/r;Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method public F(Ld/c/b/o0;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ld/c/b/o0;->y2()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public G(Ld/c/b/o0;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/c/b/o0;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ld/c/b/o0;->D1()C

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ld/c/b/o0;->T2()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p2, v0}, Ld/c/b/m1/u4;->b(Ljava/lang/Object;C)V

    return-void
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Ld/c/b/m1/u4;->b(Ljava/lang/Object;C)V

    return-void

    .line 6
    :cond_1
    new-instance p0, Ld/c/b/n;

    const-string p1, "cast to char error"

    invoke-direct {p0, p1}, Ld/c/b/n;-><init>(Ljava/lang/String;)V

    throw p0
.end method
