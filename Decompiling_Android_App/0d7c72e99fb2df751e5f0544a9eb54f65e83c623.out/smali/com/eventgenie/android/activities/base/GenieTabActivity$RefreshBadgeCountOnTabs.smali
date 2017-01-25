.class public Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;
.super Landroid/os/AsyncTask;
.source "GenieTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/base/GenieTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshBadgeCountOnTabs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final mHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieTabActivity;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/activities/base/GenieTabActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p2, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;>;"
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;->this$0:Lcom/eventgenie/android/activities/base/GenieTabActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 643
    iput-object p2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;->mHolders:Ljava/util/List;

    .line 644
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 639
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;->mHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;

    .line 649
    .local v1, "viewHolder":Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
    iget-object v2, v1, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    iget-object v3, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;->this$0:Lcom/eventgenie/android/activities/base/GenieTabActivity;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/config/GenieMobileModule;->performBadgeCount(Landroid/content/Context;)I

    goto :goto_0

    .line 652
    .end local v1    # "viewHolder":Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;->mHolders:Ljava/util/List;

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 639
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;>;"
    iget-object v3, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;->this$0:Lcom/eventgenie/android/activities/base/GenieTabActivity;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->hasWidget(Lcom/genie_connect/android/db/config/GenieWidget;)Z

    move-result v2

    .line 659
    .local v2, "isOnDash":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;

    .line 660
    .local v0, "holder":Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
    iget-object v3, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;->this$0:Lcom/eventgenie/android/activities/base/GenieTabActivity;

    iget-object v4, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;->this$0:Lcom/eventgenie/android/activities/base/GenieTabActivity;

    # getter for: Lcom/eventgenie/android/activities/base/GenieTabActivity;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->access$000(Lcom/eventgenie/android/activities/base/GenieTabActivity;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->process(Landroid/content/Context;Landroid/view/animation/Animation;Z)V

    goto :goto_0

    .line 662
    .end local v0    # "holder":Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
    :cond_0
    return-void
.end method
