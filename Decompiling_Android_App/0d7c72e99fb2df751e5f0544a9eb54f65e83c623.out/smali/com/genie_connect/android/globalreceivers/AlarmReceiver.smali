.class public Lcom/genie_connect/android/globalreceivers/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/globalreceivers/AlarmReceiver$1;
    }
.end annotation


# static fields
.field public static final AGENDA_ITEM_TYPE:Ljava/lang/String; = "agenda_item_type"

.field public static final ENTITY_ID:Ljava/lang/String; = "session_id"

.field public static final ENTITY_LOCATION:Ljava/lang/String; = "location"

.field static final TAG:Ljava/lang/String; = "^ AlarmReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 110
    return-void
.end method

.method private declared-synchronized displayNotificationForMeeting(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;Ljava/util/Set;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "entityId"    # J
    .param p5, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p6, "peopleInvolved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v5

    const-class v6, Lcom/genie_connect/android/repository/MeetingRepository;

    invoke-virtual {v5, v6}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/genie_connect/android/repository/MeetingRepository;

    .line 125
    .local v17, "sessionRepository":Lcom/genie_connect/android/repository/MeetingRepository;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/repository/MeetingRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/common/db/model/Meeting;

    .line 127
    .local v4, "byId":Lcom/genie_connect/common/db/model/Meeting;
    invoke-static/range {p1 .. p1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v5

    iget-object v6, v4, Lcom/genie_connect/common/db/model/Meeting;->id:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/access/Udm;->meetingsGet(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v15

    .line 128
    .local v15, "easyCursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v15}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    :cond_0
    const-string/jumbo v5, "visitorNames"

    invoke-interface {v15, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 132
    .local v18, "visitorname":Ljava/lang/String;
    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {v15}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    .end local v18    # "visitorname":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v5, v1, v2, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v16

    .line 139
    .local v16, "entityDetailsIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->hashCode()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 142
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_2

    .line 143
    iget-object v11, v4, Lcom/genie_connect/common/db/model/Meeting;->name:Ljava/lang/String;

    iget-object v12, v4, Lcom/genie_connect/common/db/model/Meeting;->runningTime_from:Ljava/util/Date;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v5 .. v14}, Lcom/genie_connect/android/globalreceivers/AlarmReceiver;->prepareNotification(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_2
    monitor-exit p0

    return-void

    .line 124
    .end local v4    # "byId":Lcom/genie_connect/common/db/model/Meeting;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v15    # "easyCursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v16    # "entityDetailsIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v17    # "sessionRepository":Lcom/genie_connect/android/repository/MeetingRepository;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized displayNotificationForSession(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;Ljava/util/Set;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "entityId"    # J
    .param p5, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p6, "peopleInvolved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v5

    const-class v6, Lcom/genie_connect/android/repository/SessionRepository;

    invoke-virtual {v5, v6}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/genie_connect/android/repository/SessionRepository;

    .line 197
    .local v17, "sessionRepository":Lcom/genie_connect/android/repository/SessionRepository;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/repository/SessionRepository;->getById(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 199
    .local v16, "session":Lcom/genie_connect/common/db/model/Session;
    if-nez v16, :cond_1

    .line 244
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_1
    :try_start_1
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/genie_connect/common/db/model/Session;->leadChair:Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 205
    invoke-static/range {p1 .. p1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/genie_connect/common/db/model/Session;->leadChair:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/access/DbSpeakers;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v18

    .line 206
    .local v18, "speakersForSession":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface/range {v18 .. v18}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 208
    :cond_2
    const-string v5, "fullTitleNames"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 209
    .local v15, "fullTitleNames":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface/range {v18 .. v18}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 213
    .end local v15    # "fullTitleNames":Ljava/lang/String;
    .end local v18    # "speakersForSession":Luk/co/alt236/easycursor/EasyCursor;
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->CO_CHAIR:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-virtual {v5, v6, v7, v8}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakersForSession(JLcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v18

    .line 214
    .restart local v18    # "speakersForSession":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface/range {v18 .. v18}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 216
    :cond_4
    const-string v5, "fullTitleNames"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 217
    .restart local v15    # "fullTitleNames":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface/range {v18 .. v18}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 220
    .end local v15    # "fullTitleNames":Ljava/lang/String;
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->KEY_SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-virtual {v5, v6, v7, v8}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakersForSession(JLcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v18

    .line 221
    invoke-interface/range {v18 .. v18}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 223
    :cond_6
    const-string v5, "fullTitleNames"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 224
    .restart local v15    # "fullTitleNames":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface/range {v18 .. v18}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 227
    .end local v15    # "fullTitleNames":Ljava/lang/String;
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-virtual {v5, v6, v7, v8}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakersForSession(JLcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v18

    .line 228
    invoke-interface/range {v18 .. v18}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 230
    :cond_8
    const-string v5, "fullTitleNames"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 231
    .restart local v15    # "fullTitleNames":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface/range {v18 .. v18}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 235
    .end local v15    # "fullTitleNames":Ljava/lang/String;
    :cond_9
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v5, v1, v2, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v4

    .line 238
    .local v4, "entityDetailsIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->hashCode()I

    move-result v5

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 241
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v16, :cond_0

    .line 242
    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/genie_connect/common/db/model/Session;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/genie_connect/common/db/model/Session;->runningTime_from:Ljava/util/Date;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v5 .. v14}, Lcom/genie_connect/android/globalreceivers/AlarmReceiver;->prepareNotification(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 196
    .end local v4    # "entityDetailsIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v16    # "session":Lcom/genie_connect/common/db/model/Session;
    .end local v17    # "sessionRepository":Lcom/genie_connect/android/repository/SessionRepository;
    .end local v18    # "speakersForSession":Luk/co/alt236/easycursor/EasyCursor;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized displayNotificationForSubsession(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;Ljava/util/Set;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "entityId"    # J
    .param p5, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p6, "peopleInvolved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v5

    const-class v6, Lcom/genie_connect/android/repository/SubsessionRepository;

    invoke-virtual {v5, v6}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/genie_connect/android/repository/SubsessionRepository;

    .line 158
    .local v16, "sessionRepository":Lcom/genie_connect/android/repository/SubsessionRepository;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/repository/SubsessionRepository;->getById(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Subsession;

    move-result-object v18

    .line 160
    .local v18, "subsession":Lcom/genie_connect/common/db/model/Subsession;
    invoke-static/range {p1 .. p1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/genie_connect/common/db/model/Subsession;->id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->KEY_SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-virtual {v5, v6, v7, v8}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakersForSubSession(JLcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v17

    .line 161
    .local v17, "speakersForSession":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface/range {v17 .. v17}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    :cond_0
    const-string v5, "fullTitleNames"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 164
    .local v15, "fullTitleNames":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface/range {v17 .. v17}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    .end local v15    # "fullTitleNames":Ljava/lang/String;
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/genie_connect/common/db/model/Subsession;->id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-virtual {v5, v6, v7, v8}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakersForSubSession(JLcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v17

    .line 168
    invoke-interface/range {v17 .. v17}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    :cond_2
    const-string v5, "fullTitleNames"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 171
    .restart local v15    # "fullTitleNames":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface/range {v17 .. v17}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    .end local v15    # "fullTitleNames":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v5, v1, v2, v6}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v4

    .line 178
    .local v4, "entityDetailsIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->hashCode()I

    move-result v5

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 181
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v18, :cond_4

    .line 182
    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/genie_connect/common/db/model/Subsession;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/genie_connect/common/db/model/Subsession;->runningTime_from:Ljava/util/Date;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v5 .. v14}, Lcom/genie_connect/android/globalreceivers/AlarmReceiver;->prepareNotification(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_4
    monitor-exit p0

    return-void

    .line 157
    .end local v4    # "entityDetailsIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v16    # "sessionRepository":Lcom/genie_connect/android/repository/SubsessionRepository;
    .end local v17    # "speakersForSession":Luk/co/alt236/easycursor/EasyCursor;
    .end local v18    # "subsession":Lcom/genie_connect/common/db/model/Subsession;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized displayNotificationIfRequired(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "entityId"    # J
    .param p5, "location"    # Ljava/lang/String;

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ AlarmReceiver: displayNotificationIfRequired() called with context = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], entityType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], entityId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], location = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 97
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v7, "peopleInvolved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/genie_connect/android/globalreceivers/AlarmReceiver$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ AlarmReceiver: the entity type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] does not support notifications."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 101
    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/genie_connect/android/globalreceivers/AlarmReceiver;->displayNotificationForSession(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v7    # "peopleInvolved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v7    # "peopleInvolved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 104
    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/genie_connect/android/globalreceivers/AlarmReceiver;->displayNotificationForSubsession(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :pswitch_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 107
    invoke-direct/range {v1 .. v7}, Lcom/genie_connect/android/globalreceivers/AlarmReceiver;->displayNotificationForMeeting(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;Ljava/util/Set;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isNotificationsEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    sget-boolean v0, Lcom/genie_connect/android/services/lss/LiveSyncService;->cleanAllNotifications:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareNotification(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Set;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "sessionId"    # J
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "runningTime_from"    # Ljava/util/Date;
    .param p8, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "J",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p9, "speakersList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v8, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    .local v8, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    sget v2, Lcom/eventgenie/android/R$string;->notification_format_big_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 262
    sget v2, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 263
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 264
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 266
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v8, v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 267
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 269
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 271
    const-string v2, "stacked_lanyon_group"

    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 273
    sget-object v2, Lcom/genie_connect/android/globalreceivers/AlarmReceiver$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 280
    invoke-direct/range {v2 .. v8}, Lcom/genie_connect/android/globalreceivers/AlarmReceiver;->prepareNotificationForSessions(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Set;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 284
    :goto_0
    invoke-static {p1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getTimeZoneOfEvent()Ljava/util/TimeZone;

    move-result-object v9

    .line 285
    .local v9, "eventTimeZone":Ljava/util/TimeZone;
    invoke-virtual/range {p7 .. p7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual/range {p7 .. p7}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    add-long v10, v2, v4

    .line 287
    .local v10, "now":J
    invoke-virtual {v8, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 288
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 290
    invoke-static {p1}, Lcom/genie_connect/android/notifications/GenieNotificationsManagerFactory;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/notifications/IGenieNotificationsManager;

    move-result-object v2

    invoke-virtual {v8}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-interface {v2, v3, v0, v1, p2}, Lcom/genie_connect/android/notifications/IGenieNotificationsManager;->addNotifications(Landroid/app/Notification;JLcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    .line 291
    return-void

    .end local v9    # "eventTimeZone":Ljava/util/TimeZone;
    .end local v10    # "now":J
    :pswitch_0
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 275
    invoke-direct/range {v2 .. v8}, Lcom/genie_connect/android/globalreceivers/AlarmReceiver;->prepareNotificationForMeeting(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Set;Landroid/support/v4/app/NotificationCompat$Builder;)V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private prepareNotificationForMeeting(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Set;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "runningTime_from"    # Ljava/util/Date;
    .param p4, "location"    # Ljava/lang/String;
    .param p6, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/NotificationCompat$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 333
    .local p5, "speakersList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 335
    .local v0, "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    const-string v3, ", "

    invoke-static {v3, p5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "participants":Ljava/lang/String;
    sget v3, Lcom/eventgenie/android/R$string;->notification_format_meeting_text:I

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/genie_connect/common/utils/date/TimeFormatter;->timeFormat12Hr:Ljava/text/DateFormat;

    invoke-virtual {v6, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "string":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p6, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 341
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 343
    invoke-virtual {p6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 344
    return-void
.end method

.method private prepareNotificationForSessions(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Set;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "runningTime_from"    # Ljava/util/Date;
    .param p4, "location"    # Ljava/lang/String;
    .param p6, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/NotificationCompat$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "speakersList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 304
    new-instance v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 306
    .local v0, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    sget v2, Lcom/eventgenie/android/R$string;->notification_format_session_title_collapsed:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 308
    sget v2, Lcom/eventgenie/android/R$string;->notification_format_big_title:I

    new-array v3, v6, [Ljava/lang/Object;

    sget v4, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 309
    sget v2, Lcom/eventgenie/android/R$string;->notification_format_session_title:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 311
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    const-string v2, ", "

    invoke-static {v2, p5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "join":Ljava/lang/String;
    sget v2, Lcom/eventgenie/android/R$string;->notification_format_session_speakers:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 315
    .end local v1    # "join":Ljava/lang/String;
    :cond_0
    sget v2, Lcom/eventgenie/android/R$string;->notification_format_session_scheduled:I

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/genie_connect/common/utils/date/TimeFormatter;->timeFormat12Hr:Ljava/text/DateFormat;

    invoke-virtual {v4, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 316
    if-eqz p4, :cond_1

    .line 317
    sget v2, Lcom/eventgenie/android/R$string;->notification_format_session_location:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 319
    :cond_1
    invoke-virtual {p6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 320
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, -0x1

    .line 62
    const-string v1, "^ AlarmReceiveronReceive(), ... will launch some sort of notification if requied "

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/genie_connect/android/globalreceivers/AlarmReceiver;->isNotificationsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const-string v1, "session_id"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 67
    .local v0, "sessionId":Ljava/lang/Long;
    const-string v1, "agenda_item_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "stringExtra":Ljava/lang/String;
    const-string v1, "location"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "location":Ljava/lang/String;
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 71
    .local v3, "genieEntity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    const-string v1, "meeting"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-lez v1, :cond_4

    .line 80
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/genie_connect/android/globalreceivers/AlarmReceiver;->displayNotificationIfRequired(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;)V

    .line 85
    .end local v0    # "sessionId":Ljava/lang/Long;
    .end local v3    # "genieEntity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "stringExtra":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 73
    .restart local v0    # "sessionId":Ljava/lang/Long;
    .restart local v3    # "genieEntity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .restart local v6    # "location":Ljava/lang/String;
    .restart local v7    # "stringExtra":Ljava/lang/String;
    :cond_2
    const-string v1, "session"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    goto :goto_0

    .line 75
    :cond_3
    const-string v1, "subsession"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    goto :goto_0

    .line 82
    :cond_4
    const-string v1, "^ AlarmReceiver missing Session ID"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
