.class public Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;
.super Lcom/genie_connect/android/net/providers/NetworkNetworkingBase;
.source "NetworkNetworkingV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$1;,
        Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/genie_connect/android/net/providers/NetworkNetworkingBase;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private agendaItemCreateOrChange(Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 10
    .param p1, "action"    # Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;
    .param p2, "id"    # J
    .param p4, "eventDay"    # Ljava/lang/String;
    .param p5, "startTime"    # Ljava/lang/String;
    .param p6, "endTime"    # Ljava/lang/String;
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "queueIfNeeded"    # Z

    .prologue
    .line 93
    new-instance v5, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v7, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v5, v7}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 94
    .local v5, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v4, "payload":Lorg/json/JSONObject;
    sget-object v7, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$1;->$SwitchMap$com$genie_connect$android$net$providers$NetworkNetworkingV2$Action:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 105
    const/4 v6, 0x0

    .line 109
    .local v6, "url":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v7, "userid"

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getVisitorId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v7, "name"

    move-object/from16 v0, p7

    invoke-static {v4, v7, v0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v7, "description"

    move-object/from16 v0, p8

    invoke-static {v4, v7, v0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v7, "eventday"

    invoke-static {v4, v7, p4}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v7, "starttime"

    invoke-static {v4, v7, p5}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v7, "endtime"

    move-object/from16 v0, p6

    invoke-static {v4, v7, v0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz p9, :cond_0

    iget-object v7, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 117
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getGenericPostInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    move-result-object v3

    .line 118
    .local v3, "item":Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    iget-object v7, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getNamespace()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->populateHeaderInfo(Landroid/content/Context;J)V

    .line 120
    iget-object v7, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->updateQueue(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V

    .line 121
    const/4 v7, 0x1

    const/16 v8, 0xc8

    sget-object v9, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v7, v8, v9}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 122
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsDeferred(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v3    # "item":Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    .end local v5    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :goto_1
    return-object v5

    .line 99
    .end local v6    # "url":Ljava/lang/String;
    .restart local v5    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/secure/rest/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "agendaitems/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/rpc/change"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 100
    .restart local v6    # "url":Ljava/lang/String;
    goto/16 :goto_0

    .line 102
    .end local v6    # "url":Ljava/lang/String;
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/secure/rest/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "agendaitems/rpc/create"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    .restart local v6    # "url":Ljava/lang/String;
    goto/16 :goto_0

    .line 124
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-virtual {v7, v6, v4}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Lorg/json/JSONException;
    const/4 v7, 0x0

    const/4 v8, -0x1

    sget-object v9, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v7, v8, v9}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 128
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private meetingArrangeChange(Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 11
    .param p1, "action"    # Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;
    .param p2, "meetingType"    # I
    .param p3, "meetingId"    # J
    .param p5, "otherId"    # J
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "fixedLocation"    # Ljava/lang/String;
    .param p10, "customLocation"    # Ljava/lang/String;
    .param p11, "starttime"    # Ljava/lang/String;
    .param p12, "eventDay"    # Ljava/lang/String;

    .prologue
    .line 300
    new-instance v4, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v6, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v4, v6}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 301
    .local v4, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 304
    .local v3, "payload":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "starttime"

    move-object/from16 v0, p11

    invoke-static {v3, v6, v0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v6, "eventday"

    move-object/from16 v0, p12

    invoke-static {v3, v6, v0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static/range {p9 .. p9}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 308
    const-string v6, "meetinglocation"

    move-object/from16 v0, p9

    invoke-static {v3, v6, v0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_0
    const-string v6, "meetingname"

    move-object/from16 v0, p7

    invoke-static {v3, v6, v0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v6, "meetingdescription"

    invoke-static/range {p8 .. p8}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .end local p8    # "description":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p8

    invoke-static {v3, v6, v0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v6, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$1;->$SwitchMap$com$genie_connect$android$net$providers$NetworkNetworkingV2$Action:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 330
    const/4 v5, 0x0

    .line 333
    .local v5, "url":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-virtual {v6, v5, v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v4

    .line 339
    .end local v4    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .end local v5    # "url":Ljava/lang/String;
    :goto_3
    return-object v4

    .line 310
    .restart local v4    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .restart local p8    # "description":Ljava/lang/String;
    :cond_0
    const-string v6, "adhoclocation"

    move-object/from16 v0, p10

    invoke-static {v3, v6, v0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local p8    # "description":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 335
    .local v2, "e":Lorg/json/JSONException;
    const/4 v6, 0x0

    const/4 v7, -0x1

    sget-object v8, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v4, v6, v7, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 336
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 314
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local p8    # "description":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string p8, "-"

    goto :goto_1

    .line 321
    .end local p8    # "description":Ljava/lang/String;
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/secure/rest/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "meetings/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/rpc/change"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 322
    .restart local v5    # "url":Ljava/lang/String;
    goto :goto_2

    .line 324
    .end local v5    # "url":Ljava/lang/String;
    :pswitch_1
    const-string v6, "meetingtype"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v6, "attendee"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 326
    const-string v6, "organiser"

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getVisitorId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/secure/rest/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "meetings/rpc/arrangemeeting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 328
    .restart local v5    # "url":Ljava/lang/String;
    goto/16 :goto_2

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private meetingCancelOrDecline(JLjava/lang/String;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 9
    .param p1, "meetingId"    # J
    .param p3, "comment"    # Ljava/lang/String;
    .param p4, "decline"    # Z

    .prologue
    .line 351
    new-instance v3, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v5, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v3, v5}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 352
    .local v3, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 355
    .local v2, "payload":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "comment"

    invoke-static {v2, v5, p3}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    if-eqz p4, :cond_0

    const-string v1, "decline"

    .line 359
    .local v1, "endpoint":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/secure/rest/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "meetings/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/rpc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-virtual {v5, v4, v2}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v3

    .line 366
    .end local v1    # "endpoint":Ljava/lang/String;
    .end local v3    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .end local v4    # "url":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 357
    .restart local v3    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :cond_0
    const-string v1, "cancel"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Lorg/json/JSONException;
    const/4 v5, 0x0

    const/4 v6, -0x1

    sget-object v7, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v3, v5, v6, v7}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 363
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public agendaItemChange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 11
    .param p1, "id"    # J
    .param p3, "eventDay"    # Ljava/lang/String;
    .param p4, "startTime"    # Ljava/lang/String;
    .param p5, "endTime"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;
    .param p8, "queueIfNeeded"    # Z

    .prologue
    .line 71
    sget-object v1, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;->ALTER:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->agendaItemCreateOrChange(Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method public agendaItemCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 10
    .param p1, "eventDay"    # Ljava/lang/String;
    .param p2, "startTime"    # Ljava/lang/String;
    .param p3, "endTime"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "queueIfNeeded"    # Z

    .prologue
    .line 81
    sget-object v1, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;->CREATE:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->agendaItemCreateOrChange(Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method public agendaItemRemove(JZ)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 9
    .param p1, "id"    # J
    .param p3, "queueIfNeeded"    # Z

    .prologue
    const/4 v8, 0x1

    .line 137
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .local v1, "payload":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/secure/rest/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "agendaitems/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/rpc/remove"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "url":Ljava/lang/String;
    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getGenericPostInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    move-result-object v0

    .line 142
    .local v0, "item":Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    iget-object v4, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getNamespace()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->populateHeaderInfo(Landroid/content/Context;J)V

    .line 144
    iget-object v4, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->updateQueue(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V

    .line 145
    new-instance v2, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v4, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v2, v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 146
    .local v2, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    const/16 v4, 0xc8

    sget-object v5, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v2, v8, v4, v5}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 147
    invoke-virtual {v2, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsDeferred(Z)V

    .line 150
    .end local v0    # "item":Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    .end local v2    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :goto_0
    return-object v2

    :cond_0
    iget-object v4, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-virtual {v4, v3, v1}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v2

    goto :goto_0
.end method

.method public findMeetingAvailability(JJI)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 7
    .param p1, "organiserId"    # J
    .param p3, "attendeeId"    # J
    .param p5, "meetingType"    # I

    .prologue
    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 168
    .local v1, "payload":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "organiser"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    const-string v4, "attendee"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    const-string v4, "meetingtype"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/secure/rest/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "meetings/rpc/fetchAvailableTimeSlots"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    const-class v5, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;

    invoke-virtual {v4, v3, v1, v5}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForGson(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 178
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    sget-object v4, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v2, v4}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 176
    .local v2, "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    const/4 v4, 0x0

    const/4 v5, -0x1

    sget-object v6, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v2, v4, v5, v6}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 177
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMeetingQuotaType()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 9

    .prologue
    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v1, "payload":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getVisitorId()J

    move-result-wide v4

    .line 188
    .local v4, "visitorId":J
    :try_start_0
    const-string/jumbo v6, "userid"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/secure/rest/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "visitors/rpc/showmeetingquotadetails"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    const-class v7, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;

    invoke-virtual {v6, v3, v1, v7}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForGson(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 205
    .end local v3    # "url":Ljava/lang/String;
    .local v2, "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :goto_0
    return-object v2

    .line 199
    .end local v2    # "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 201
    new-instance v2, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    sget-object v6, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v2, v6}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 202
    .restart local v2    # "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    const/4 v6, 0x0

    const/4 v7, -0x1

    sget-object v8, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v2, v6, v7, v8}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_0
.end method

.method public getRemainingMeetingCredits()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 4

    .prologue
    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 211
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/secure/rest/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "visitors/rpc/howmanymeetingcredits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    const-class v3, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;

    invoke-virtual {v2, v1, v0, v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForGson(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    return-object v2
.end method

.method public getRemainingMessageCredits()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 4

    .prologue
    .line 216
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 218
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/secure/rest/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "visitors/rpc/howmanymessagecredits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    const-class v3, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;

    invoke-virtual {v2, v1, v0, v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForGson(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    return-object v2
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x2

    return v0
.end method

.method public getVisitorProfile(J)Lcom/genie_connect/common/platform/json/IJsonObject;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 228
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v2, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "downloader":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v2, p1, p2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    .line 231
    .local v1, "res":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    .line 234
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public meetingAccept(J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 5
    .param p1, "meetingId"    # J

    .prologue
    .line 245
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/secure/rest/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "meetings/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rpc/accept"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-virtual {v2, v1, v0}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v2

    return-object v2
.end method

.method public meetingArrange(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 14
    .param p1, "meetingType"    # I
    .param p2, "otherId"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "fixedLocation"    # Ljava/lang/String;
    .param p7, "customLocation"    # Ljava/lang/String;
    .param p8, "starttime"    # Ljava/lang/String;
    .param p9, "eventDay"    # Ljava/lang/String;

    .prologue
    .line 286
    sget-object v2, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;->CREATE:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;

    const-wide/16 v4, 0x0

    move-object v1, p0

    move v3, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v1 .. v13}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->meetingArrangeChange(Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method public meetingCancel(JLjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 1
    .param p1, "meetingId"    # J
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->meetingCancelOrDecline(JLjava/lang/String;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method public meetingDecline(J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 5
    .param p1, "meetingId"    # J

    .prologue
    .line 258
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 260
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/secure/rest/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "meetings/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rpc/decline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-virtual {v2, v1, v0}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v2

    return-object v2
.end method

.method public meetingDecline(JLjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 1
    .param p1, "meetingId"    # J
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->meetingCancelOrDecline(JLjava/lang/String;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method public meetingReArrange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 15
    .param p1, "meetingId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "fixedLocation"    # Ljava/lang/String;
    .param p6, "customLocation"    # Ljava/lang/String;
    .param p7, "starttime"    # Ljava/lang/String;
    .param p8, "eventDay"    # Ljava/lang/String;

    .prologue
    .line 377
    sget-object v2, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;->ALTER:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;

    const/4 v3, -0x1

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-wide/from16 v4, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v1 .. v13}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->meetingArrangeChange(Lcom/genie_connect/android/net/providers/NetworkNetworkingV2$Action;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method public postMessage(JLjava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 9
    .param p1, "recipientId"    # J
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 385
    new-instance v2, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v5, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v2, v5}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 386
    .local v2, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 387
    .local v1, "payload":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/secure/rest/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "messages/rpc/sendmessage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v4

    .line 393
    .local v4, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    const-string v5, "sender"

    if-nez v4, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 394
    const-string v5, "recipient"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    const-string v5, "subject"

    invoke-static {v1, v5, p3}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v5, "body"

    invoke-static {v1, v5, p4}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v5, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-virtual {v5, v3, v1}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v2

    .line 404
    .end local v2    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .end local v4    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :goto_1
    return-object v2

    .line 393
    .restart local v2    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .restart local v4    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_0
    invoke-virtual {v4}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_0

    .line 399
    .end local v4    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Lorg/json/JSONException;
    const/4 v5, 0x0

    const/4 v6, -0x1

    sget-object v7, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v2, v5, v6, v7}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 401
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
