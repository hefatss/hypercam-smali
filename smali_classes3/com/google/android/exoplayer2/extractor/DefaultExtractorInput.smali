.class public final Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorInput;


# static fields
.field private static final PEEK_MAX_FREE_SPACE:I = 0x80000

.field private static final PEEK_MIN_FREE_SPACE_AFTER_RESIZE:I = 0x10000

.field private static final SCRATCH_SPACE_SIZE:I = 0x1000


# instance fields
.field private final dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final scratchSpace:[B

.field private final streamLength:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.extractor"

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataReader;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

    .line 3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    return-void
.end method

.method private commitBytesRead(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    :cond_0
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 3
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    .line 4
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    :cond_0
    return-void
.end method

.method private readFromPeekBuffer([BII)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p3
.end method

.method private readFromUpstream([BIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataReader;->read([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p1

    .line 3
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    add-int/2addr p4, p0

    return p4

    .line 4
    :cond_2
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

.method private skipFromPeekBuffer(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p1
.end method

.method private updatePeekBuffer(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 4
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    .line 5
    new-array v3, v3, [B

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 6
    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_0

    .line 6
    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    const/4 p0, 0x1

    return p0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peek([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p3

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return v0

    .line 5
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return p3
.end method

.method public peekFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr p0, p3

    invoke-static {p4, p0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p3, :cond_0

    if-eq v5, v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public resetPeekPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 3
    throw p3
.end method

.method public skip(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    const/4 v3, 0x0

    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public skipFully(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    return-void
.end method

.method public skipFully(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p1, :cond_0

    if-eq v5, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    neg-int v3, v5

    move-object v1, p0

    move v6, p2

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
