.class Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;
.super Landroid/os/AsyncTask;
.source "MeetingV2BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopulateDetailsBlockTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private final mEntityId:J

.field private final mEntityType:Ljava/lang/String;

.field private mJSONObject:Lorg/json/JSONObject;

.field private final mVisitorBlockview:Landroid/view/View;

.field final synthetic this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;Landroid/content/Context;Ljava/lang/String;JLcom/genie_connect/android/db/config/AppConfig;Landroid/view/View;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "entityType"    # Ljava/lang/String;
    .param p4, "entityId"    # J
    .param p6, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p7, "mBlockView"    # Landroid/view/View;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mContext:Landroid/content/Context;

    .line 230
    iput-object p7, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mVisitorBlockview:Landroid/view/View;

    .line 231
    iput-wide p4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mEntityId:J

    .line 232
    iput-object p3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mEntityType:Ljava/lang/String;

    .line 233
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 238
    const-string v2, "exhibitors"

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mEntityType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v2

    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mEntityId:J

    invoke-virtual {v2, v4, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorDetails(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 241
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-static {v2}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 266
    :goto_0
    return-object v2

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-static {v2}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 247
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 249
    :cond_1
    const-string/jumbo v2, "visitors"

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mEntityType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "network":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mEntityId:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    .line 254
    .local v1, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/platform/json/GenieJsonObject;

    invoke-virtual {v2}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->getRawObject()Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mJSONObject:Lorg/json/JSONObject;

    .line 256
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 263
    .end local v1    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 266
    .end local v0    # "network":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    :cond_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 215
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mVisitorBlockview:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 273
    const-string v0, "exhibitors"

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mEntityType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mVisitorBlockview:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->populateExhibitor(Landroid/content/Context;Luk/co/alt236/easycursor/EasyCursor;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const-string/jumbo v0, "visitors"

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mEntityType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mVisitorBlockview:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->populateVisitor(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 215
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
