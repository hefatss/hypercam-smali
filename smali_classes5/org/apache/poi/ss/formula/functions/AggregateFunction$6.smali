.class public final Lorg/apache/poi/ss/formula/functions/AggregateFunction$6;
.super Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([D)D
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/StatsLib;->median([D)D

    move-result-wide p0

    return-wide p0
.end method
