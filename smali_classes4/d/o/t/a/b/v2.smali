.class public final synthetic Ld/o/t/a/b/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Ld/o/t/a/b/v2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/o/t/a/b/v2;

    invoke-direct {v0}, Ld/o/t/a/b/v2;-><init>()V

    sput-object v0, Ld/o/t/a/b/v2;->a:Ld/o/t/a/b/v2;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ld/d/a/n6/e/x$a;

    invoke-static {p1}, Ld/o/t/a/b/q3;->Oo(Ld/d/a/n6/e/x$a;)Z

    move-result p0

    return p0
.end method
