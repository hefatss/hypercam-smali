.class public Lcom/android/camera/ui/doc/DocTransitionView$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/doc/DocTransitionView;->a([FLcom/android/camera/ui/doc/DocTransitionView$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/android/camera/ui/doc/DocTransitionView$c;

.field public final synthetic d:[F

.field public final synthetic f:Lcom/android/camera/ui/doc/DocTransitionView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/doc/DocTransitionView;Lcom/android/camera/ui/doc/DocTransitionView$c;[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$endPoints"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/doc/DocTransitionView$a;->f:Lcom/android/camera/ui/doc/DocTransitionView;

    iput-object p2, p0, Lcom/android/camera/ui/doc/DocTransitionView$a;->c:Lcom/android/camera/ui/doc/DocTransitionView$c;

    iput-object p3, p0, Lcom/android/camera/ui/doc/DocTransitionView$a;->d:[F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/doc/DocTransitionView$a;->c:Lcom/android/camera/ui/doc/DocTransitionView$c;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/doc/DocTransitionView$a;->d:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 2
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/doc/DocTransitionView$a;->d:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 3
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/doc/DocTransitionView$a;->d:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    .line 4
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object p0, p0, Lcom/android/camera/ui/doc/DocTransitionView$a;->d:[F

    const/4 v4, 0x5

    aget p0, p0, v4

    .line 5
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    invoke-interface {p1, v0}, Lcom/android/camera/ui/doc/DocTransitionView$c;->a(Landroid/graphics/Rect;)V

    return-void
.end method