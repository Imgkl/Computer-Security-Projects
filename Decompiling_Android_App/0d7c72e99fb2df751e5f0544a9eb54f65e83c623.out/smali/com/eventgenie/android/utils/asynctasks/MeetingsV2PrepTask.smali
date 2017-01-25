.class public Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;
.super Lcom/github/ignition/core/tasks/IgnitedAsyncTask;
.source "MeetingsV2PrepTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$1;,
        Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/ignition/core/tasks/IgnitedAsyncTask",
        "<",
        "Landroid/app/Activity;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsDone:Z

.field private mMeetingAvailability:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

.field private mMeetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

.field private final mMeetingDays:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMeetingQuotaType:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

.field private final mMeetingType:I

.field private mMessageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

.field private final mMode:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

.field private final mMyId:J

.field private final mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

.field private final mRecipientId:J

.field private mVisitorProfile:Lcom/genie_connect/common/platform/json/IJsonObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recipientId"    # J
    .param p4, "mode"    # Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;
    .param p5, "meetingType"    # I

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;-><init>()V

    .line 75
    iput-boolean v2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mIsDone:Z

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MEETINGV2PREP: New task - mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingDays:Ljava/util/Set;

    .line 82
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    .line 83
    iput-wide p2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mRecipientId:J

    .line 84
    iput-object p4, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMode:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    .line 86
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMyId:J

    .line 87
    iput p5, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingType:I

    .line 88
    iput-boolean v2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mIsDone:Z

    .line 89
    return-void
.end method

.method private populateEventDays()V
    .locals 6

    .prologue
    .line 184
    iget-object v4, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEventDaysDb()Lcom/genie_connect/android/db/access/DbEventDays;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/access/DbEventDays;->getEventDays(Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 186
    .local v0, "c":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v0, :cond_2

    .line 187
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v3

    .line 190
    .local v3, "hasData":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 191
    const-string v4, "runningTime_from"

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "day":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 194
    invoke-static {v1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertFromSqliteToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "dayFormatted":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 196
    iget-object v4, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingDays:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v2    # "dayFormatted":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v3

    goto :goto_0

    .line 203
    .end local v1    # "day":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 205
    .end local v3    # "hasData":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public getAvailabilityNetworkResult()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingAvailability:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    return-object v0
.end method

.method public getMeetingCreditsNetworkResult()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    return-object v0
.end method

.method public getMeetingCreditsObject()Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-static {v1}, Lcom/genie_connect/common/net/container/NetworkResult;->isValid(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;

    move-result-object v0

    .line 111
    .local v0, "res":Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;
    :goto_0
    return-object v0

    .line 105
    .end local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;
    goto :goto_0

    .line 108
    .end local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;
    goto :goto_0
.end method

.method public getMeetingDays()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingDays:Ljava/util/Set;

    return-object v0
.end method

.method public getMeetingQuotaTypeObject()Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingQuotaType:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-static {v1}, Lcom/genie_connect/common/net/container/NetworkResult;->isValid(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingQuotaType:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingQuotaType:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;

    .line 134
    .local v0, "res":Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;
    :goto_0
    return-object v0

    .line 128
    .end local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;
    goto :goto_0

    .line 131
    .end local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;
    goto :goto_0
.end method

.method public getMeetingQuotaTypeResult()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingQuotaType:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    return-object v0
.end method

.method public getMessageCreditsObject()Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMessageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-static {v1}, Lcom/genie_connect/common/net/container/NetworkResult;->isValid(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMessageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMessageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;

    move-result-object v0

    .line 149
    .local v0, "res":Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    :goto_0
    return-object v0

    .line 143
    .end local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    goto :goto_0

    .line 146
    .end local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    goto :goto_0
.end method

.method public getVisitorProfile()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mVisitorProfile:Lcom/genie_connect/common/platform/json/IJsonObject;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mVisitorProfile:Lcom/genie_connect/common/platform/json/IJsonObject;

    check-cast v0, Lcom/genie_connect/android/platform/json/GenieJsonObject;

    invoke-virtual {v0}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->getRawObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mIsDone:Z

    return v0
.end method

.method public onTaskCompleted(Landroid/app/Activity;Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "result"    # Ljava/lang/Integer;

    .prologue
    .line 166
    const-string v0, "^ MEETINGV2PREP: task completed"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onTaskCompleted(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Landroid/content/Context;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->onTaskCompleted(Landroid/app/Activity;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public onTaskStarted(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    const-string v0, "^ MEETINGV2PREP: task started"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 173
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->publishProgress([Ljava/lang/Object;)V

    .line 174
    iput-boolean v2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mIsDone:Z

    .line 175
    return v3
.end method

.method public bridge synthetic onTaskStarted(Landroid/content/Context;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 60
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->onTaskStarted(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public onTaskSuccess(Landroid/app/Activity;Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "result"    # Ljava/lang/Integer;

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onTaskSuccess(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Landroid/content/Context;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->onTaskSuccess(Landroid/app/Activity;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public varargs run([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 209
    sget-object v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$1;->$SwitchMap$com$eventgenie$android$utils$asynctasks$MeetingsV2PrepTask$TaskMode:[I

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMode:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 244
    :goto_0
    iput-boolean v7, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mIsDone:Z

    .line 245
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 211
    :pswitch_0
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    iget-wide v2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMyId:J

    iget-wide v4, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mRecipientId:J

    iget v6, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingType:I

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->findMeetingAvailability(JJI)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingAvailability:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .line 212
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getRemainingMeetingCredits()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .line 213
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getRemainingMessageCredits()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMessageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .line 214
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getMeetingQuotaType()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingQuotaType:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .line 215
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    iget-wide v2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mRecipientId:J

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getVisitorProfile(J)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mVisitorProfile:Lcom/genie_connect/common/platform/json/IJsonObject;

    .line 216
    invoke-direct {p0}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->populateEventDays()V

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    iget-wide v2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMyId:J

    iget-wide v4, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mRecipientId:J

    iget v6, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingType:I

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->findMeetingAvailability(JJI)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMeetingAvailability:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .line 221
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getRemainingMessageCredits()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMessageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .line 223
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    iget-wide v2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mRecipientId:J

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getVisitorProfile(J)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mVisitorProfile:Lcom/genie_connect/common/platform/json/IJsonObject;

    .line 224
    invoke-direct {p0}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->populateEventDays()V

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getRemainingMessageCredits()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mMessageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .line 231
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    iget-wide v2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mRecipientId:J

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getVisitorProfile(J)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mVisitorProfile:Lcom/genie_connect/common/platform/json/IJsonObject;

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    iget-wide v2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mRecipientId:J

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getVisitorProfile(J)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->mVisitorProfile:Lcom/genie_connect/common/platform/json/IJsonObject;

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic run([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->run([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
