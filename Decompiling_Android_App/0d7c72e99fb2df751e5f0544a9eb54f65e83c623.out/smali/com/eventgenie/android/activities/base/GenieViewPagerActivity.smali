.class public abstract Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "GenieViewPagerActivity.java"


# instance fields
.field private mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    if-nez v0, :cond_0

    .line 45
    sget v0, Lcom/eventgenie/android/R$id;->indicator:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 46
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-interface {v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->getDetailsTitleColour()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 47
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(I)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    return-object v0
.end method

.method protected getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 55
    sget v0, Lcom/eventgenie/android/R$id;->pager:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method
