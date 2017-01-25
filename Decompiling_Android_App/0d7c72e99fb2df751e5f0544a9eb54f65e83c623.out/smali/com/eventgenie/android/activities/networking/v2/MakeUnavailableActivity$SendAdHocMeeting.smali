.class Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;
.super Landroid/os/AsyncTask;
.source "MakeUnavailableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAdHocMeeting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/genie_connect/common/net/container/NetworkResultJsonContent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mEndTime:Ljava/lang/String;

.field private final mEventDay:Ljava/lang/String;

.field private final mId:J

.field private final mName:Ljava/lang/String;

.field private final mStartTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p2, "eventDay"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/lang/String;
    .param p4, "endTime"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "id"    # J

    .prologue
    .line 467
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 468
    iput-object p5, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mName:Ljava/lang/String;

    .line 469
    iput-object p6, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mDescription:Ljava/lang/String;

    .line 470
    iput-object p2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mEventDay:Ljava/lang/String;

    .line 471
    iput-object p3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mStartTime:Ljava/lang/String;

    .line 472
    iput-object p4, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mEndTime:Ljava/lang/String;

    .line 473
    iput-wide p7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mId:J

    .line 474
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 19
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 478
    new-instance v3, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-direct {v3, v4}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;-><init>(Landroid/content/Context;)V

    .line 479
    .local v3, "netMeetings":Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v13

    .line 483
    .local v13, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 484
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mEventDay:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mStartTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mEndTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mDescription:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->agendaItemChange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v18

    .line 495
    .local v18, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isDeferred()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 496
    new-instance v15, Lcom/google/gson/Gson;

    invoke-direct {v15}, Lcom/google/gson/Gson;-><init>()V

    .line 498
    .local v15, "gson":Lcom/google/gson/Gson;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 499
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mId:J

    move-wide/from16 v16, v0

    .line 500
    .local v16, "localId":J
    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mId:J

    invoke-virtual {v13, v4, v6, v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->deleteEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)I

    .line 505
    :goto_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mEventDay:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mStartTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mEndTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mDescription:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->getAdhocInstance(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;

    move-result-object v12

    .line 513
    .local v12, "agendaItemGson":Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;
    const-class v4, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;

    invoke-virtual {v15, v12, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v14

    .line 524
    .end local v12    # "agendaItemGson":Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;
    .end local v15    # "gson":Lcom/google/gson/Gson;
    .end local v16    # "localId":J
    .local v14, "entityJson":Ljava/lang/String;
    :goto_2
    if-eqz v14, :cond_0

    .line 525
    new-instance v4, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v4}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/model/AgendaItem;

    .line 526
    .local v2, "agendaItem":Lcom/genie_connect/common/db/model/AgendaItem;
    invoke-static {v14}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromString(Ljava/lang/String;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/genie_connect/common/db/model/AgendaItem;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 527
    invoke-virtual {v13}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseWrapper()Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-virtual {v6}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/genie_connect/common/db/model/AgendaItem;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    .line 529
    .end local v2    # "agendaItem":Lcom/genie_connect/common/db/model/AgendaItem;
    :cond_0
    return-object v18

    .line 486
    .end local v14    # "entityJson":Ljava/lang/String;
    .end local v18    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mEventDay:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mStartTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mEndTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->mDescription:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->agendaItemCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v18

    .restart local v18    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    goto/16 :goto_0

    .line 502
    .restart local v15    # "gson":Lcom/google/gson/Gson;
    :cond_2
    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v13, v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->findFreeIdForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)J

    move-result-wide v16

    .restart local v16    # "localId":J
    goto :goto_1

    .line 514
    .end local v15    # "gson":Lcom/google/gson/Gson;
    .end local v16    # "localId":J
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isDeferred()Z

    move-result v4

    if-nez v4, :cond_5

    .line 515
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v4

    const-string v5, "data"

    invoke-interface {v4, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 516
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v4

    const-string v5, "data"

    invoke-interface {v4, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "entityJson":Ljava/lang/String;
    goto :goto_2

    .line 518
    .end local v14    # "entityJson":Ljava/lang/String;
    :cond_4
    const/4 v14, 0x0

    .restart local v14    # "entityJson":Ljava/lang/String;
    goto :goto_2

    .line 521
    .end local v14    # "entityJson":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "entityJson":Ljava/lang/String;
    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 459
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 3
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->showIndicator(ZZ)V

    .line 536
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    sget v1, Lcom/eventgenie/android/R$string;->meeting_sent:I

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 541
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->finish()V

    .line 549
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    const/4 v1, 0x1

    # invokes: Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->setActionbarEnabled(Z)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->access$300(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;Z)V

    .line 550
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-static {v1, p1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getNetworkResultError(Landroid/content/Context;Lcom/genie_connect/common/net/container/NetworkResult;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 459
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 554
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->showIndicator(ZZ)V

    .line 555
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    # invokes: Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->setActionbarEnabled(Z)V
    invoke-static {v0, v2}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->access$300(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;Z)V

    .line 556
    return-void
.end method
