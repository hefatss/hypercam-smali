.class public interface abstract Ln/a/a/c/z1/t3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final a:Ln/a/a/c/z1/t3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ln/a/a/c/z1/u1;->b:Ln/a/a/c/z1/u1;

    sput-object v0, Ln/a/a/c/z1/t3;->a:Ln/a/a/c/z1/t3;

    return-void
.end method

.method public static a()Ln/a/a/c/z1/t3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Ln/a/a/c/z1/t3<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln/a/a/c/z1/t3;->a:Ln/a/a/c/z1/t3;

    return-object v0
.end method

.method public static synthetic b(J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract c(J)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
