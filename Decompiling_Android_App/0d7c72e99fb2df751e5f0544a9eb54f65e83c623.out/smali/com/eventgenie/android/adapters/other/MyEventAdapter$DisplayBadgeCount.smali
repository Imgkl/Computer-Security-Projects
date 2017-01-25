.class public Lcom/eventgenie/android/adapters/other/MyEventAdapter$DisplayBadgeCount;
.super Landroid/os/AsyncTask;
.source "MyEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/other/MyEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayBadgeCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;",
        "Ljava/lang/Integer;",
        "Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/adapters/other/MyEventAdapter;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/adapters/other/MyEventAdapter;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter$DisplayBadgeCount;->this$0:Lcom/eventgenie/android/adapters/other/MyEventAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;)Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;
    .locals 3
    .param p1, "holders"    # [Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;

    .prologue
    .line 153
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 154
    .local v0, "holder":Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;
    iget-object v1, v0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    iget-object v2, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter$DisplayBadgeCount;->this$0:Lcom/eventgenie/android/adapters/other/MyEventAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->access$000(Lcom/eventgenie/android/adapters/other/MyEventAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/GenieMobileModule;->performBadgeCount(Landroid/content/Context;)I

    .line 155
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, [Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/other/MyEventAdapter$DisplayBadgeCount;->doInBackground([Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;)Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter$DisplayBadgeCount;->this$0:Lcom/eventgenie/android/adapters/other/MyEventAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->access$000(Lcom/eventgenie/android/adapters/other/MyEventAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter$DisplayBadgeCount;->this$0:Lcom/eventgenie/android/adapters/other/MyEventAdapter;

    # getter for: Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->access$100(Lcom/eventgenie/android/adapters/other/MyEventAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->process(Landroid/content/Context;Landroid/view/animation/Animation;)V

    .line 161
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/other/MyEventAdapter$DisplayBadgeCount;->onPostExecute(Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;)V

    return-void
.end method
