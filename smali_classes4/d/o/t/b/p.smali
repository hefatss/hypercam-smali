.class public final synthetic Ld/o/t/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ld/o/t/b/v;


# direct methods
.method public synthetic constructor <init>(Ld/o/t/b/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/t/b/p;->c:Ld/o/t/b/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ld/o/t/b/p;->c:Ld/o/t/b/v;

    invoke-virtual {p0}, Ld/o/t/b/v;->M0()V

    return-void
.end method
