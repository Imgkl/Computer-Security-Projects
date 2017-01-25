.class public Lcom/genie_connect/android/services/dss/DeltaV2Provider;
.super Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;
.source "DeltaV2Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/services/dss/DeltaV2Provider$1;,
        Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;
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
.method public constructor <init>()V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;-><init>()V

    .line 71
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mGson:Lcom/google/gson/Gson;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mUnknownEntities:Ljava/util/Set;

    .line 87
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFullDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mBaseDeltaPath:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private getNumberOfActions(Ljava/util/List;)I
    .locals 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p1, "allDeltas":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v6, 0x0

    .line 127
    const/4 v3, 0x0

    .line 130
    .local v3, "res":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 131
    .local v0, "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mBaseDeltaPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "deltaPath":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v4, v6, v1, v6}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->parseFile(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 133
    goto :goto_0

    .line 135
    .end local v0    # "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "deltaPath":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private notifyProgress(Ljava/lang/String;Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;Ljava/lang/String;)V
    .locals 6
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;
    .param p3, "dataversion"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 175
    iget v1, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mCurrentAction:I

    rem-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;

    iget v3, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mCurrentAction:I

    iget v4, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mMaxNumberOfActions:I

    invoke-direct {v2, v3, v4}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 181
    if-nez p1, :cond_1

    .line 182
    iget v1, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mCurrentAction:I

    iget v2, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mMaxNumberOfActions:I

    const-string v3, "Initialising..."

    invoke-virtual {p0, v5, v1, v2, v3}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->sendSyncUpdateBroadcast(IIILjava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_1
    sget-object v1, Lcom/genie_connect/android/services/dss/DeltaV2Provider$1;->$SwitchMap$com$genie_connect$android$services$dss$DeltaV2Provider$Action:[I

    invoke-virtual {p2}, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 200
    const-string v0, "Testing"

    .line 205
    .local v0, "actionText":Ljava/lang/String;
    :goto_1
    iget v1, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mCurrentAction:I

    iget v2, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mMaxNumberOfActions:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v1, v2, v3}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->sendSyncUpdateBroadcast(IIILjava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v0    # "actionText":Ljava/lang/String;
    :pswitch_0
    const-string v0, "Counting"

    .line 192
    .restart local v0    # "actionText":Ljava/lang/String;
    goto :goto_1

    .line 194
    .end local v0    # "actionText":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Deleting"

    .line 195
    .restart local v0    # "actionText":Ljava/lang/String;
    goto :goto_1

    .line 197
    .end local v0    # "actionText":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Updating"

    .line 198
    .restart local v0    # "actionText":Ljava/lang/String;
    goto :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseFile(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "countOnly"    # Z
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "dataversion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, "res":I
    const/4 v0, 0x0

    .line 143
    .local v0, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_0
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    .end local v0    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v1, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 146
    :goto_0
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 147
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v4, v5}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->skipValue()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v4

    move-object v0, v1

    .end local v1    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v0    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_1
    invoke-static {v0}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v4

    .line 150
    .end local v0    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v1    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v4, v5}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 154
    :cond_1
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "sectionName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS-DV2V2: Reading section : \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 157
    const-string v4, "deletes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    int-to-long v6, v2

    if-eqz p1, :cond_2

    sget-object v4, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->COUNT:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    :goto_2
    invoke-direct {p0, v4, v1, p2, p4}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->performAction(Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v4, v6

    long-to-int v2, v4

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->DELETE:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    goto :goto_2

    .line 159
    :cond_3
    const-string/jumbo v4, "updates"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 160
    int-to-long v6, v2

    if-eqz p1, :cond_4

    sget-object v4, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->COUNT:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    :goto_3
    invoke-direct {p0, v4, v1, p2, p4}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->performAction(Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v4, v6

    long-to-int v2, v4

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->UPDATE:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    goto :goto_3

    .line 162
    :cond_5
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS-DV2V2: Unknown section : \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' will not act!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 168
    .end local v3    # "sectionName":Ljava/lang/String;
    :cond_6
    invoke-static {v1}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 170
    return v2

    .line 168
    .end local v1    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v0    # "reader":Lcom/google/gson/stream/JsonReader;
    :catchall_1
    move-exception v4

    goto/16 :goto_1
.end method

.method private performAction(Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10
    .param p1, "action"    # Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;
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
    .line 214
    const-wide/16 v4, 0x0

    .line 219
    .local v4, "res":J
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 220
    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 222
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "entityName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v7, v8}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 226
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 229
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 230
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v7, v8}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 231
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_1

    .line 233
    :cond_2
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mUnknownEntities:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 234
    :cond_3
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_1

    .line 236
    :cond_4
    new-instance v7, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v7}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    invoke-static {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v0

    .line 238
    .local v0, "egEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    if-eqz v0, :cond_6

    .line 239
    sget-object v7, Lcom/genie_connect/android/services/dss/DeltaV2Provider$1;->$SwitchMap$com$genie_connect$android$services$dss$DeltaV2Provider$Action:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 264
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_1

    .line 241
    :pswitch_0
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 242
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_1

    .line 246
    :pswitch_1
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 247
    iget v7, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mCurrentAction:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mCurrentAction:I

    .line 248
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mGson:Lcom/google/gson/Gson;

    const-class v8, Lcom/google/gson/JsonElement;

    invoke-virtual {v7, p2, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 249
    .local v1, "ele":Lcom/google/gson/JsonElement;
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    .local v3, "jObject":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 252
    invoke-direct {p0, v2, p1, p4}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->notifyProgress(Ljava/lang/String;Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;Ljava/lang/String;)V

    .line 254
    new-instance v6, Lcom/genie_connect/android/platform/DatabaseWrapper;

    invoke-direct {v6, p3}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 256
    .local v6, "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    sget-object v7, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->DELETE:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    if-ne p1, v7, :cond_5

    .line 257
    invoke-virtual {v0, v6}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeletes(Lcom/genie_connect/common/platform/db/IDatabase;)V

    goto :goto_1

    .line 258
    :cond_5
    sget-object v7, Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;->UPDATE:Lcom/genie_connect/android/services/dss/DeltaV2Provider$Action;

    if-ne p1, v7, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v8

    invoke-virtual {v0, v6, p4, v8, v9}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 269
    .end local v1    # "ele":Lcom/google/gson/JsonElement;
    .end local v3    # "jObject":Lorg/json/JSONObject;
    .end local v6    # "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    :cond_6
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mUnknownEntities:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_1

    .line 275
    .end local v0    # "egEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_7
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 278
    .end local v2    # "entityName":Ljava/lang/String;
    :cond_8
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 279
    return-wide v4

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;->getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/genie_connect/android/net/container/DeltaReturn;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 12
    .param p1, "ret"    # Lcom/genie_connect/android/net/container/DeltaReturn;
    .param p2, "newVersion"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/DeltaReturn;->getDeltas()Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "allDeltas":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 96
    .local v8, "startTime":J
    :try_start_0
    invoke-direct {p0, v0}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->getNumberOfActions(Ljava/util/List;)I

    move-result v5

    iput v5, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mMaxNumberOfActions:I

    .line 97
    const/4 v5, 0x0

    iput v5, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mCurrentAction:I

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ DSS-DV2V2: Number of actions "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mMaxNumberOfActions:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 102
    const-wide/16 v6, 0x0

    .line 104
    .local v6, "res":J
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 106
    .local v1, "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->mBaseDeltaPath:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "deltaPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ DSS-DV2V2: Starting to parse "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 108
    const/4 v5, 0x0

    invoke-direct {p0, v5, p3, v2, p2}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->parseFile(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v6, v10

    .line 109
    goto :goto_0

    .line 111
    .end local v1    # "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "deltaPath":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 112
    invoke-static {p3}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ DSS-DV2V2: Finished Delta update. Total entities: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " estimated Time: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v8, v9, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    const/4 v5, 0x1

    .line 123
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "res":J
    :goto_1
    return v5

    .line 117
    :catch_0
    move-exception v3

    .line 118
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "IO Error parsing deltas (V2)"

    invoke-static {v5, v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 119
    :catch_1
    move-exception v3

    .line 120
    .local v3, "e":Lorg/json/JSONException;
    const-string v5, "Error parsing deltas (V2) - malformed JSON"

    invoke-static {v5, v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method
