.class Lcom/astuetz/PagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/astuetz/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/astuetz/PagerSlidingTabStrip;

.field final synthetic val$position:I

.field final synthetic val$tab:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->val$position:I

    iput-object p3, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->val$tab:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 265
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->access$400(Lcom/astuetz/PagerSlidingTabStrip;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^ tab onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # invokes: Lcom/astuetz/PagerSlidingTabStrip;->unselectAllTabs()V
    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->access$500(Lcom/astuetz/PagerSlidingTabStrip;)V

    .line 267
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->val$tab:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 268
    return-void
.end method
