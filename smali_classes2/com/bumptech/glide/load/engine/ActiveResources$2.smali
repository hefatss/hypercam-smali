.class public Lcom/bumptech/glide/load/engine/ActiveResources$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/ActiveResources;-><init>(ZLjava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/load/engine/ActiveResources;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources$2;->this$0:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/ActiveResources$2;->this$0:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueue()V

    return-void
.end method
