.class public abstract Lcom/google/common/collect/ForwardingIterator;
.super Lcom/google/common/collect/ForwardingObject;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingObject;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public abstract delegate()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
