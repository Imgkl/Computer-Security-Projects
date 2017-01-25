.class Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;
.super Landroid/os/AsyncTask;
.source "Map2DActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/mapping/Map2DActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRoutePlanner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;",
        ">;"
    }
.end annotation


# instance fields
.field private hallId:J

.field private isMultihall:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V
    .locals 2

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1265
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->isMultihall:Ljava/lang/Boolean;

    .line 1266
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->hallId:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p2, "x1"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;

    .prologue
    .line 1264
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    .locals 8
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1270
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    invoke-static {v5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$600(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->toggleWarpVisibility(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Ljava/lang/Boolean;)V
    invoke-static {v4, v5, v6}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$2400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Ljava/lang/Boolean;)V

    .line 1271
    aget-object v4, p1, v7

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/eventgenie/android/utils/ValueCheck;->checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, "from":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, p1, v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/eventgenie/android/utils/ValueCheck;->checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1273
    .local v3, "to":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    const/4 v5, 0x0

    # setter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    invoke-static {v4, v5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$602(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    .line 1275
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static {v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->isMapItemsNull()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1276
    const/4 v1, 0x0

    .line 1277
    .local v1, "navi":Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;
    const/4 v2, 0x0

    .line 1279
    .local v2, "resultCand1":Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    new-instance v1, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;

    .end local v1    # "navi":Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static {v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->isMultihall:Ljava/lang/Boolean;

    invoke-direct {v1, v4, v5}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;-><init>(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;Ljava/lang/Boolean;)V

    .line 1280
    .restart local v1    # "navi":Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;
    iget-wide v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->hallId:J

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;->calculatePath(Ljava/lang/String;Ljava/lang/String;J)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    move-result-object v2

    .line 1282
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # setter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    invoke-static {v4, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$602(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    .line 1288
    .end local v1    # "navi":Lcom/eventgenie/android/mapping/navigation/a_star/Navigation_AStar;
    .end local v2    # "resultCand1":Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    :goto_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    invoke-static {v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$600(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    move-result-object v4

    return-object v4

    .line 1285
    :cond_0
    const-string v4, "^ MAP2D: RoutePlanner.doInBackground() - mapItemCollection is null!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1263
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->doInBackground([Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)V
    .locals 6
    .param p1, "result"    # Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    .prologue
    .line 1293
    if-eqz p1, :cond_4

    .line 1294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ MAP2D: RoutePlanner.onPostExecute() result.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getNavigationPointsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getNavigationPointsSize()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1296
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    sget v3, Lcom/eventgenie/android/R$string;->toast_navigation_no_path:I

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 1297
    const-string v2, "^ MAP2D: RoutePlanner.onPostExecute() Result path is null or zero"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 1317
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->removeDialog(I)V

    .line 1318
    return-void

    .line 1299
    :cond_2
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    sget v3, Lcom/eventgenie/android/R$string;->toast_navigation_route_found:I

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 1300
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getNavigationPointsSize()I

    move-result v2

    if-lez v2, :cond_1

    .line 1301
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getOrigin()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$2500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v1

    .line 1303
    .local v1, "originMapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J
    invoke-static {v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 1304
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$700(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v2

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/genie_connect/android/db/access/DbMaps;->getMapName(J)Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "originHallName":Ljava/lang/String;
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1900(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->hideOverlay()V

    .line 1306
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getMapId()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->changeHalls(Ljava/lang/String;JLjava/lang/String;)V
    invoke-static {v2, v0, v4, v5, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$800(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 1308
    .end local v0    # "originHallName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showNavigation(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)V
    invoke-static {v2, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$2300(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)V

    .line 1309
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1900(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->hideOverlay()V

    goto :goto_0

    .line 1314
    .end local v1    # "originMapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    :cond_4
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    sget v3, Lcom/eventgenie/android/R$string;->toast_navigation_no_path:I

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 1315
    const-string v2, "^ MAP2D: RoutePlanner.onPostExecute() The result collection is invalid. Will not plot..."

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1263
    check-cast p1, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->onPostExecute(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showDialog(I)V

    .line 1323
    return-void
.end method

.method public setHallId(J)V
    .locals 1
    .param p1, "hallId"    # J

    .prologue
    .line 1326
    iput-wide p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->hallId:J

    .line 1327
    return-void
.end method

.method public setIsMultihall(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isMultihall"    # Ljava/lang/Boolean;

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->isMultihall:Ljava/lang/Boolean;

    .line 1331
    return-void
.end method
