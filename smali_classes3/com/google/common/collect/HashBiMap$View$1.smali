.class public Lcom/google/common/collect/HashBiMap$View$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$View;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private expectedModCount:I

.field private index:I

.field private indexToRemove:I

.field private remaining:I

.field public final synthetic this$0:Lcom/google/common/collect/HashBiMap$View;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap$View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$View$1;->this$0:Lcom/google/common/collect/HashBiMap$View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$View;->biMap:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->index:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->indexToRemove:I

    .line 4
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$View;->biMap:Lcom/google/common/collect/HashBiMap;

    iget v0, p1, Lcom/google/common/collect/HashBiMap;->modCount:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->expectedModCount:I

    .line 5
    iget p1, p1, Lcom/google/common/collect/HashBiMap;->size:I

    iput p1, p0, Lcom/google/common/collect/HashBiMap$View$1;->remaining:I

    return-void
.end method

.method private checkForComodification()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->this$0:Lcom/google/common/collect/HashBiMap$View;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$View;->biMap:Lcom/google/common/collect/HashBiMap;

    iget v0, v0, Lcom/google/common/collect/HashBiMap;->modCount:I

    iget p0, p0, Lcom/google/common/collect/HashBiMap$View$1;->expectedModCount:I

    if-ne v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$View$1;->checkForComodification()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->index:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/google/common/collect/HashBiMap$View$1;->remaining:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$View$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->this$0:Lcom/google/common/collect/HashBiMap$View;

    iget v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->index:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashBiMap$View;->forEntry(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->index:I

    iput v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->indexToRemove:I

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->this$0:Lcom/google/common/collect/HashBiMap$View;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$View;->biMap:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)[I

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/HashBiMap$View$1;->index:I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->index:I

    .line 5
    iget v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->remaining:I

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$View$1;->checkForComodification()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->indexToRemove:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->this$0:Lcom/google/common/collect/HashBiMap$View;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$View;->biMap:Lcom/google/common/collect/HashBiMap;

    iget v2, p0, Lcom/google/common/collect/HashBiMap$View$1;->indexToRemove:I

    invoke-virtual {v0, v2}, Lcom/google/common/collect/HashBiMap;->removeEntry(I)V

    .line 4
    iget v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->index:I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$View$1;->this$0:Lcom/google/common/collect/HashBiMap$View;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$View;->biMap:Lcom/google/common/collect/HashBiMap;

    iget v3, v2, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne v0, v3, :cond_1

    .line 5
    iget v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->indexToRemove:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->index:I

    .line 6
    :cond_1
    iput v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->indexToRemove:I

    .line 7
    iget v0, v2, Lcom/google/common/collect/HashBiMap;->modCount:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->expectedModCount:I

    return-void
.end method
