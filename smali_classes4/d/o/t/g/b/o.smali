.class public final synthetic Ld/o/t/g/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ld/o/t/g/b/o;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/o/t/g/b/o;

    invoke-direct {v0}, Ld/o/t/g/b/o;-><init>()V

    sput-object v0, Ld/o/t/g/b/o;->a:Ld/o/t/g/b/o;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld/d/a/m3;

    invoke-interface {p1}, Ld/d/a/m3;->getModeUI()Ld/d/a/t6/a5/l;

    move-result-object p0

    return-object p0
.end method