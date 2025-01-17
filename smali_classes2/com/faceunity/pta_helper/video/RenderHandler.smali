.class public final Lcom/faceunity/pta_helper/video/RenderHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEglCore:Lcom/faceunity/pta_helper/gles/core/EglCore;

.field private mFullScreen:Lcom/faceunity/pta_helper/gles/core/Program;

.field private mInputWindowSurface:Lcom/faceunity/pta_helper/gles/core/WindowSurface;

.field private mIsRecordable:Z

.field private final mLock:Ljava/lang/Object;

.field private mRequestDraw:I

.field private mRequestRelease:Z

.field private mRequestSetEglContext:Z

.field private mShard_context:Landroid/opengl/EGLContext;

.field private mSurface:Landroid/view/Surface;

.field private mTexId:I

.field private mtx:[F

.field private mvp:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/faceunity/pta_helper/video/RenderHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_helper/video/RenderHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mtx:[F

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mvp:[F

    return-void
.end method

.method public static final createHandler(Ljava/lang/String;)Lcom/faceunity/pta_helper/video/RenderHandler;
    .locals 4

    .line 1
    new-instance v0, Lcom/faceunity/pta_helper/video/RenderHandler;

    invoke-direct {v0}, Lcom/faceunity/pta_helper/video/RenderHandler;-><init>()V

    .line 2
    iget-object v1, v0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/faceunity/pta_helper/video/RenderHandler;->TAG:Ljava/lang/String;

    :goto_0
    invoke-direct {v2, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object p0, v0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :catch_0
    :try_start_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private final internalPrepare()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/faceunity/pta_helper/video/RenderHandler;->internalRelease()V

    .line 2
    new-instance v0, Lcom/faceunity/pta_helper/gles/core/EglCore;

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/faceunity/pta_helper/gles/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mEglCore:Lcom/faceunity/pta_helper/gles/core/EglCore;

    .line 3
    new-instance v0, Lcom/faceunity/pta_helper/gles/core/WindowSurface;

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mEglCore:Lcom/faceunity/pta_helper/gles/core/EglCore;

    iget-object v3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mSurface:Landroid/view/Surface;

    invoke-direct {v0, v1, v3, v2}, Lcom/faceunity/pta_helper/gles/core/WindowSurface;-><init>(Lcom/faceunity/pta_helper/gles/core/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mInputWindowSurface:Lcom/faceunity/pta_helper/gles/core/WindowSurface;

    .line 4
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gles/core/EglSurfaceBase;->makeCurrent()V

    .line 5
    new-instance v0, Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    invoke-direct {v0}, Lcom/faceunity/pta_helper/gles/ProgramTexture2d;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mFullScreen:Lcom/faceunity/pta_helper/gles/core/Program;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mSurface:Landroid/view/Surface;

    .line 7
    iget-object p0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private final internalRelease()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mInputWindowSurface:Lcom/faceunity/pta_helper/gles/core/WindowSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gles/core/WindowSurface;->release()V

    .line 3
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mInputWindowSurface:Lcom/faceunity/pta_helper/gles/core/WindowSurface;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mFullScreen:Lcom/faceunity/pta_helper/gles/core/Program;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gles/core/Program;->release()V

    .line 6
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mFullScreen:Lcom/faceunity/pta_helper/gles/core/Program;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mEglCore:Lcom/faceunity/pta_helper/gles/core/EglCore;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gles/core/EglCore;->release()V

    .line 9
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mEglCore:Lcom/faceunity/pta_helper/gles/core/EglCore;

    :cond_2
    return-void
.end method


# virtual methods
.method public final draw(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mtx:[F

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mvp:[F

    invoke-virtual {p0, p1, v0, v1}, Lcom/faceunity/pta_helper/video/RenderHandler;->draw(I[F[F)V

    return-void
.end method

.method public final draw(I[F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mvp:[F

    invoke-virtual {p0, p1, p2, v0}, Lcom/faceunity/pta_helper/video/RenderHandler;->draw(I[F[F)V

    return-void
.end method

.method public final draw(I[F[F)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mTexId:I

    .line 6
    iput-object p2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mtx:[F

    .line 7
    iput-object p3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mvp:[F

    .line 8
    iget p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestDraw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestDraw:I

    .line 9
    iget-object p0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mSurface:Landroid/view/Surface;

    instance-of v1, p0, Landroid/view/Surface;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestRelease:Z

    .line 4
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object p0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestRelease:Z

    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestSetEglContext:Z

    .line 3
    iput v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestDraw:I

    .line 4
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_1
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestRelease:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    monitor-exit v2

    goto :goto_2

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestSetEglContext:Z

    if-eqz v0, :cond_2

    .line 9
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestSetEglContext:Z

    .line 10
    invoke-direct {p0}, Lcom/faceunity/pta_helper/video/RenderHandler;->internalPrepare()V

    .line 11
    :cond_2
    iget v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestDraw:I

    if-lez v0, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eqz v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 12
    iput v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestDraw:I

    .line 13
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_5

    .line 14
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mEglCore:Lcom/faceunity/pta_helper/gles/core/EglCore;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mTexId:I

    if-lez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mInputWindowSurface:Lcom/faceunity/pta_helper/gles/core/WindowSurface;

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gles/core/EglSurfaceBase;->makeCurrent()V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    invoke-static {v2, v2, v0, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 17
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 18
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mFullScreen:Lcom/faceunity/pta_helper/gles/core/Program;

    iget v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mTexId:I

    iget-object v3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mtx:[F

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mvp:[F

    invoke-virtual {v0, v2, v3, v4}, Lcom/faceunity/pta_helper/gles/core/Program;->drawFrame(I[F[F)V

    .line 19
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mInputWindowSurface:Lcom/faceunity/pta_helper/gles/core/WindowSurface;

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gles/core/EglSurfaceBase;->swapBuffers()Z

    goto :goto_0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_2
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 23
    :catch_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :goto_2
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_4
    iput-boolean v3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestRelease:Z

    .line 26
    invoke-direct {p0}, Lcom/faceunity/pta_helper/video/RenderHandler;->internalRelease()V

    .line 27
    iget-object p0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 28
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 29
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    .line 30
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 31
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public final setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    .line 4
    iput-object p2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mSurface:Landroid/view/Surface;

    .line 5
    iput-boolean p3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mIsRecordable:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mRequestSetEglContext:Z

    .line 7
    iget-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mtx:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 8
    iget-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mvp:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    iget-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
