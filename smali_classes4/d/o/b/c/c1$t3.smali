.class public Ld/o/b/c/c1$t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/b/c/l1/l;


# annotations
.annotation runtime Ld/o/b/c/l1/o;
    name = "PersonDetail"
    namespace = "Template"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o/b/c/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t3"
.end annotation


# instance fields
.field private a:Ld/o/b/c/c1$j0;
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ld/o/b/c/c1$j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/b/c/c1$t3;->a:Ld/o/b/c/c1$j0;

    return-void
.end method


# virtual methods
.method public a()Ld/o/b/c/c1$j0;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iget-object p0, p0, Ld/o/b/c/c1$t3;->a:Ld/o/b/c/c1$j0;

    return-object p0
.end method

.method public b(Ld/o/b/c/c1$j0;)Ld/o/b/c/c1$t3;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iput-object p1, p0, Ld/o/b/c/c1$t3;->a:Ld/o/b/c/c1$j0;

    return-object p0
.end method
