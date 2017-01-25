.class Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;
.super Landroid/os/AsyncTask;
.source "MeetingFinaliseV2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMeetingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/genie_connect/common/net/container/NetworkResultJsonContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final SANITY_CHECK_TIMEOUT:I = 0x1


# instance fields
.field private autoAccept:Z

.field private mExistingMeetingId:J

.field private mMeetingCustomLocation:Ljava/lang/String;

.field private mMeetingDescription:Ljava/lang/String;

.field private mMeetingEventDay:Ljava/lang/String;

.field private mMeetingFixedLocation:Ljava/lang/String;

.field private mMeetingName:Ljava/lang/String;

.field private mMeetingStartTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)V
    .locals 1

    .prologue
    .line 239
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->autoAccept:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 18
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 253
    new-instance v3, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-direct {v3, v4}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;-><init>(Landroid/content/Context;)V

    .line 257
    .local v3, "netMeetings":Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mExistingMeetingId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 258
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mExistingMeetingId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingDescription:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingFixedLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingCustomLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingStartTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingEventDay:Ljava/lang/String;

    invoke-virtual/range {v3 .. v11}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->meetingReArrange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v17

    .line 280
    .local v17, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    const-wide/16 v4, 0x1

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 282
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-virtual/range {v17 .. v17}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v15

    .line 289
    .local v15, "meetingJson":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v15, :cond_0

    .line 290
    new-instance v4, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v4}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v4, v5, v15}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v13

    .line 294
    .local v13, "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    .line 295
    .local v2, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseWrapper()Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-virtual {v6}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-virtual {v13, v4, v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    .line 299
    .end local v2    # "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v13    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .end local v15    # "meetingJson":Lcom/genie_connect/common/platform/json/IJsonObject;
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-virtual/range {v17 .. v17}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v16

    .line 302
    .local v16, "outer":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v16, :cond_1

    .line 303
    const-string v4, "data"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v14

    .line 305
    .local v14, "meeting":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v14, :cond_1

    const-string v4, "status"

    invoke-interface {v14, v4}, Lcom/genie_connect/common/platform/json/IJsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    const-string v4, "status"

    invoke-interface {v14, v4}, Lcom/genie_connect/common/platform/json/IJsonObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->autoAccept:Z

    .line 310
    .end local v14    # "meeting":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v16    # "outer":Lcom/genie_connect/common/platform/json/IJsonObject;
    :cond_1
    return-object v17

    .line 267
    .end local v17    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingType:I
    invoke-static {v4}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->access$000(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mToId:J
    invoke-static {v5}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->access$100(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingDescription:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingFixedLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingCustomLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingStartTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingEventDay:Ljava/lang/String;

    invoke-virtual/range {v3 .. v12}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->meetingArrange(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v17

    .restart local v17    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    goto/16 :goto_0

    .line 282
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 283
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .line 306
    .restart local v14    # "meeting":Lcom/genie_connect/common/platform/json/IJsonObject;
    .restart local v16    # "outer":Lcom/genie_connect/common/platform/json/IJsonObject;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 239
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->doInBackground([Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 3
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->showIndicator(ZZ)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ RS Meeting request config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->largeInfoLog(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->autoAccept:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->AUTO_ACCEPT_MEETING_SUCCESS:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->finish()V

    .line 338
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 339
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->ARRANGE_MEETING_SUCCESS:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->ARRANGE_MEETING_FAILED:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 239
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->showIndicator(ZZ)V

    .line 344
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 346
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditMeetingName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->access$200(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingName:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditMeetingDescription:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->access$300(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingDescription:Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mFixedLocationKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->access$400(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingFixedLocation:Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditCustomLocation:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->access$500(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingCustomLocation:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingTimeValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->access$600(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingStartTime:Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingDateValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->access$700(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mMeetingEventDay:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingRescheduleId:Ljava/lang/Long;
    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->access$800(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;->mExistingMeetingId:J

    .line 353
    return-void
.end method
