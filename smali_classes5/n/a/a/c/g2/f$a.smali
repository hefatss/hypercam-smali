.class public final Ln/a/a/c/g2/f$a;
.super Ln/a/a/c/g2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln/a/a/c/g2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ln/a/a/c/g2/f<",
        "T",
        "L;",
        "TM;TR;>;"
    }
.end annotation


# static fields
.field private static final f:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln/a/a/c/g2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ln/a/a/c/g2/f;

    invoke-super {p0, p1}, Ln/a/a/c/g2/f;->a(Ln/a/a/c/g2/f;)I

    move-result p0

    return p0
.end method

.method public d()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
