.class public final Lcom/google/android/exoplayer2/util/TraceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSectionV18(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static beginSectionV18(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSectionV18()V

    :cond_0
    return-void
.end method

.method private static endSectionV18()V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
