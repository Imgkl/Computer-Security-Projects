.class Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;
.super Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;
.source "DeltaV2ProviderV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$1;,
        Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;
    }
.end annotation


# static fields
.field private static final SECTION_DELETES:Ljava/lang/String; = "deletes"

.field private static final SECTION_UPDATES:Ljava/lang/String; = "updates"


# instance fields
.field private final mBaseDeltaPath:Ljava/lang/String;

.field private mCurrentAction:I

.field private final mGson:Lcom/google/gson/Gson;

.field private mMaxNumberOfActions:I

.field private final mUnknownEntities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/services/dss/DataSyncService;Landroid/app/NotificationManager;)V
    .locals 4
    .param p1, "service"    # Lcom/genie_connect/android/services/dss/DataSyncService;
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;-><init>(Lcom/genie_connect/android/services/dss/DataSyncService;Landroid/app/NotificationManager;)V

    .line 73
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mGson:Lcom/google/gson/Gson;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mUnknownEntities:Ljava/util/Set;

    .line 88
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFullDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mBaseDeltaPath:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private getNumberOfActions(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "allDeltas":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .line 131
    .local v4, "res":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 132
    .local v0, "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mBaseDeltaPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "deltaPath":Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0, v5, v6, v1, v7}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->parseFile(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    add-int/lit8 v4, v4, 0x0

    goto :goto_0

    .line 140
    .end local v0    # "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "deltaPath":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return v4
.end method

.method private notifyProgress(Ljava/lang/String;Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;)V
    .locals 7
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;

    .prologue
    const/4 v6, 0x0

    .line 182
    iget v2, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mCurrentAction:I

    rem-int/lit8 v2, v2, 0x5

    if-eqz v2, :cond_0

    .line 220
    :goto_0
    return-void

    .line 186
    :cond_0
    iget v2, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mMaxNumberOfActions:I

    invoke-virtual {p0, v2}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->getProgressUpdateNotification(I)Landroid/app/Notification;

    move-result-object v1

    .line 187
    .local v1, "note":Landroid/app/Notification;
    iget-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcom/eventgenie/android/R$id;->progress:I

    iget v4, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mMaxNumberOfActions:I

    iget v5, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mCurrentAction:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 188
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v3, 0x53a

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 190
    if-nez p1, :cond_1

    .line 191
    iget v2, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mCurrentAction:I

    iget v3, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mMaxNumberOfActions:I

    const-string v4, "Initialising..."

    invoke-virtual {p0, v6, v2, v3, v4}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->sendSyncUpdateBroacast(IIILjava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    sget-object v2, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$1;->$SwitchMap$com$genie_connect$android$services$dss$DeltaV2ProviderV2$Action:[I

    invoke-virtual {p2}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 209
    const-string v0, "Testing"

    .line 214
    .local v0, "actionText":Ljava/lang/String;
    :goto_1
    iget v2, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mCurrentAction:I

    iget v3, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mMaxNumberOfActions:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v2, v3, v4}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->sendSyncUpdateBroacast(IIILjava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v0    # "actionText":Ljava/lang/String;
    :pswitch_0
    const-string v0, "Counting"

    .line 201
    .restart local v0    # "actionText":Ljava/lang/String;
    goto :goto_1

    .line 203
    .end local v0    # "actionText":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Deleting"

    .line 204
    .restart local v0    # "actionText":Ljava/lang/String;
    goto :goto_1

    .line 206
    .end local v0    # "actionText":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Updating"

    .line 207
    .restart local v0    # "actionText":Ljava/lang/String;
    goto :goto_1

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseFile(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "countOnly"    # Z
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "dataversion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v3, 0x0

    .line 145
    .local v3, "res":I
    const/4 v1, 0x0

    .line 148
    .local v1, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_0
    new-instance v2, Lcom/google/gson/stream/JsonReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .end local v1    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v2, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_1
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 151
    :goto_0
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 152
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->skipValue()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 174
    .end local v2    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_1
    invoke-static {v1}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 175
    throw v0

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v2    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v5, v6}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 159
    :cond_1
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "sectionName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ DSS-DV2V2: Reading section : \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 162
    const-string v5, "deletes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 163
    int-to-long v6, v3

    if-eqz p1, :cond_2

    sget-object v5, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;->COUNT:Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;

    :goto_2
    invoke-direct {p0, v5, v2, p2, p4}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->performAction(Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v3, v6

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;->DELETE:Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;

    goto :goto_2

    .line 164
    :cond_3
    const-string/jumbo v5, "updates"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 165
    int-to-long v6, v3

    if-eqz p1, :cond_4

    sget-object v5, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;->COUNT:Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;

    :goto_3
    invoke-direct {p0, v5, v2, p2, p4}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->performAction(Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v3, v6

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;->UPDATE:Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;

    goto :goto_3

    .line 167
    :cond_5
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ DSS-DV2V2: Unknown section : \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' will not act!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 177
    .end local v4    # "sectionName":Ljava/lang/String;
    :cond_6
    return v3

    .line 173
    .end local v2    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v1    # "reader":Lcom/google/gson/stream/JsonReader;
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method private performAction(Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10
    .param p1, "action"    # Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;
    .param p2, "reader"    # Lcom/google/gson/stream/JsonReader;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "dataversion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 223
    const-wide/16 v4, 0x0

    .line 224
    .local v4, "res":J
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 226
    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 227
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "entityName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v7, v8}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 230
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 233
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 234
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v7, v8}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 235
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_1

    .line 237
    :cond_2
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mUnknownEntities:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 238
    :cond_3
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_1

    .line 240
    :cond_4
    new-instance v7, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v7}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    invoke-static {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v0

    .line 242
    .local v0, "egEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    if-eqz v0, :cond_6

    .line 243
    sget-object v7, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$1;->$SwitchMap$com$genie_connect$android$services$dss$DeltaV2ProviderV2$Action:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 268
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_1

    .line 245
    :pswitch_0
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 246
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_1

    .line 250
    :pswitch_1
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 251
    iget v7, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mCurrentAction:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mCurrentAction:I

    .line 252
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mGson:Lcom/google/gson/Gson;

    const-class v8, Lcom/google/gson/JsonElement;

    invoke-virtual {v7, p2, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 253
    .local v1, "ele":Ljava/lang/Object;
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    .local v3, "jObject":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 256
    invoke-direct {p0, v2, p1}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->notifyProgress(Ljava/lang/String;Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;)V

    .line 258
    new-instance v6, Lcom/genie_connect/android/platform/DatabaseWrapper;

    invoke-direct {v6, p3}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 260
    .local v6, "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    sget-object v7, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;->DELETE:Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;

    if-ne p1, v7, :cond_5

    .line 261
    invoke-virtual {v0, v6}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeletes(Lcom/genie_connect/common/platform/db/IDatabase;)V

    goto :goto_1

    .line 262
    :cond_5
    sget-object v7, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;->UPDATE:Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2$Action;

    if-ne p1, v7, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v8

    invoke-virtual {v0, v6, p4, v8, v9}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 273
    .end local v1    # "ele":Ljava/lang/Object;
    .end local v3    # "jObject":Lorg/json/JSONObject;
    .end local v6    # "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    :cond_6
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mUnknownEntities:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_1

    .line 279
    .end local v0    # "egEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_7
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 282
    .end local v2    # "entityName":Ljava/lang/String;
    :cond_8
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 283
    return-wide v4

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public parse(Landroid/app/Notification;Lcom/genie_connect/android/net/container/DeltaReturn;Ljava/lang/String;)Z
    .locals 20
    .param p1, "note"    # Landroid/app/Notification;
    .param p2, "ret"    # Lcom/genie_connect/android/net/container/DeltaReturn;
    .param p3, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/net/container/DeltaReturn;->getDeltas()Ljava/util/List;

    move-result-object v8

    .line 93
    .local v8, "allDeltas":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v13

    .line 94
    .local v13, "egdb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v13}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 96
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 97
    .local v18, "startTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->getNumberOfActions(Ljava/util/List;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mMaxNumberOfActions:I

    .line 98
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mCurrentAction:I

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DSS-DV2V2: Number of actions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mMaxNumberOfActions:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 102
    const-wide/16 v16, 0x0

    .line 103
    .local v16, "res":J
    const/4 v15, 0x1

    .line 105
    .local v15, "resultSuccessful":Z
    :try_start_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 106
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 107
    .local v10, "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mBaseDeltaPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, "deltaPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DSS-DV2V2: Starting to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v9, v11, v1}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->parseFile(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long v16, v16, v2

    .line 110
    goto :goto_0

    .line 111
    .end local v10    # "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "deltaPath":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-static {v9}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 119
    .end local v14    # "i$":Ljava/util/Iterator;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DSS-DV2V2: Finished Delta update. Total entities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " estimated Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 120
    if-eqz v15, :cond_1

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->mMaxNumberOfActions:I

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/genie_connect/android/services/dss/DeltaV2ProviderV2;->performPostDeltaApplyJobs(Landroid/app/NotificationManager;Landroid/app/Notification;Lcom/genie_connect/android/net/container/DeltaReturn;Ljava/lang/String;I)V

    .line 124
    :cond_1
    return v15

    .line 112
    :catch_0
    move-exception v12

    .line 113
    .local v12, "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    .line 114
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {v9}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v9}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method
