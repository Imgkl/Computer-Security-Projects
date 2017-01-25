.class Lcom/astuetz/PagerSlidingTabStrip$PageListener;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/astuetz/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/astuetz/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p2, "x1"    # Lcom/astuetz/PagerSlidingTabStrip$1;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip$PageListener;-><init>(Lcom/astuetz/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/astuetz/PagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->access$300(Lcom/astuetz/PagerSlidingTabStrip;II)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 407
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # setter for: Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->access$102(Lcom/astuetz/PagerSlidingTabStrip;I)I

    .line 383
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # setter for: Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F
    invoke-static {v0, p2}, Lcom/astuetz/PagerSlidingTabStrip;->access$602(Lcom/astuetz/PagerSlidingTabStrip;F)F

    .line 385
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I
    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->access$700(Lcom/astuetz/PagerSlidingTabStrip;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->access$800(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    :goto_0
    # invokes: Lcom/astuetz/PagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v1, p1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->access$300(Lcom/astuetz/PagerSlidingTabStrip;II)V

    .line 387
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # invokes: Lcom/astuetz/PagerSlidingTabStrip;->unselectAllTabs()V
    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->access$500(Lcom/astuetz/PagerSlidingTabStrip;)V

    .line 388
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I
    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->access$700(Lcom/astuetz/PagerSlidingTabStrip;)I

    move-result v0

    if-lez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->access$800(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 393
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 396
    :cond_1
    return-void

    .line 385
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 414
    :cond_0
    return-void
.end method
