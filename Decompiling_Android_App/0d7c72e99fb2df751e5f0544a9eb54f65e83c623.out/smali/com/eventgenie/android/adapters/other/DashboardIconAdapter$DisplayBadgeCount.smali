.class public Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;
.super Landroid/os/AsyncTask;
.source "DashboardIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayBadgeCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;",
        "Ljava/lang/Integer;",
        "Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;->this$0:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;)Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
    .locals 3
    .param p1, "holders"    # [Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;

    .prologue
    .line 183
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 184
    .local v0, "holder":Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
    iget-object v1, v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    iget-object v2, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;->this$0:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->access$000(Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/GenieMobileModule;->performBadgeCount(Landroid/content/Context;)I

    .line 185
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 178
    check-cast p1, [Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;->doInBackground([Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;)Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;->this$0:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->access$000(Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;->this$0:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->access$100(Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;->this$0:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mIsMyInboxOnTheDashboard:Z
    invoke-static {v2}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->access$200(Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;)Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->process(Landroid/content/Context;Landroid/view/animation/Animation;Z)V

    .line 192
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 178
    check-cast p1, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;->onPostExecute(Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;)V

    return-void
.end method
