.class Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;
.super Ljava/lang/Object;
.source "Map2DActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showDialogDefault(Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 826
    const-wide/16 v0, -0x1

    .line 827
    .local v0, "hallId":J
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$600(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;->val$tag:Ljava/lang/String;

    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J
    invoke-static {v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->calculateHallToLoad(Ljava/lang/String;J)J

    move-result-wide v0

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ NAV: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$600(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ NAV: Warping to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currently in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 830
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 831
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$700(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/genie_connect/android/db/access/DbMaps;->getMapName(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->changeHalls(Ljava/lang/String;JLjava/lang/String;)V
    invoke-static {v2, v3, v0, v1, v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$800(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;JLjava/lang/String;)V

    .line 833
    :cond_0
    return-void
.end method
