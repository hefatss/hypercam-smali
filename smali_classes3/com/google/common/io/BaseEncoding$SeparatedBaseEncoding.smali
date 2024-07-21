.class public final Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;
.super Lcom/google/common/io/BaseEncoding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeparatedBaseEncoding"
.end annotation


# instance fields
.field private final afterEveryChars:I

.field private final delegate:Lcom/google/common/io/BaseEncoding;

.field private final separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/io/BaseEncoding;

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    if-lez p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "Cannot add a separator after every %s chars"

    .line 5
    invoke-static {p0, p1, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public canDecode(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->canDecode(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public decodeTo([BLjava/lang/CharSequence;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/BaseEncoding;->decodeTo([BLjava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/common/io/BaseEncoding;->ignoringReader(Ljava/io/Reader;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public encodeTo(Ljava/lang/Appendable;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-static {p1, v1, p0}, Lcom/google/common/io/BaseEncoding;->separatingAppendable(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3, p4}, Lcom/google/common/io/BaseEncoding;->encodeTo(Ljava/lang/Appendable;[BII)V

    return-void
.end method

.method public encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-static {p1, v1, p0}, Lcom/google/common/io/BaseEncoding;->separatingWriter(Ljava/io/Writer;Ljava/lang/String;I)Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public lowerCase()Lcom/google/common/io/BaseEncoding;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->lowerCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-virtual {v0, v1, p0}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object p0

    return-object p0
.end method

.method public maxDecodedSize(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->maxDecodedSize(I)I

    move-result p0

    return p0
.end method

.method public maxEncodedSize(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->maxEncodedSize(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v1, p0, v2}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public omitPadding()Lcom/google/common/io/BaseEncoding;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->omitPadding()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-virtual {v0, v1, p0}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".withSeparator(\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public upperCase()Lcom/google/common/io/BaseEncoding;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->upperCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-virtual {v0, v1, p0}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object p0

    return-object p0
.end method

.method public withPadChar(C)Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->withPadChar(C)Lcom/google/common/io/BaseEncoding;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget p0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-virtual {p1, v0, p0}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object p0

    return-object p0
.end method

.method public withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Already have a separator"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
