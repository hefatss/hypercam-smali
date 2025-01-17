.class public final Lcom/faceunity/core/media/video/encoder/RenderHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Video_RenderHandler"


# instance fields
.field private mEglCore:Lcom/faceunity/toolbox/program/core/FUEglCore;

.field private mInputWindowSurface:Lcom/faceunity/toolbox/program/core/FUWindowSurface;

.field private mMvpMatrix:[F

.field private mProgramTexture2d:Lcom/faceunity/toolbox/program/core/FUProgram;

.field private volatile mRequestDraw:I

.field private volatile mRequestRelease:Z

.field private volatile mRequestSetEglContext:Z

.field private mShard_context:Landroid/opengl/EGLContext;

.field private mSurface:Landroid/view/Surface;

.field private final mSync:Ljava/lang/Object;

.field private mTexId:I

.field private mTexMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mTexMatrix:[F

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mMvpMatrix:[F

    return-void
.end method

.method public static final createHandler(Ljava/lang/String;)Lcom/faceunity/core/media/video/encoder/RenderHandler;
    .locals 4

    .line 1
    new-instance v0, Lcom/faceunity/core/media/video/encoder/RenderHandler;

    invoke-direct {v0}, Lcom/faceunity/core/media/video/encoder/RenderHandler;-><init>()V

    .line 2
    iget-object v1, v0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Video_RenderHandler"

    :goto_0
    invoke-direct {v2, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object p0, v0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

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
    invoke-direct {p0}, Lcom/faceunity/core/media/video/encoder/RenderHandler;->internalRelease()V

    .line 2
    new-instance v0, Lcom/faceunity/toolbox/program/core/FUEglCore;

    iget-object v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/faceunity/toolbox/program/core/FUEglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mEglCore:Lcom/faceunity/toolbox/program/core/FUEglCore;

    .line 3
    new-instance v1, Lcom/faceunity/toolbox/program/core/FUWindowSurface;

    iget-object v3, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    invoke-direct {v1, v0, v3, v2}, Lcom/faceunity/toolbox/program/core/FUWindowSurface;-><init>(Lcom/faceunity/toolbox/program/core/FUEglCore;Landroid/view/Surface;Z)V

    iput-object v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mInputWindowSurface:Lcom/faceunity/toolbox/program/core/FUWindowSurface;

    .line 4
    invoke-virtual {v1}, Lcom/faceunity/toolbox/program/core/FUEglSurfaceBase;->makeCurrent()V

    .line 5
    new-instance v0, Lcom/faceunity/toolbox/program/FUProgramTexture2d;

    invoke-direct {v0}, Lcom/faceunity/toolbox/program/FUProgramTexture2d;-><init>()V

    iput-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mProgramTexture2d:Lcom/faceunity/toolbox/program/core/FUProgram;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    .line 7
    iget-object p0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private final internalRelease()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mInputWindowSurface:Lcom/faceunity/toolbox/program/core/FUWindowSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/faceunity/toolbox/program/core/FUWindowSurface;->release()V

    .line 3
    iput-object v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mInputWindowSurface:Lcom/faceunity/toolbox/program/core/FUWindowSurface;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mProgramTexture2d:Lcom/faceunity/toolbox/program/core/FUProgram;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/faceunity/toolbox/program/core/FUProgram;->release()V

    .line 6
    iput-object v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mProgramTexture2d:Lcom/faceunity/toolbox/program/core/FUProgram;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mEglCore:Lcom/faceunity/toolbox/program/core/FUEglCore;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/faceunity/toolbox/program/core/FUEglCore;->release()V

    .line 9
    iput-object v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mEglCore:Lcom/faceunity/toolbox/program/core/FUEglCore;

    :cond_2
    return-void
.end method


# virtual methods
.method public final draw(I[F[F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mTexId:I

    const/16 p1, 0x10

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 5
    array-length v2, p2

    if-lt v2, p1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mTexMatrix:[F

    invoke-static {p2, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mTexMatrix:[F

    invoke-static {p2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_0
    if-eqz p3, :cond_2

    .line 8
    array-length p2, p3

    if-lt p2, p1, :cond_2

    .line 9
    iget-object p2, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mMvpMatrix:[F

    invoke-static {p3, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mMvpMatrix:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 11
    :goto_1
    iget p1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestDraw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestDraw:I

    .line 12
    iget-object p0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 13
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
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

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
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestRelease:Z

    .line 5
    iget-object v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object p0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
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
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestRelease:Z

    iput-boolean v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 3
    iput v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestDraw:I

    .line 4
    iget-object v2, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_1
    iget-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestRelease:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 8
    monitor-exit v2

    goto :goto_2

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestSetEglContext:Z

    if-eqz v0, :cond_2

    .line 10
    iput-boolean v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 11
    invoke-direct {p0}, Lcom/faceunity/core/media/video/encoder/RenderHandler;->internalPrepare()V

    .line 12
    :cond_2
    iget v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestDraw:I

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 13
    iget v4, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestDraw:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestDraw:I

    .line 14
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mEglCore:Lcom/faceunity/toolbox/program/core/FUEglCore;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mTexId:I

    if-ltz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mInputWindowSurface:Lcom/faceunity/toolbox/program/core/FUWindowSurface;

    invoke-virtual {v0}, Lcom/faceunity/toolbox/program/core/FUEglSurfaceBase;->makeCurrent()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 18
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 19
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mProgramTexture2d:Lcom/faceunity/toolbox/program/core/FUProgram;

    iget v2, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mTexId:I

    iget-object v3, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mTexMatrix:[F

    iget-object v4, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mMvpMatrix:[F

    invoke-virtual {v0, v2, v3, v4}, Lcom/faceunity/toolbox/program/core/FUProgram;->drawFrame(I[F[F)V

    .line 20
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mInputWindowSurface:Lcom/faceunity/toolbox/program/core/FUWindowSurface;

    invoke-virtual {v0}, Lcom/faceunity/toolbox/program/core/FUEglSurfaceBase;->swapBuffers()Z

    goto :goto_0

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_2
    iget-object v2, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 24
    :catch_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :goto_2
    iget-object v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_4
    iput-boolean v3, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestRelease:Z

    .line 27
    invoke-direct {p0}, Lcom/faceunity/core/media/video/encoder/RenderHandler;->internalRelease()V

    .line 28
    iget-object p0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 29
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 30
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    .line 31
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 32
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public final setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    .line 5
    iput p3, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mTexId:I

    .line 6
    iput-object p2, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 8
    iget-object p1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mTexMatrix:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    iget-object p1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mMvpMatrix:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 10
    iget-object p1, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    iget-object p0, p0, Lcom/faceunity/core/media/video/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
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
