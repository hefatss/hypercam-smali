.class public final synthetic Ld/d/a/t6/f5/o5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ld/d/a/t6/f5/o5;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/d/a/t6/f5/o5;

    invoke-direct {v0}, Ld/d/a/t6/f5/o5;-><init>()V

    sput-object v0, Ld/d/a/t6/f5/o5;->a:Ld/d/a/t6/f5/o5;

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

    check-cast p1, Ld/d/a/l7/g/w3/b;

    invoke-interface {p1}, Ld/d/a/l7/g/w3/b;->M7()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
