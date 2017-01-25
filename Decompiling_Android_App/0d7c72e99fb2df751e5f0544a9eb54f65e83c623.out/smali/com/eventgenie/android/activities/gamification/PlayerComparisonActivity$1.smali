.class Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity$1;
.super Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;
.source "PlayerComparisonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->populateHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/Class;)V
    .locals 8
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "x2"    # J

    .prologue
    .line 165
    .local p6, "x3":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/genie_connect/android/net/container/gson/EntityGsonModel;>;"
    iput-object p1, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity$1;->this$0:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;-><init>(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)V
    .locals 5
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/GetEntityTask;->onPostExecute(Ljava/lang/Object;)V

    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isSuccesful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity$1;->this$0:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;

    # getter for: Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mComparisonHelper:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;
    invoke-static {v0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->access$000(Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;)Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->populateMyOpponentSide(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;JLcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;)V

    .line 172
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 165
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity$1;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)V

    return-void
.end method
