.class public Ld/d/a/e6/j/a;
.super Ld/d/a/e6/j/c;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private m:F

.field private n:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aniView"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ld/d/a/e6/j/c;-><init>(Landroid/view/View;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Ld/d/a/e6/j/a;->m:F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Ld/d/a/e6/j/a;->n:F

    return-void
.end method

.method public static i(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aniView"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Ld/d/a/e6/j/c;->c(Landroid/view/View;I)V

    return-void
.end method

.method public static j(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aniView"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Ld/d/a/e6/j/c;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld/d/a/e6/j/c;->c(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Ld/d/a/e6/j/c;->c:Landroid/view/View;

    iget v1, p0, Ld/d/a/e6/j/a;->n:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 3
    iget-object v0, p0, Ld/d/a/e6/j/c;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget p0, p0, Ld/d/a/e6/j/a;->m:F

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    return-object p0
.end method

.method public k(F)Ld/d/a/e6/j/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iput p1, p0, Ld/d/a/e6/j/a;->n:F

    return-object p0
.end method

.method public l(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetAlpha"
        }
    .end annotation

    .line 1
    iput p1, p0, Ld/d/a/e6/j/a;->m:F

    return-void
.end method
