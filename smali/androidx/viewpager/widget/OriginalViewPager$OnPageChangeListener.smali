.class public interface abstract Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/OriginalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPageChangeListener"
.end annotation


# virtual methods
.method public abstract onPageScrollStateChanged(I)V
.end method

.method public abstract onPageScrolled(IFI)V
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
.end method

.method public abstract onPageSelected(I)V
.end method