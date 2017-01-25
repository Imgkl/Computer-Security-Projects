.class public Lcom/eventgenie/android/push/PushIntentReceiverV2;
.super Lcom/urbanairship/push/BaseIntentReceiver;
.source "PushIntentReceiverV2.java"


# static fields
.field private static final sIgnoredKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "collapse_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "from"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.urbanairship.push.NOTIFICATION_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.urbanairship.push.CANONICAL_PUSH_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.urbanairship.push.PUSH_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.urbanairship.push.APID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.urbanairship.push.ALERT"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/push/PushIntentReceiverV2;->sIgnoredKeys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/urbanairship/push/BaseIntentReceiver;-><init>()V

    return-void
.end method

.method private static checkIfDataExists(Landroid/content/Context;Ljava/lang/Long;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 197
    :try_start_0
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    .line 198
    .local v1, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/genie_connect/android/db/access/Udm;->messagesGet(Ljava/lang/Long;Ljava/lang/Integer;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 200
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 201
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 202
    const/4 v3, 0x1

    .line 210
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    :goto_0
    return v3

    .line 204
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    :cond_0
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ PUSH: checkIfDataExists(): Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getMessageIntent(Landroid/content/Context;J)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 241
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    return-object v0
.end method

.method private static handleExtras(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;Ljava/lang/String;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushMessage"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 116
    move-object/from16 v16, p1

    .line 117
    .local v16, "message":Lcom/urbanairship/push/PushMessage;
    if-nez v16, :cond_1

    .line 186
    :cond_0
    return-void

    .line 119
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 120
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 124
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 125
    .local v13, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    .line 127
    .local v21, "uAContext":Landroid/content/Context;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ PUSH: HANDLING EXTRAS: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 129
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 131
    .local v12, "key":Ljava/lang/String;
    sget-object v22, Lcom/eventgenie/android/push/PushIntentReceiverV2;->sIgnoredKeys:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 135
    const-string v22, "data_update"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 136
    const-string v22, "advert"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 137
    const-string v22, "emergency"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 138
    const-string/jumbo v22, "wifi_add"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 139
    const-string v22, "barcode"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 140
    const-string v22, "relatedEntity"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string v22, "com.urbanairship.push.OPENED"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 143
    const-string v22, "relatedEntity"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 145
    .local v17, "relatedEntity":Ljava/lang/String;
    const-string v22, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 147
    .local v19, "split":[Ljava/lang/String;
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 149
    const/16 v22, 0x0

    aget-object v10, v19, v22

    .line 150
    .local v10, "entityName":Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v9, v19, v22

    .line 152
    .local v9, "entityId":Ljava/lang/String;
    invoke-static {v10}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v22

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v18

    .line 153
    .local v18, "relatedEntityIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/eventgenie/android/push/PushIntentReceiverV2;->launchIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto/16 :goto_0

    .line 157
    .end local v9    # "entityId":Ljava/lang/String;
    .end local v10    # "entityName":Ljava/lang/String;
    .end local v17    # "relatedEntity":Ljava/lang/String;
    .end local v18    # "relatedEntityIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v19    # "split":[Ljava/lang/String;
    :cond_3
    const-string v22, "online_db_lookup"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 158
    const-wide/16 v14, -0x1

    .line 161
    .local v14, "longKey":J
    :try_start_0
    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 166
    :goto_1
    const-string v22, "com.urbanairship.push.RECEIVED"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 167
    const-string v22, "com.urbanairship.push.ALERT"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "content":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    sget v23, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 170
    .local v20, "title":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->sendToPebble(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, v21

    invoke-static {v0, v14, v15}, Lcom/eventgenie/android/push/PushIntentReceiverV2;->syncMessage(Landroid/content/Context;J)Z

    goto/16 :goto_0

    .line 162
    .end local v7    # "content":Ljava/lang/String;
    .end local v20    # "title":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 163
    .local v8, "e":Ljava/lang/Exception;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ PUSH: Failed converting key="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to long"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v22, "com.urbanairship.push.OPENED"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    const-string v22, "relatedEntity"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 173
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/eventgenie/android/push/PushIntentReceiverV2;->checkIfDataExists(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 175
    move-object/from16 v0, v21

    invoke-static {v0, v14, v15}, Lcom/eventgenie/android/push/PushIntentReceiverV2;->getMessageIntent(Landroid/content/Context;J)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/eventgenie/android/push/PushIntentReceiverV2;->launchIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto/16 :goto_0

    .line 178
    :cond_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ PUSH: Aborting launch of getMessageIntent() with ID="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ". Key not in DB"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    .end local v14    # "longKey":J
    :cond_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ PUSH-HANDLE: Unknown key type: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static launchIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "navResult"    # Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getNotificationStyle()Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->NONE:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    if-ne v0, v1, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getNotificationStyle()Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {p0}, Lcom/eventgenie/android/utils/intents/Navigation;->goHomeFromBackground(Landroid/content/Context;)V

    .line 229
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0
.end method

.method private static syncMessage(Landroid/content/Context;J)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 252
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v6

    .line 253
    .local v6, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkPersister;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkPersister;
    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/db/DbHelper;->isDbLockedByOtherThreads(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadEntities(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/common/net/container/NetworkResult;

    .line 259
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.eventgenie.android.REFRESH_BADGES"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 262
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/eventgenie/android/push/PushIntentReceiverV2;->checkIfDataExists(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v1, 0x1

    .line 271
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 265
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "^ PUSH: syncMessage(): message was NOT succesfully retrieved or stored"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v1, v8

    .line 266
    goto :goto_0

    .line 270
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "^ PUSH: syncMessage(): DB is locked by other threads"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v1, v8

    .line 271
    goto :goto_0
.end method


# virtual methods
.method protected onBackgroundPushReceived(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushMessage"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ PUSH-HANDLE : onBackgroundPushReceived("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected onChannelRegistrationFailed(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string v0, "^ PUSH-HANDLE : onChannelRegistrationFailed()"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected onChannelRegistrationSucceeded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ PUSH-HANDLE : onChannelRegistrationSucceeded("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected onNotificationActionOpened(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;Z)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushMessage"    # Lcom/urbanairship/push/PushMessage;
    .param p3, "i"    # I
    .param p4, "s"    # Ljava/lang/String;
    .param p5, "b"    # Z

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ PUSH-HANDLE : onNotificationActionOpened() push="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected onNotificationOpened(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushMessage"    # Lcom/urbanairship/push/PushMessage;
    .param p3, "i"    # I

    .prologue
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "app_name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ PUSH-HANDLE onNotificationOpened ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/urbanairship/push/PushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [NotificationID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ PUSH-HANDLE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): User clicked notification. Message: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.urbanairship.push.ALERT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.urbanairship.push.OPENED"

    invoke-static {p1, p2, v1}, Lcom/eventgenie/android/push/PushIntentReceiverV2;->handleExtras(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    return v1
.end method

.method protected onPushReceived(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushMessage"    # Lcom/urbanairship/push/PushMessage;
    .param p3, "i"    # I

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "app_name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ PUSH-HANDLE onPushReceived ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/urbanairship/push/PushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [NotificationID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ PUSH-HANDLE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Received push notification. Alert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.urbanairship.push.ALERT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [NotificationID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 80
    const-string v1, "com.urbanairship.push.RECEIVED"

    invoke-static {p1, p2, v1}, Lcom/eventgenie/android/push/PushIntentReceiverV2;->handleExtras(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;Ljava/lang/String;)V

    .line 81
    return-void
.end method
