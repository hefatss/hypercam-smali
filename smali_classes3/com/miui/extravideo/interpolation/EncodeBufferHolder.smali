.class public Lcom/miui/extravideo/interpolation/EncodeBufferHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:[B

.field public flag:I

.field public presentationTimeUs:J

.field public representativeIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->data:[B

    return-void
.end method
