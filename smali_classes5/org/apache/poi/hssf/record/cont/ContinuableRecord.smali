.class public abstract Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRecordSize()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->createForCountingOnly()Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->terminate()V

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->getTotalSize()I

    move-result p0

    return p0
.end method

.method public final serialize(I[B)I
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v0, p2, p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    .line 2
    new-instance p1, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result p2

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;-><init>(Lorg/apache/poi/util/LittleEndianOutput;I)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->terminate()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->getTotalSize()I

    move-result p0

    return p0
.end method

.method public abstract serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
.end method
