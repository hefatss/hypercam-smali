.class public Lcom/faceunity/core/controller/prop/BasePropController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;
    }
.end annotation

.annotation runtime Lh/i0;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u00002\u00020\u0001:\u0001FB\u0007\u00a2\u0006\u0004\u0008E\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0001H\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0016\u001a\u00020\u00022\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0012H\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\tJ\u001d\u0010\u0018\u001a\u00020\u00022\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012H\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001d\u0010$\u001a\u00020\u001f8D@\u0004X\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#Rv\u0010)\u001aV\u0012\u0004\u0012\u00020\u0019\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010&j\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0001`\'0%j*\u0012\u0004\u0012\u00020\u0019\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010&j\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0001`\'`(8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u0018\u00100\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R>\u00102\u001a\u001e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\n0%j\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\n`(8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010*\u001a\u0004\u00083\u0010,\"\u0004\u00084\u0010.R\u001d\u00109\u001a\u0002058D@\u0004X\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010!\u001a\u0004\u00087\u00108R\u001c\u0010:\u001a\u00020\u000c8\u0004@\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R$\u0010?\u001a\u0004\u0018\u00010>8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010D\u00a8\u0006G"
    }
    d2 = {
        "Lcom/faceunity/core/controller/prop/BasePropController;",
        "",
        "Lh/l2;",
        "startBackgroundThread",
        "()V",
        "releaseThread",
        "Lcom/faceunity/core/controller/prop/PropQueuePool$QueueItem;",
        "queue",
        "applyThreadQueue",
        "(Lcom/faceunity/core/controller/prop/PropQueuePool$QueueItem;)V",
        "",
        "handle",
        "",
        "key",
        "value",
        "itemSetParam$lib_core_release",
        "(ILjava/lang/String;Ljava/lang/Object;)V",
        "itemSetParam",
        "Lkotlin/Function0;",
        "unit",
        "release$lib_core_release",
        "(Lh/d3/w/a;)V",
        "release",
        "doBackgroundAction",
        "doGLThreadAction",
        "",
        "controllerThreadId",
        "J",
        "Lcom/faceunity/core/controller/prop/PropQueuePool;",
        "mPropQueuePool",
        "Lcom/faceunity/core/controller/prop/PropQueuePool;",
        "Lcom/faceunity/core/bundle/FUBundleManager;",
        "mBundleManager$delegate",
        "Lh/d0;",
        "getMBundleManager",
        "()Lcom/faceunity/core/bundle/FUBundleManager;",
        "mBundleManager",
        "Ljava/util/HashMap;",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "Lkotlin/collections/HashMap;",
        "mPropTypeMap",
        "Ljava/util/HashMap;",
        "getMPropTypeMap",
        "()Ljava/util/HashMap;",
        "setMPropTypeMap",
        "(Ljava/util/HashMap;)V",
        "Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;",
        "controllerHandler",
        "Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;",
        "mPropIdMap",
        "getMPropIdMap",
        "setMPropIdMap",
        "Lcom/faceunity/core/support/FURenderBridge;",
        "mFURenderBridge$delegate",
        "getMFURenderBridge",
        "()Lcom/faceunity/core/support/FURenderBridge;",
        "mFURenderBridge",
        "TAG",
        "Ljava/lang/String;",
        "getTAG",
        "()Ljava/lang/String;",
        "Lcom/faceunity/core/callback/OnPropCallBack;",
        "mOnPropCallBack",
        "Lcom/faceunity/core/callback/OnPropCallBack;",
        "getMOnPropCallBack",
        "()Lcom/faceunity/core/callback/OnPropCallBack;",
        "setMOnPropCallBack",
        "(Lcom/faceunity/core/callback/OnPropCallBack;)V",
        "<init>",
        "ControllerHandler",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Ln/d/a/d;
    .end annotation
.end field

.field private controllerHandler:Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;

.field private controllerThreadId:J

.field private final mBundleManager$delegate:Lh/d0;
    .annotation build Ln/d/a/d;
    .end annotation
.end field

.field private final mFURenderBridge$delegate:Lh/d0;
    .annotation build Ln/d/a/d;
    .end annotation
.end field

.field private mOnPropCallBack:Lcom/faceunity/core/callback/OnPropCallBack;
    .annotation build Ln/d/a/e;
    .end annotation
.end field

.field private mPropIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Ln/d/a/d;
    .end annotation
.end field

.field private final mPropQueuePool:Lcom/faceunity/core/controller/prop/PropQueuePool;

.field private mPropTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Ln/d/a/d;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KIT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->TAG:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/faceunity/core/controller/prop/BasePropController$mFURenderBridge$2;->INSTANCE:Lcom/faceunity/core/controller/prop/BasePropController$mFURenderBridge$2;

    invoke-static {v0}, Lh/f0;->c(Lh/d3/w/a;)Lh/d0;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mFURenderBridge$delegate:Lh/d0;

    .line 4
    sget-object v0, Lcom/faceunity/core/controller/prop/BasePropController$mBundleManager$2;->INSTANCE:Lcom/faceunity/core/controller/prop/BasePropController$mBundleManager$2;

    invoke-static {v0}, Lh/f0;->c(Lh/d3/w/a;)Lh/d0;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mBundleManager$delegate:Lh/d0;

    .line 5
    new-instance v0, Lcom/faceunity/core/controller/prop/PropQueuePool;

    invoke-direct {v0}, Lcom/faceunity/core/controller/prop/PropQueuePool;-><init>()V

    iput-object v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mPropQueuePool:Lcom/faceunity/core/controller/prop/PropQueuePool;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mPropIdMap:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mPropTypeMap:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->controllerThreadId:J

    return-void
.end method

.method public static final synthetic access$getMPropQueuePool$p(Lcom/faceunity/core/controller/prop/BasePropController;)Lcom/faceunity/core/controller/prop/PropQueuePool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mPropQueuePool:Lcom/faceunity/core/controller/prop/PropQueuePool;

    return-object p0
.end method

.method public static synthetic release$lib_core_release$default(Lcom/faceunity/core/controller/prop/BasePropController;Lh/d3/w/a;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/faceunity/core/controller/prop/BasePropController;->release$lib_core_release(Lh/d3/w/a;)V

    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: release"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final releaseThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->controllerHandler:Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->controllerHandler:Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 3
    :cond_1
    iput-object v1, p0, Lcom/faceunity/core/controller/prop/BasePropController;->controllerHandler:Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;

    return-void
.end method

.method private final startBackgroundThread()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KIT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v1, Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v2, "backgroundThread.looper"

    invoke-static {v0, v2}, Lh/d3/x/l0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, p0}, Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;-><init>(Landroid/os/Looper;Lcom/faceunity/core/controller/prop/BasePropController;)V

    iput-object v1, p0, Lcom/faceunity/core/controller/prop/BasePropController;->controllerHandler:Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "it.looper"

    invoke-static {v0, v1}, Lh/d3/x/l0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "it.looper.thread"

    invoke-static {v0, v1}, Lh/d3/x/l0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->controllerThreadId:J

    :cond_0
    return-void
.end method


# virtual methods
.method public applyThreadQueue(Lcom/faceunity/core/controller/prop/PropQueuePool$QueueItem;)V
    .locals 0
    .param p1    # Lcom/faceunity/core/controller/prop/PropQueuePool$QueueItem;
        .annotation build Ln/d/a/d;
        .end annotation
    .end param

    const-string p0, "queue"

    invoke-static {p1, p0}, Lh/d3/x/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final doBackgroundAction(Lcom/faceunity/core/controller/prop/PropQueuePool$QueueItem;)V
    .locals 2
    .param p1    # Lcom/faceunity/core/controller/prop/PropQueuePool$QueueItem;
        .annotation build Ln/d/a/d;
        .end annotation
    .end param

    const-string v0, "queue"

    invoke-static {p1, v0}, Lh/d3/x/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->controllerHandler:Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/faceunity/core/controller/prop/BasePropController;->startBackgroundThread()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mPropQueuePool:Lcom/faceunity/core/controller/prop/PropQueuePool;

    invoke-virtual {v0, p1}, Lcom/faceunity/core/controller/prop/PropQueuePool;->push(Lcom/faceunity/core/controller/prop/PropQueuePool$QueueItem;)V

    .line 4
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p1, Landroid/os/Message;->what:I

    .line 6
    iget-object v1, p0, Lcom/faceunity/core/controller/prop/BasePropController;->controllerHandler:Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->controllerHandler:Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public final doGLThreadAction(Lh/d3/w/a;)V
    .locals 1
    .param p1    # Lh/d3/w/a;
        .annotation build Ln/d/a/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/d3/w/a<",
            "Lh/l2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p1, v0}, Lh/d3/x/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/faceunity/core/controller/prop/BasePropController;->getMFURenderBridge()Lcom/faceunity/core/support/FURenderBridge;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/faceunity/core/support/FURenderBridge;->doGLThreadAction$lib_core_release(Lh/d3/w/a;)V

    return-void
.end method

.method public final getMBundleManager()Lcom/faceunity/core/bundle/FUBundleManager;
    .locals 0
    .annotation build Ln/d/a/d;
    .end annotation

    iget-object p0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mBundleManager$delegate:Lh/d0;

    invoke-interface {p0}, Lh/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/faceunity/core/bundle/FUBundleManager;

    return-object p0
.end method

.method public final getMFURenderBridge()Lcom/faceunity/core/support/FURenderBridge;
    .locals 0
    .annotation build Ln/d/a/d;
    .end annotation

    iget-object p0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mFURenderBridge$delegate:Lh/d0;

    invoke-interface {p0}, Lh/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/faceunity/core/support/FURenderBridge;

    return-object p0
.end method

.method public final getMOnPropCallBack()Lcom/faceunity/core/callback/OnPropCallBack;
    .locals 0
    .annotation build Ln/d/a/e;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mOnPropCallBack:Lcom/faceunity/core/callback/OnPropCallBack;

    return-object p0
.end method

.method public final getMPropIdMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Ln/d/a/d;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mPropIdMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getMPropTypeMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Ln/d/a/d;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mPropTypeMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0
    .annotation build Ln/d/a/d;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final itemSetParam$lib_core_release(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Ln/d/a/d;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Ln/d/a/d;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p2, v0}, Lh/d3/x/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lh/d3/x/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setItemParam  key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/faceunity/toolbox/utils/FULogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/faceunity/core/controller/prop/BasePropController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setItemParam failed handle:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/faceunity/toolbox/utils/FULogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    instance-of p0, p3, Ljava/lang/Double;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/faceunity/core/support/FUSDKController;->INSTANCE:Lcom/faceunity/core/support/FUSDKController;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/faceunity/core/support/FUSDKController;->itemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    .line 4
    :cond_1
    instance-of p0, p3, Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/faceunity/core/support/FUSDKController;->INSTANCE:Lcom/faceunity/core/support/FUSDKController;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/faceunity/core/support/FUSDKController;->itemSetParam(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_2
    instance-of p0, p3, [D

    if-eqz p0, :cond_3

    sget-object p0, Lcom/faceunity/core/support/FUSDKController;->INSTANCE:Lcom/faceunity/core/support/FUSDKController;

    check-cast p3, [D

    invoke-virtual {p0, p1, p2, p3}, Lcom/faceunity/core/support/FUSDKController;->itemSetParam(ILjava/lang/String;[D)I

    goto :goto_0

    .line 6
    :cond_3
    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/faceunity/core/support/FUSDKController;->INSTANCE:Lcom/faceunity/core/support/FUSDKController;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    int-to-double v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/faceunity/core/support/FUSDKController;->itemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    .line 7
    :cond_4
    instance-of p0, p3, Ljava/lang/Float;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/faceunity/core/support/FUSDKController;->INSTANCE:Lcom/faceunity/core/support/FUSDKController;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    float-to-double v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/faceunity/core/support/FUSDKController;->itemSetParam(ILjava/lang/String;D)I

    :cond_5
    :goto_0
    return-void
.end method

.method public release$lib_core_release(Lh/d3/w/a;)V
    .locals 2
    .param p1    # Lh/d3/w/a;
        .annotation build Ln/d/a/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/d3/w/a<",
            "Lh/l2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/faceunity/core/controller/prop/BasePropController;->controllerHandler:Lcom/faceunity/core/controller/prop/BasePropController$ControllerHandler;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    new-instance v1, Lcom/faceunity/core/controller/prop/BasePropController$release$$inlined$let$lambda$1;

    invoke-direct {v1, v0, p0}, Lcom/faceunity/core/controller/prop/BasePropController$release$$inlined$let$lambda$1;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/faceunity/core/controller/prop/BasePropController;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/faceunity/core/controller/prop/BasePropController;->releaseThread()V

    return-void
.end method

.method public final setMOnPropCallBack(Lcom/faceunity/core/callback/OnPropCallBack;)V
    .locals 0
    .param p1    # Lcom/faceunity/core/callback/OnPropCallBack;
        .annotation build Ln/d/a/e;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mOnPropCallBack:Lcom/faceunity/core/callback/OnPropCallBack;

    return-void
.end method

.method public final setMPropIdMap(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Ln/d/a/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/d3/x/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mPropIdMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setMPropTypeMap(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Ln/d/a/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/d3/x/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/faceunity/core/controller/prop/BasePropController;->mPropTypeMap:Ljava/util/HashMap;

    return-void
.end method
