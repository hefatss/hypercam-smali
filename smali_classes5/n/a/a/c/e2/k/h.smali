.class public Ln/a/a/c/e2/k/h;
.super Ln/a/a/c/e2/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln/a/a/c/e2/k/h$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ln/a/a/c/e2/k/h$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ln/a/a/c/e2/k/h$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln/a/a/c/e2/k/b;-><init>()V

    .line 2
    array-length v0, p1

    if-lez v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Ln/a/a/c/e2/k/h;->b:Ljava/util/EnumSet;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Ln/a/a/c/e2/k/h$a;->c:Ln/a/a/c/e2/k/h$a;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Ln/a/a/c/e2/k/h;->b:Ljava/util/EnumSet;

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x26

    if-ne v1, v3, :cond_d

    add-int/lit8 v1, v0, -0x2

    if-ge p2, v1, :cond_d

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x23

    if-ne v1, v3, :cond_d

    add-int/lit8 p2, p2, 0x2

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x78

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    const/16 v3, 0x58

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ne p2, v0, :cond_2

    return v2

    :cond_2
    move v1, v4

    :goto_1
    move v3, p2

    :goto_2
    if-ge v3, v0, :cond_6

    .line 4
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-le v5, v6, :cond_5

    .line 5
    :cond_3
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x66

    if-le v5, v6, :cond_5

    .line 6
    :cond_4
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_6

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x46

    if-gt v5, v6, :cond_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-eq v3, v0, :cond_7

    .line 7
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_7

    move v0, v4

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    if-nez v0, :cond_a

    .line 8
    sget-object v5, Ln/a/a/c/e2/k/h$a;->c:Ln/a/a/c/e2/k/h$a;

    invoke-virtual {p0, v5}, Ln/a/a/c/e2/k/h;->f(Ln/a/a/c/e2/k/h$a;)Z

    move-result v5

    if-eqz v5, :cond_8

    return v2

    .line 9
    :cond_8
    sget-object v5, Ln/a/a/c/e2/k/h$a;->f:Ln/a/a/c/e2/k/h$a;

    invoke-virtual {p0, v5}, Ln/a/a/c/e2/k/h;->f(Ln/a/a/c/e2/k/h$a;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4

    .line 10
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Semi-colon required at end of numeric entity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    if-eqz v1, :cond_b

    .line 11
    :try_start_0
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_5

    .line 12
    :cond_b
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const p1, 0xffff

    if-le p0, p1, :cond_c

    .line 13
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    .line 14
    aget-char p1, p0, v2

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    .line 15
    aget-char p0, p0, v4

    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_6

    .line 16
    :cond_c
    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    :goto_6
    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, p2

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    return v3

    :catch_0
    :cond_d
    return v2
.end method

.method public f(Ln/a/a/c/e2/k/h$a;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Ln/a/a/c/e2/k/h;->b:Ljava/util/EnumSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
