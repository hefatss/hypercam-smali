.class public final synthetic Ld/o/v/a/c0/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ld/o/v/a/c0/d0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/o/v/a/c0/d0;

    invoke-direct {v0}, Ld/o/v/a/c0/d0;-><init>()V

    sput-object v0, Ld/o/v/a/c0/d0;->a:Ld/o/v/a/c0/d0;

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

    check-cast p1, Ld/d/a/l7/g/y1;

    invoke-interface {p1}, Ld/d/a/l7/g/y1;->P1()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
