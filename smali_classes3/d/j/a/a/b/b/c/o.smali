.class public final synthetic Ld/j/a/a/b/b/c/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final synthetic a:Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/j/a/a/b/b/c/o;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld/j/a/a/b/b/c/o;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;

    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;->loadClientMetrics()Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    move-result-object p0

    return-object p0
.end method
