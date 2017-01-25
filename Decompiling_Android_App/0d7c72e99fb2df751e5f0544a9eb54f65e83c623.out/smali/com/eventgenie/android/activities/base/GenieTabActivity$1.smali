.class Lcom/eventgenie/android/activities/base/GenieTabActivity$1;
.super Ljava/lang/Object;
.source "GenieTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/base/GenieTabActivity;->getOnTagTabChangeListener(Ljava/util/Map;)Landroid/widget/TabHost$OnTabChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieTabActivity;

.field final synthetic val$tagMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieTabActivity;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieTabActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$1;->val$tagMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$1;->val$tagMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 375
    .local v0, "tagId":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieTabActivity;

    const-string/jumbo v2, "tagsv2"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 381
    :cond_0
    return-void
.end method
