.class public Ld/d/a/c7/m8/b/ga$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mediaprocess/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/d/a/c7/m8/b/ga;->Z7(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/d/a/c7/m8/b/ga;


# direct methods
.method public constructor <init>(Ld/d/a/c7/m8/b/ga;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/d/a/c7/m8/b/ga$f;->a:Ld/d/a/c7/m8/b/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveFailed()V
    .locals 4
    .annotation build Ld/d/a/w6/c;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "OnReceiveFailed:"

    const-string v3, "yes"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Ld/d/a/c7/m8/b/ga$f;->a:Ld/d/a/c7/m8/b/ga;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ld/d/a/c7/m8/b/ga;->f0(Ld/d/a/c7/m8/b/ga;Z)Z

    .line 3
    iget-object p0, p0, Ld/d/a/c7/m8/b/ga$f;->a:Ld/d/a/c7/m8/b/ga;

    invoke-static {p0}, Ld/d/a/c7/m8/b/ga;->l0(Ld/d/a/c7/m8/b/ga;)Ld/d/a/l7/g/t3/g;

    move-result-object p0

    invoke-interface {p0, v0}, Ld/d/a/l7/g/t3/g;->w(Z)V

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 3
    .annotation build Ld/d/a/w6/c;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnReceiveFinish:"

    const-string v2, "yes"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ld/d/a/c7/m8/b/ga$f;->a:Ld/d/a/c7/m8/b/ga;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ld/d/a/c7/m8/b/ga;->f0(Ld/d/a/c7/m8/b/ga;Z)Z

    .line 3
    iget-object p0, p0, Ld/d/a/c7/m8/b/ga$f;->a:Ld/d/a/c7/m8/b/ga;

    invoke-static {p0}, Ld/d/a/c7/m8/b/ga;->l0(Ld/d/a/c7/m8/b/ga;)Ld/d/a/l7/g/t3/g;

    move-result-object p0

    invoke-interface {p0, v1}, Ld/d/a/l7/g/t3/g;->w(Z)V

    return-void
.end method
