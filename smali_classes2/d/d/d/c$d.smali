.class public Ld/d/d/c$d;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/d/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field public final synthetic b:Ld/d/d/c;


# direct methods
.method public constructor <init>(Ld/d/d/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method private a(Landroid/media/MediaCodec$CodecException;)V
    .locals 1
    .param p1    # Landroid/media/MediaCodec$CodecException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    invoke-virtual {v0}, Ld/d/d/c;->s()V

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget-object p1, p0, Ld/d/d/c;->u:Ld/d/d/c$c;

    invoke-virtual {p1, p0}, Ld/d/d/c$c;->a(Ld/d/d/c;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget-object v0, p0, Ld/d/d/c;->u:Ld/d/d/c$c;

    invoke-virtual {v0, p0, p1}, Ld/d/d/c$c;->c(Ld/d/d/c;Landroid/media/MediaCodec$CodecException;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget-object v0, v0, Ld/d/d/c;->t:Landroid/media/MediaCodec;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HeifEncoder"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p2}, Ld/d/d/c$d;->a(Landroid/media/MediaCodec$CodecException;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget-object v1, v0, Ld/d/d/c;->t:Landroid/media/MediaCodec;

    if-ne p1, v1, :cond_1

    iget-boolean p1, v0, Ld/d/d/c;->M8:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, v0, Ld/d/d/c;->S8:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p0, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    invoke-virtual {p0}, Ld/d/d/c;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "info"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget-object v0, v0, Ld/d/d/c;->t:Landroid/media/MediaCodec;

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Ld/d/d/c$d;->a:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_2

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6
    iget-object v1, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget-object v1, v1, Ld/d/d/c;->T8:Ld/d/d/c$f;

    if-eqz v1, :cond_1

    .line 7
    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ld/d/d/c$f;->e(J)V

    .line 8
    :cond_1
    iget-object v1, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget-object v2, v1, Ld/d/d/c;->u:Ld/d/d/c$c;

    invoke-virtual {v2, v1, v0}, Ld/d/d/c$c;->b(Ld/d/d/c;Ljava/nio/ByteBuffer;)V

    .line 9
    :cond_2
    iget-boolean v0, p0, Ld/d/d/c$d;->a:Z

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p3, p3, 0x4

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    move p3, v1

    :goto_0
    or-int/2addr p3, v0

    iput-boolean p3, p0, Ld/d/d/c$d;->a:Z

    .line 10
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 11
    iget-boolean p1, p0, Ld/d/d/c$d;->a:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Ld/d/d/c$d;->a(Landroid/media/MediaCodec$CodecException;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "format"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget-object v0, v0, Ld/d/d/c;->t:Landroid/media/MediaCodec;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "mime"

    .line 2
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/vnd.android.heic"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p2, p1, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget p1, p1, Ld/d/d/c;->k1:I

    const-string v0, "width"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget p1, p1, Ld/d/d/c;->v1:I

    const-string v0, "height"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 7
    iget-object p1, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget-boolean v0, p1, Ld/d/d/c;->K8:Z

    if-eqz v0, :cond_1

    .line 8
    iget p1, p1, Ld/d/d/c;->C1:I

    const-string v0, "tile-width"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9
    iget-object p1, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget p1, p1, Ld/d/d/c;->K1:I

    const-string v0, "tile-height"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 10
    iget-object p1, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget p1, p1, Ld/d/d/c;->v2:I

    const-string v0, "grid-rows"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 11
    iget-object p1, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget p1, p1, Ld/d/d/c;->C2:I

    const-string v0, "grid-cols"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 12
    :cond_1
    iget-object p0, p0, Ld/d/d/c$d;->b:Ld/d/d/c;

    iget-object p1, p0, Ld/d/d/c;->u:Ld/d/d/c$c;

    invoke-virtual {p1, p0, p2}, Ld/d/d/c$c;->d(Ld/d/d/c;Landroid/media/MediaFormat;)V

    return-void
.end method
