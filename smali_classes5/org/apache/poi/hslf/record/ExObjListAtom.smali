.class public Lorg/apache/poi/hslf/record/ExObjListAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# instance fields
.field private _data:[B

.field private _header:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_header:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 3
    iput-object v2, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_data:[B

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExObjListAtom;->getRecordType()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 5
    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_header:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_data:[B

    array-length p0, p0

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 7
    iput-object v1, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_header:[B

    const/4 v2, 0x0

    .line 8
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    .line 9
    new-array v1, p3, [B

    iput-object v1, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_data:[B

    add-int/2addr p2, v0

    .line 10
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object p1, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_data:[B

    array-length p1, p1

    const/4 p2, 0x4

    if-lt p1, p2, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The length of the data for a ExObjListAtom must be at least 4 bytes, but was only "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_data:[B

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getObjectIDSeed()J
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordType()J
    .locals 2

    .line 1
    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->ExObjListAtom:Lorg/apache/poi/hslf/record/RecordTypes$Type;

    iget p0, p0, Lorg/apache/poi/hslf/record/RecordTypes$Type;->typeID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public setObjectIDSeed(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExObjListAtom;->_data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
