.class public Ld/d/a/s6/b/t/a/e;
.super Ld/d/a/c7/k8/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ld/d/a/c7/k8/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getEntryName()Ljava/lang/String;
    .locals 0
    .annotation build Ld/d/a/w6/c;
    .end annotation

    .line 1
    const-class p0, Ld/d/a/s6/b/t/a/e;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeItem()Ld/d/a/t6/a5/n/a;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    const v1, 0x7f130916

    .line 2
    invoke-virtual {p0, v0, v1}, Ld/d/a/c7/k8/a;->createComponentDataItem([II)Ld/d/a/k6/e/c;

    move-result-object p0

    .line 3
    new-instance v0, Ld/d/a/t6/a5/n/a$a;

    invoke-direct {v0}, Ld/d/a/t6/a5/n/a$a;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Ld/d/a/t6/a5/n/a$a;->e(Ld/d/a/k6/e/c;)Ld/d/a/t6/a5/n/a$a;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ld/d/a/t6/a5/n/a$a;->c()Ld/d/a/t6/a5/n/a;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080605
        0x7f080df6
        0x7f080df5
        0x7f080df4
    .end array-data
.end method

.method public getModeUI()Ld/d/a/t6/a5/l;
    .locals 1

    .line 1
    new-instance v0, Ld/d/a/s6/b/t/a/b;

    iget-object p0, p0, Ld/d/a/c7/k8/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Ld/d/a/s6/b/t/a/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getModule()Ld/d/a/c7/z7;
    .locals 0

    .line 1
    new-instance p0, Ld/d/a/s6/b/t/a/c;

    invoke-direct {p0}, Ld/d/a/s6/b/t/a/c;-><init>()V

    return-object p0
.end method

.method public getModuleDevice()Ld/d/a/s6/b/c;
    .locals 0

    .line 1
    new-instance p0, Ld/d/a/s6/b/t/a/d;

    invoke-direct {p0}, Ld/d/a/s6/b/t/a/d;-><init>()V

    return-object p0
.end method

.method public getModuleId()I
    .locals 0

    const/16 p0, 0xad

    return p0
.end method

.method public support()Z
    .locals 0

    .line 1
    invoke-static {}, Ld/k/a/b;->j2()Ld/k/a/b;

    move-result-object p0

    invoke-virtual {p0}, Ld/k/a/b;->P8()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Ld/k/a/b;->j2()Ld/k/a/b;

    move-result-object p0

    invoke-virtual {p0}, Ld/k/a/b;->qb()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method