.class public Ln/a/a/c/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Ln/a/a/c/p1;->I0(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Ln/a/a/c/u0;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Ln/a/a/c/t0;->d([Ljava/lang/String;)Ln/a/a/c/t0;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p0, v2

    .line 4
    invoke-virtual {p1, v3}, Ln/a/a/c/t0;->b(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p0}, Ln/a/a/c/p1;->I0(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Ln/a/a/c/u0;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Ln/a/a/c/t0;->d([Ljava/lang/String;)Ln/a/a/c/t0;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-char v3, p0, v1

    .line 4
    invoke-virtual {p1, v3}, Ln/a/a/c/t0;->b(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method private static c([Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2
    invoke-static {v3}, Ln/a/a/c/p1;->N0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ln/a/a/c/p1;->I0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ln/a/a/c/u0;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Ln/a/a/c/u0;->f(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ln/a/a/c/u0;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Ln/a/a/c/u0;->f(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static f(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Ln/a/a/c/t0;->d([Ljava/lang/String;)Ln/a/a/c/t0;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    .line 5
    invoke-virtual {p1, v3}, Ln/a/a/c/t0;->b(C)Z

    move-result v4

    if-ne v4, p2, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs g(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p0}, Ln/a/a/c/p1;->I0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Ln/a/a/c/u0;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p1}, Ln/a/a/c/t0;->d([Ljava/lang/String;)Ln/a/a/c/t0;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    .line 6
    aget-char v2, p0, v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    if-ge v3, v1, :cond_5

    .line 8
    aget-char v6, p0, v3

    if-ne v6, v2, :cond_4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-eq v6, v7, :cond_4

    .line 11
    :cond_2
    invoke-virtual {p1, v6}, Ln/a/a/c/t0;->b(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 12
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 14
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_2
    return-object p0
.end method
