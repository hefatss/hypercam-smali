.class public final Lorg/apache/poi/xslf/model/geom/Formula$24;
.super Lorg/apache/poi/xslf/model/geom/Formula;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/model/geom/Formula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xslf/model/geom/Formula;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/poi/xslf/model/geom/Context;)D
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/model/geom/Context;->getShapeAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    div-double/2addr p0, v0

    return-wide p0
.end method
