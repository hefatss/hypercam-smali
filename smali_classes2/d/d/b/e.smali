.class public final synthetic Ld/d/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Ld/d/b/g4;


# direct methods
.method public synthetic constructor <init>(Ld/d/b/g4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/d/b/e;->a:Ld/d/b/g4;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Ld/d/b/e;->a:Ld/d/b/g4;

    invoke-virtual {p0, p1}, Ld/d/b/g4;->s9(I)Z

    move-result p0

    return p0
.end method
