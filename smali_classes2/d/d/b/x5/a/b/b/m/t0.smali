.class public final synthetic Ld/d/b/x5/a/b/b/m/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/d/b/x5/a/b/b/m/t0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ld/d/b/x5/a/b/b/m/t0;->c:Ljava/lang/String;

    check-cast p1, Ld/d/a/l7/g/a3;

    invoke-static {p0, p1}, Lcom/android/camera2/compat/theme/custom/mm/top/MainTopBar;->lambda$onCvClick$11(Ljava/lang/String;Ld/d/a/l7/g/a3;)V

    return-void
.end method
