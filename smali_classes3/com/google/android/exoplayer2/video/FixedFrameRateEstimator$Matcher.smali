.class public final Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Matcher"
.end annotation


# instance fields
.field private firstFrameDurationNs:J

.field private firstFramePresentationTimeNs:J

.field private frameCount:J

.field private lastFramePresentationTimeNs:J

.field private matchingFrameCount:J

.field private matchingFrameDurationSumNs:J

.field private recentFrameOutlierCount:I

.field private final recentFrameOutlierFlags:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    return-void
.end method

.method private static getRecentFrameOutlierIndex(J)I
    .locals 2

    const-wide/16 v0, 0xf

    .line 1
    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public getFrameDurationNs()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    div-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public getMatchingFrameDurationSumNs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    return-wide v0
.end method

.method public isLastFrameOutlier()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getRecentFrameOutlierIndex(J)I

    move-result v0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSynced()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v2, 0xf

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onNextFrame(J)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->firstFramePresentationTimeNs:J

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->firstFramePresentationTimeNs:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->firstFrameDurationNs:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    .line 5
    iput-wide v3, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v5, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->lastFramePresentationTimeNs:J

    sub-long v5, p1, v5

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getRecentFrameOutlierIndex(J)I

    move-result v0

    .line 8
    iget-wide v1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->firstFrameDurationNs:J

    sub-long v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0xf4240

    cmp-long v1, v1, v7

    const/4 v2, 0x1

    if-gtz v1, :cond_2

    .line 9
    iget-wide v7, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    add-long/2addr v7, v3

    iput-wide v7, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    .line 10
    iget-wide v7, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    aget-boolean v5, v1, v0

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 12
    aput-boolean v5, v1, v0

    .line 13
    iget v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    aget-boolean v5, v1, v0

    if-nez v5, :cond_3

    .line 15
    aput-boolean v2, v1, v0

    .line 16
    iget v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    .line 17
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    .line 18
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->lastFramePresentationTimeNs:J

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method
