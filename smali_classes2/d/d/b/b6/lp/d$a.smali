.class public Ld/d/b/b6/lp/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/d/b/b6/lp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:[F

.field public d:[F

.field public e:[F

.field public f:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Ld/d/b/b6/lp/d$a;->c:[F

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Ld/d/b/b6/lp/d$a;->d:[F

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Ld/d/b/b6/lp/d$a;->e:[F

    new-array v0, v0, [J

    .line 5
    iput-object v0, p0, Ld/d/b/b6/lp/d$a;->f:[J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    iget p0, p0, Ld/d/b/b6/lp/d$a;->b:I

    return p0
.end method

.method public b()[J
    .locals 0

    .line 1
    iget-object p0, p0, Ld/d/b/b6/lp/d$a;->f:[J

    return-object p0
.end method

.method public c()[F
    .locals 0

    .line 1
    iget-object p0, p0, Ld/d/b/b6/lp/d$a;->c:[F

    return-object p0
.end method

.method public d()[F
    .locals 0

    .line 1
    iget-object p0, p0, Ld/d/b/b6/lp/d$a;->d:[F

    return-object p0
.end method

.method public e()[F
    .locals 0

    .line 1
    iget-object p0, p0, Ld/d/b/b6/lp/d$a;->e:[F

    return-object p0
.end method

.method public f()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ld/d/b/b6/lp/d$a;->a:Z

    return p0
.end method
