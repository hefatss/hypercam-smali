.class public Ld/c/b/o1/d/d;
.super Ld/c/b/o1/d/c;
.source "SourceFile"


# annotations
.annotation runtime Ld/c/b/g1/e;
    orders = {
        "type",
        "bbox",
        "geometries"
    }
    typeName = "GeometryCollection"
.end annotation


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/c/b/o1/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GeometryCollection"

    .line 1
    invoke-direct {p0, v0}, Ld/c/b/o1/d/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/c/b/o1/d/d;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld/c/b/o1/d/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ld/c/b/o1/d/d;->c:Ljava/util/List;

    return-object p0
.end method
