.class Landroid/support/v4/app/FragmentBreadCrumbs$1;
.super Ljava/lang/Object;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentBreadCrumbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentBreadCrumbs;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentBreadCrumbs;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentBreadCrumbs;

    .prologue
    .line 72
    iput-object p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    .line 77
    .local v0, "bse":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mParentEntry:Landroid/support/v4/app/BackStackEntryWithIcon;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$000(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/BackStackEntryWithIcon;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 78
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$100(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$100(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 103
    .end local v0    # "bse":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v0    # "bse":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$200(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 83
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$200(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v3

    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    .line 84
    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackEntryWithIcon;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$300(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/BackStackEntryWithIcon;

    move-result-object v2

    if-ne v0, v2, :cond_3

    const/4 v2, 0x0

    .line 83
    :goto_1
    invoke-interface {v3, v2, v4}, Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;->onBreadCrumbClick(Landroid/support/v4/app/FragmentManager$BackStackEntry;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackEntryWithIcon;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$300(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/BackStackEntryWithIcon;

    move-result-object v2

    if-ne v0, v2, :cond_5

    .line 90
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntryClearsStack:Z
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$400(Landroid/support/v4/app/FragmentBreadCrumbs;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$500(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 92
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$500(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 93
    .local v1, "first":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$500(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    goto :goto_0

    .end local v1    # "first":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    :cond_3
    move-object v2, v0

    .line 84
    goto :goto_1

    .line 96
    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$500(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 99
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$500(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    goto :goto_0
.end method
