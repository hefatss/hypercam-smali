.class public final synthetic Ld/d/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Ld/d/b/i4;


# direct methods
.method public synthetic constructor <init>(Ld/d/b/i4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/d/b/m;->c:Ld/d/b/i4;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ld/d/b/m;->c:Ld/d/b/i4;

    check-cast p1, Ld/d/b/f4;

    invoke-virtual {p0, p1}, Ld/d/b/i4;->n0(Ld/d/b/f4;)V

    return-void
.end method
