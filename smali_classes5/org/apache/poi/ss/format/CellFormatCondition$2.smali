.class public final Lorg/apache/poi/ss/format/CellFormatCondition$2;
.super Lorg/apache/poi/ss/format/CellFormatCondition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/format/CellFormatCondition;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$c:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/poi/ss/format/CellFormatCondition$2;->val$c:D

    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellFormatCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public pass(D)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/poi/ss/format/CellFormatCondition$2;->val$c:D

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
