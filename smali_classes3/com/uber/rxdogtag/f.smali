.class public final synthetic Lcom/uber/rxdogtag/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/uber/rxdogtag/DogTagCompletableObserver;

.field public final synthetic d:Lio/reactivex/disposables/Disposable;


# direct methods
.method public synthetic constructor <init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/rxdogtag/f;->c:Lcom/uber/rxdogtag/DogTagCompletableObserver;

    iput-object p2, p0, Lcom/uber/rxdogtag/f;->d:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uber/rxdogtag/f;->c:Lcom/uber/rxdogtag/DogTagCompletableObserver;

    iget-object p0, p0, Lcom/uber/rxdogtag/f;->d:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, p0}, Lcom/uber/rxdogtag/DogTagCompletableObserver;->e(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
