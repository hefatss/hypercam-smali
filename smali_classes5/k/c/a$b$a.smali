.class public Lk/c/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lk/c/a$b;


# direct methods
.method public constructor <init>(Lk/c/a$b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/c/a$b$a;->d:Lk/c/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lk/c/a$b$a;->c:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lk/c/a$b$a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mCurrentConfig"

    invoke-static {v0, p1, v1}, Lk/a0/f;->m(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 2
    invoke-static {}, Lk/c/f;->h()Lk/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lk/c/f;->l()Lk/c/e;

    move-result-object v1

    .line 3
    iget v1, v1, Lk/c/e;->b:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 4
    const-class v0, Landroid/app/Activity;

    const-string v1, "mActivityInfo"

    invoke-static {v0, p1, v1}, Lk/a0/f;->m(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 5
    iget v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_0

    or-int/lit16 v1, v1, 0x1000

    .line 6
    iput v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 7
    iget-object p0, p0, Lk/c/a$b$a;->d:Lk/c/a$b;

    invoke-static {p0, p1}, Lk/c/a$b;->b(Lk/c/a$b;Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    check-cast p0, Lk/c/c;

    invoke-virtual {p0}, Lk/c/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    const-class p0, Landroid/app/Activity;

    const-string v0, "mCurrentConfig"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lk/a0/f;->u(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    .line 1
    iget-object p0, p0, Lk/c/a$b$a;->c:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lk/c/a$b$a;->c:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 2
    invoke-static {p1}, Lk/c/g;->h(Landroid/content/Context;)V

    .line 3
    invoke-static {p1}, Lk/e/d/o/b;->b(Landroid/content/Context;)I

    move-result v0

    .line 4
    invoke-static {v0}, Lk/e/d/o/b;->f(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {v0}, Lk/e/d/o/b;->g(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_3

    .line 6
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lk/c/a$b$a;->c(Landroid/app/Activity;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lk/c/a$b$a;->a(Landroid/app/Activity;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lk/c/a$b$a;->c:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayChanged activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk/c/d;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Lk/c/g;->h(Landroid/content/Context;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lk/c/a$b$a;->d:Lk/c/a$b;

    invoke-static {p1, p0}, Lk/c/a$b;->a(Lk/c/a$b;Lk/c/a$b$a;)V

    :goto_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
