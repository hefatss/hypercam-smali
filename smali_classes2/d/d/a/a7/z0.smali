.class public final synthetic Ld/d/a/a7/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ld/d/a/a7/z0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/d/a/a7/z0;

    invoke-direct {v0}, Ld/d/a/a7/z0;-><init>()V

    sput-object v0, Ld/d/a/a7/z0;->a:Ld/d/a/a7/z0;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Ld/d/a/a7/j1;->t(Ljava/lang/Throwable;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    return-object p0
.end method
