.class public final synthetic Ln/a/a/c/y1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/a/a/c/y1/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ln/a/a/c/y1/a;->a:Ljava/lang/String;

    check-cast p1, Ln/a/a/c/g2/e;

    invoke-static {p0, p1}, Ln/a/a/c/y1/e;->i(Ljava/lang/String;Ln/a/a/c/g2/e;)Z

    move-result p0

    return p0
.end method
