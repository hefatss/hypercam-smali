.class public final synthetic Ld/d/b/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ld/d/b/s4;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Ld/d/b/s4;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/d/b/j3;->c:Ld/d/b/s4;

    iput-boolean p2, p0, Ld/d/b/j3;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld/d/b/j3;->c:Ld/d/b/s4;

    iget-boolean p0, p0, Ld/d/b/j3;->d:Z

    invoke-virtual {v0, p0}, Ld/d/b/s4;->i4(Z)V

    return-void
.end method
