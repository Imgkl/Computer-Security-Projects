.class Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;
.super Ljava/lang/Object;
.source "EmspManager.java"

# interfaces
.implements Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getCurrentLocation(Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/help/emsp/EmspManager;

.field final synthetic val$callback:Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

.field final synthetic val$db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/help/emsp/EmspManager;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;->this$0:Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    iput-object p2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;->val$db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    iput-object p3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;->val$callback:Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public EmspLocationUpdate(ZZLcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V
    .locals 6
    .param p1, "successful"    # Z
    .param p2, "isLocationMissing"    # Z
    .param p3, "payload"    # Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;

    .prologue
    .line 178
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;->this$0:Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    invoke-virtual {p3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->getX()D

    move-result-wide v2

    invoke-virtual {p3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->getMapWidth()D

    move-result-wide v4

    div-double/2addr v2, v4

    # setter for: Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionX:D
    invoke-static {v0, v2, v3}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->access$002(Lcom/eventgenie/android/utils/help/emsp/EmspManager;D)D

    .line 181
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;->this$0:Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    invoke-virtual {p3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->getY()D

    move-result-wide v2

    invoke-virtual {p3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->getMapLength()D

    move-result-wide v4

    div-double/2addr v2, v4

    # setter for: Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionY:D
    invoke-static {v0, v2, v3}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->access$102(Lcom/eventgenie/android/utils/help/emsp/EmspManager;D)D

    .line 182
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;->this$0:Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    invoke-virtual {p3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->getTimestamp()J

    move-result-wide v2

    # setter for: Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownPositionTimestamp:J
    invoke-static {v0, v2, v3}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->access$202(Lcom/eventgenie/android/utils/help/emsp/EmspManager;J)J

    .line 183
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;->this$0:Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    const/4 v1, 0x1

    # setter for: Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mHasLastKnownPosition:Z
    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->access$302(Lcom/eventgenie/android/utils/help/emsp/EmspManager;Z)Z

    .line 185
    invoke-virtual {p3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->getMapId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;->this$0:Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;->val$db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v1

    invoke-virtual {p3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->getMapId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbMaps;->getMapIDForEmspId(Ljava/lang/String;)J

    move-result-wide v2

    # setter for: Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownHallId:J
    invoke-static {v0, v2, v3}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->access$402(Lcom/eventgenie/android/utils/help/emsp/EmspManager;J)J

    .line 189
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;->this$0:Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    # getter for: Lcom/eventgenie/android/utils/help/emsp/EmspManager;->mLastKnownHallId:J
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->access$400(Lcom/eventgenie/android/utils/help/emsp/EmspManager;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 190
    const/4 p1, 0x0

    .line 199
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspManager$1;->val$callback:Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;->EmspLocationUpdate(ZZLcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V

    .line 200
    return-void

    .line 193
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method
