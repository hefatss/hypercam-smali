.class public final synthetic Ld/d/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic c:Ld/d/a/s;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/d/a/s;

    invoke-direct {v0}, Ld/d/a/s;-><init>()V

    sput-object v0, Ld/d/a/s;->c:Ld/d/a/s;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ld/d/a/l7/g/s2;

    invoke-static {p1}, Lcom/android/camera/Camera;->Vk(Ld/d/a/l7/g/s2;)V

    return-void
.end method
