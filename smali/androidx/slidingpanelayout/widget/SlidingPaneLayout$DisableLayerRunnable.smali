.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisableLayerRunnable"
.end annotation


# instance fields
.field public final mChildView:Landroid/view/View;

.field public final synthetic this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
