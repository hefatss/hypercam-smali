.class public Ld/o/b/c/k1$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/b/c/l1/l;


# annotations
.annotation runtime Ld/o/b/c/l1/o;
    name = "Switch"
    namespace = "WearableController"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o/b/c/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field private a:Ld/o/b/c/k1$h;
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation
.end field

.field private b:Ld/o/b/c/k1$g;
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/o/b/c/k1$i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ld/o/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/o/h/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/k1$n;->d:Ld/o/h/a;

    return-void
.end method

.method public constructor <init>(Ld/o/b/c/k1$h;Ld/o/b/c/k1$g;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/o/b/c/k1$h;",
            "Ld/o/b/c/k1$g;",
            "Ljava/util/List<",
            "Ld/o/b/c/k1$i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ld/o/h/a;->a()Ld/o/h/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/b/c/k1$n;->d:Ld/o/h/a;

    iput-object p1, p0, Ld/o/b/c/k1$n;->a:Ld/o/b/c/k1$h;

    iput-object p2, p0, Ld/o/b/c/k1$n;->b:Ld/o/b/c/k1$g;

    iput-object p3, p0, Ld/o/b/c/k1$n;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ld/o/b/c/k1$g;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iget-object p0, p0, Ld/o/b/c/k1$n;->b:Ld/o/b/c/k1$g;

    return-object p0
.end method

.method public b()Ld/o/h/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/o/h/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld/o/b/c/k1$n;->d:Ld/o/h/a;

    return-object p0
.end method

.method public c()Ld/o/b/c/k1$h;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iget-object p0, p0, Ld/o/b/c/k1$n;->a:Ld/o/b/c/k1$h;

    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld/o/b/c/k1$i;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld/o/b/c/k1$n;->c:Ljava/util/List;

    return-object p0
.end method

.method public e(Ld/o/b/c/k1$g;)Ld/o/b/c/k1$n;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iput-object p1, p0, Ld/o/b/c/k1$n;->b:Ld/o/b/c/k1$g;

    return-object p0
.end method

.method public f(I)Ld/o/b/c/k1$n;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ld/o/h/a;->e(Ljava/lang/Object;)Ld/o/h/a;

    move-result-object p1

    iput-object p1, p0, Ld/o/b/c/k1$n;->d:Ld/o/h/a;

    return-object p0
.end method

.method public g(Ld/o/b/c/k1$h;)Ld/o/b/c/k1$n;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    iput-object p1, p0, Ld/o/b/c/k1$n;->a:Ld/o/b/c/k1$h;

    return-object p0
.end method

.method public h(Ljava/util/List;)Ld/o/b/c/k1$n;
    .locals 0
    .annotation runtime Ld/o/b/c/l1/p;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/o/b/c/k1$i;",
            ">;)",
            "Ld/o/b/c/k1$n;"
        }
    .end annotation

    iput-object p1, p0, Ld/o/b/c/k1$n;->c:Ljava/util/List;

    return-object p0
.end method
