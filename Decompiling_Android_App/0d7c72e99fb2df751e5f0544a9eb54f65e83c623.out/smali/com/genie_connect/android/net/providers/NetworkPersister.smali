.class public Lcom/genie_connect/android/net/providers/NetworkPersister;
.super Lcom/genie_connect/android/net/providers/NetworkBase;
.source "NetworkPersister.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "namespace"    # J

    .prologue
    .line 112
    invoke-static {p1}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authString"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authString"    # Ljava/lang/String;
    .param p3, "namespace"    # J

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 134
    return-void
.end method

.method private broadcastSyncUpdateMessage(IILjava/lang/String;)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "max"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/genie_connect/android/services/dss/DataSyncService;->sendSyncUpdateBroadcast(Landroid/content/Context;IIILjava/lang/String;)V

    .line 145
    return-void
.end method

.method private broadcastSyncUpdateMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 153
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Lcom/genie_connect/android/services/dss/DataSyncService;->sendSyncUpdateBroadcast(Landroid/content/Context;IIILjava/lang/String;)V

    .line 154
    return-void
.end method

.method private downloadDeltaFile(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "count"    # I
    .param p2, "max"    # I
    .param p3, "dataversionName"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/secure/rest/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "dataversions/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/rpc/delta"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "url":Ljava/lang/String;
    iget-object v9, p0, Lcom/genie_connect/android/net/providers/NetworkPersister;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v9, v8}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v5

    .line 171
    .local v5, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;)V

    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ NET: Getting delta "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Downloading update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move/from16 v0, p2

    invoke-direct {p0, p1, v0, v9}, Lcom/genie_connect/android/net/providers/NetworkPersister;->broadcastSyncUpdateMessage(IILjava/lang/String;)V

    .line 177
    :try_start_0
    invoke-interface {v5}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v6

    .line 178
    .local v6, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v6}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v7

    .line 180
    .local v7, "responseCode":I
    invoke-static {v5, v7}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFullDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v6}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getResponseBody(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadStream(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v4

    .line 184
    .local v4, "ok":Z
    if-eqz v4, :cond_0

    .line 185
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ NET: getDelta() Got delta "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 186
    const/4 v9, 0x1

    .line 198
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "ok":Z
    .end local v6    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v7    # "responseCode":I
    :goto_0
    return v9

    .line 188
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "ok":Z
    .restart local v6    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v7    # "responseCode":I
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ NET: getDelta() error getting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "ok":Z
    .end local v6    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v7    # "responseCode":I
    :cond_1
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/net/ConnectException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ NET: getDelta( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") ConnectException."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 194
    .end local v2    # "e":Ljava/net/ConnectException;
    :catch_1
    move-exception v2

    .line 195
    .local v2, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ NET: getDelta( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") IOException."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public downloadDeltasSince(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/android/net/container/DeltaReturn;
    .locals 26
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 208
    new-instance v19, Lcom/genie_connect/android/net/container/DeltaReturn;

    invoke-direct/range {v19 .. v19}, Lcom/genie_connect/android/net/container/DeltaReturn;-><init>()V

    .line 209
    .local v19, "returnValue":Lcom/genie_connect/android/net/container/DeltaReturn;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v6, "deltas":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v22, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFullDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_0

    .line 213
    new-instance v22, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFullDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    .line 216
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->logMemClass()V

    .line 218
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/secure/rest/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "dataversions?liveStatus="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&timestamp=%3E"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&sort(timestamp)"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 224
    .local v20, "url":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ NET: getDeltasSince(): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/net/providers/NetworkPersister;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v16

    .line 227
    .local v16, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;)V

    .line 229
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ NET: Getting deltas since "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFullDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/genie_connect/android/net/providers/NetworkUtils;->clearDirectory(Landroid/content/Context;Ljava/lang/String;)Z

    .line 233
    :try_start_0
    invoke-interface/range {v16 .. v16}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v17

    .line 234
    .local v17, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface/range {v17 .. v17}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v18

    .line 235
    .local v18, "responseCode":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 236
    new-instance v11, Lorg/json/JSONArray;

    invoke-static/range {v17 .. v17}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getResponseBodyAsString(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 241
    .local v11, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getMemClass()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v11, v0}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getDeltaParserToUse(Lorg/json/JSONArray;I)I

    move-result v15

    .line 243
    .local v15, "parserToUse":I
    if-nez v15, :cond_1

    .line 244
    const-string v22, "^ NET: Using Live Parser"

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/genie_connect/android/net/container/DeltaReturn;->setDeltaParserVersion(I)V

    .line 308
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "parserToUse":I
    .end local v17    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v18    # "responseCode":I
    .end local v19    # "returnValue":Lcom/genie_connect/android/net/container/DeltaReturn;
    :goto_0
    return-object v19

    .line 247
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v15    # "parserToUse":I
    .restart local v17    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v18    # "responseCode":I
    .restart local v19    # "returnValue":Lcom/genie_connect/android/net/container/DeltaReturn;
    :cond_1
    const/16 v22, -0x22b

    move/from16 v0, v22

    if-ne v15, v0, :cond_2

    .line 248
    const-string v22, "^ NET: SHOULD NOT PARSE!"

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/genie_connect/android/net/container/DeltaReturn;->setDeltaParserVersion(I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 296
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "parserToUse":I
    .end local v17    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v18    # "responseCode":I
    .end local v19    # "returnValue":Lcom/genie_connect/android/net/container/DeltaReturn;
    :catch_0
    move-exception v7

    .line 297
    .local v7, "e":Ljava/net/ConnectException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ NET: getDeltasSince( "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") ConnectException."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 298
    const/16 v19, 0x0

    goto :goto_0

    .line 254
    .end local v7    # "e":Ljava/net/ConnectException;
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v15    # "parserToUse":I
    .restart local v17    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v18    # "responseCode":I
    .restart local v19    # "returnValue":Lcom/genie_connect/android/net/container/DeltaReturn;
    :cond_2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 255
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 257
    .local v12, "max":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v12, :cond_5

    .line 258
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 259
    .local v13, "object":Lorg/json/JSONObject;
    new-instance v8, Lcom/genie_connect/common/db/model/DataVersion;

    invoke-direct {v8}, Lcom/genie_connect/common/db/model/DataVersion;-><init>()V

    .line 260
    .local v8, "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    invoke-static {v13}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 261
    new-instance v22, Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/net/providers/NetworkPersister;->mNamespace:Ljava/lang/Long;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    .line 263
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 264
    .local v21, "version":Ljava/lang/String;
    const-string/jumbo v22, "timestamp"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "deltaTimestamp":Ljava/lang/String;
    const-string v22, "fileFormatVersionJson"

    const/16 v23, -0x22b

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 268
    .local v5, "deltaVersion":I
    if-eqz v21, :cond_3

    if-eqz v4, :cond_3

    .line 269
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " "

    const-string v24, "_"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    const-string v24, ":"

    const-string v25, "_"

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%%%"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v12, v1, v9}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadDeltaFile(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 273
    .local v14, "ok":Z
    if-eqz v14, :cond_4

    .line 274
    new-instance v22, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v9, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/net/container/DeltaReturn;->setLatestVersionName(Ljava/lang/String;)V

    .line 257
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v14    # "ok":Z
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 276
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v14    # "ok":Z
    :cond_4
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/net/container/DeltaReturn;->setDeltas(Ljava/util/List;)V

    .line 277
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/net/container/DeltaReturn;->setDeltaParserVersion(I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 299
    .end local v4    # "deltaTimestamp":Ljava/lang/String;
    .end local v5    # "deltaVersion":I
    .end local v8    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v12    # "max":I
    .end local v13    # "object":Lorg/json/JSONObject;
    .end local v14    # "ok":Z
    .end local v15    # "parserToUse":I
    .end local v17    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v18    # "responseCode":I
    .end local v19    # "returnValue":Lcom/genie_connect/android/net/container/DeltaReturn;
    .end local v21    # "version":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 300
    .local v7, "e":Lorg/json/JSONException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ NET: getDeltasSince( "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") JSONException."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 301
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 284
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v10    # "i":I
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v12    # "max":I
    .restart local v15    # "parserToUse":I
    .restart local v17    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v18    # "responseCode":I
    .restart local v19    # "returnValue":Lcom/genie_connect/android/net/container/DeltaReturn;
    :cond_5
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    :try_start_4
    invoke-static/range {p2 .. p2}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 292
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/genie_connect/android/net/container/DeltaReturn;->setDeltaParserVersion(I)V

    .line 293
    const-string v22, "^ NET: Got deltas."

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 307
    .end local v10    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v12    # "max":I
    .end local v15    # "parserToUse":I
    :cond_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/genie_connect/android/net/container/DeltaReturn;->setDeltas(Ljava/util/List;)V

    goto/16 :goto_0

    .line 285
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v15    # "parserToUse":I
    :catch_2
    move-exception v7

    .line 286
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_5
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 287
    const/16 v19, 0x0

    .line 289
    .end local v19    # "returnValue":Lcom/genie_connect/android/net/container/DeltaReturn;
    :try_start_6
    invoke-static/range {p2 .. p2}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 302
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "parserToUse":I
    .end local v17    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v18    # "responseCode":I
    :catch_3
    move-exception v7

    .line 303
    .local v7, "e":Ljava/io/IOException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ NET: getDeltasSince( "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") IOException."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 304
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 289
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v15    # "parserToUse":I
    .restart local v17    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v18    # "responseCode":I
    .restart local v19    # "returnValue":Lcom/genie_connect/android/net/container/DeltaReturn;
    :catchall_0
    move-exception v22

    :try_start_7
    invoke-static/range {p2 .. p2}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v22
    :try_end_7
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
.end method

.method public downloadEntities(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/common/net/container/NetworkResult;
    .locals 7
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "dataVersion"    # Ljava/lang/String;
    .param p4, "modifiedSince"    # Ljava/lang/String;
    .param p5, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 322
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadEntities(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Lcom/genie_connect/common/net/container/NetworkResult;

    move-result-object v0

    return-object v0
.end method

.method public downloadEntities(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Lcom/genie_connect/common/net/container/NetworkResult;
    .locals 32
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "dataVersion"    # Ljava/lang/String;
    .param p4, "modifiedSince"    # Ljava/lang/String;
    .param p5, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p6, "broadCastUpdate"    # Z

    .prologue
    .line 337
    if-nez p1, :cond_3

    const-string v15, "null"

    .line 338
    .local v15, "entityName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: Getting Live \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for app ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), version ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_4

    const-string v4, "LIVE"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 344
    const/16 v23, -0x1

    .line 345
    .local v23, "responseCode":I
    const/16 v18, 0x0

    .line 347
    .local v18, "nextOffset":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getOffsetLimit(Z)I

    move-result v19

    .line 349
    .local v19, "offsetLimit":I
    new-instance v31, Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-object/from16 v0, v31

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 351
    .local v31, "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    const/16 v25, 0x1

    .line 353
    .local v25, "runOk":Z
    new-instance v24, Lcom/genie_connect/common/net/container/NetworkResult;

    sget-object v4, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/genie_connect/common/net/container/NetworkResult;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 354
    .local v24, "result":Lcom/genie_connect/common/net/container/NetworkResult;
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v16

    .line 356
    .local v16, "gson":Lcom/google/gson/Gson;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/genie_connect/common/net/container/NetworkResult;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 358
    const/16 v21, 0x0

    .line 359
    .local v21, "reader":Lcom/google/gson/stream/JsonReader;
    const/4 v13, 0x0

    .line 361
    .local v13, "ele":Lcom/google/gson/JsonElement;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .local v26, "time1":J
    move-object/from16 v22, v21

    .line 363
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v22, "reader":Lcom/google/gson/stream/JsonReader;
    :goto_2
    if-eqz v25, :cond_9

    if-ltz v18, :cond_9

    .line 364
    const/4 v5, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v10}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getUrlParams(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 365
    .local v20, "param":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/secure/rest/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .end local v20    # "param":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 366
    .local v30, "url":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getOkUrlFactory()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v11

    .line 367
    .local v11, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v11, v0}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 370
    :try_start_0
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->connect()V

    .line 371
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    .line 373
    move/from16 v0, v23

    invoke-static {v11, v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Ljava/net/HttpURLConnection;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 374
    invoke-static {v11}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNextRangeStart(Ljava/net/HttpURLConnection;)I

    move-result v18

    .line 375
    invoke-static {v11}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getRangeMax(Ljava/net/HttpURLConnection;)I

    move-result v17

    .line 377
    .local v17, "maxOffet":I
    if-eqz p6, :cond_1

    const/4 v4, -0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_1

    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_1

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/genie_connect/android/net/providers/NetworkPersister;->broadcastSyncUpdateMessage(Ljava/lang/String;)V

    .line 381
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: HTTP code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 382
    const/4 v4, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/genie_connect/common/net/container/NetworkResult;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 384
    if-nez p2, :cond_6

    .line 385
    new-instance v21, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {v11}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getResponseBody(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 388
    :cond_2
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 389
    const-class v4, Lcom/google/gson/JsonElement;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/google/gson/JsonElement;

    move-object v13, v0

    .line 390
    new-instance v4, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v4}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v14

    .line 393
    .local v14, "entityInstance":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    if-eqz p5, :cond_2

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/net/providers/NetworkPersister;->mNamespace:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v1, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 417
    .end local v14    # "entityInstance":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :catch_0
    move-exception v12

    .line 418
    .end local v17    # "maxOffet":I
    .local v12, "e":Ljava/net/ConnectException;
    :goto_4
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: downloadLiveData() for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ConnectException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: The URL was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v12}, Ljava/net/ConnectException;->printStackTrace()V

    .line 421
    const/16 v25, 0x0

    .line 422
    sget-object v4, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/genie_connect/common/net/container/NetworkResult;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 442
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .end local v12    # "e":Ljava/net/ConnectException;
    :goto_5
    move-object/from16 v22, v21

    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    goto/16 :goto_2

    .line 337
    .end local v11    # "conn":Ljava/net/HttpURLConnection;
    .end local v13    # "ele":Lcom/google/gson/JsonElement;
    .end local v15    # "entityName":Ljava/lang/String;
    .end local v16    # "gson":Lcom/google/gson/Gson;
    .end local v18    # "nextOffset":I
    .end local v19    # "offsetLimit":I
    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v23    # "responseCode":I
    .end local v24    # "result":Lcom/genie_connect/common/net/container/NetworkResult;
    .end local v25    # "runOk":Z
    .end local v26    # "time1":J
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .restart local v15    # "entityName":Ljava/lang/String;
    :cond_4
    move-object/from16 v4, p3

    .line 338
    goto/16 :goto_1

    .line 398
    .restart local v11    # "conn":Ljava/net/HttpURLConnection;
    .restart local v13    # "ele":Lcom/google/gson/JsonElement;
    .restart local v16    # "gson":Lcom/google/gson/Gson;
    .restart local v17    # "maxOffet":I
    .restart local v18    # "nextOffset":I
    .restart local v19    # "offsetLimit":I
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v23    # "responseCode":I
    .restart local v24    # "result":Lcom/genie_connect/common/net/container/NetworkResult;
    .restart local v25    # "runOk":Z
    .restart local v26    # "time1":J
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    :cond_5
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 399
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 442
    .end local v17    # "maxOffet":I
    :goto_6
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_5

    .line 401
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v17    # "maxOffet":I
    .restart local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_6
    :try_start_4
    new-instance v4, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v4}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v11}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getResponseBodyAsString(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v14

    .line 404
    .restart local v14    # "entityInstance":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    if-eqz p5, :cond_8

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/net/providers/NetworkPersister;->mNamespace:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v1, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    move-object/from16 v21, v22

    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    goto :goto_6

    .line 410
    .end local v14    # "entityInstance":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .end local v17    # "maxOffet":I
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: HTTP code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: The URL was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 413
    const/16 v25, 0x0

    .line 414
    sget-object v4, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/genie_connect/common/net/container/NetworkResult;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    move-object/from16 v21, v22

    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    goto :goto_6

    .line 423
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    :catch_1
    move-exception v12

    move-object/from16 v21, v22

    .line 424
    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v12, "e":Lorg/json/JSONException;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_7
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: downloadLiveData() for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' JSONException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: The URL was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 427
    const/16 v25, 0x0

    .line 428
    sget-object v4, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/genie_connect/common/net/container/NetworkResult;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 442
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_5

    .line 429
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    :catch_2
    move-exception v12

    move-object/from16 v21, v22

    .line 430
    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v12, "e":Ljava/io/IOException;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_8
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: downloadLiveData() for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: The URL was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 433
    const/16 v25, 0x0

    .line 434
    sget-object v4, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/genie_connect/common/net/container/NetworkResult;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 442
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_5

    .line 435
    .end local v12    # "e":Ljava/io/IOException;
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    :catch_3
    move-exception v12

    move-object/from16 v21, v22

    .line 436
    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v12, "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_9
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: downloadLiveData() for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' JsonSyntaxException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: The URL was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v12}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 439
    const/16 v25, 0x0

    .line 440
    const/4 v4, 0x0

    sget-object v5, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1, v5}, Lcom/genie_connect/common/net/container/NetworkResult;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 442
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_5

    .end local v12    # "e":Lcom/google/gson/JsonSyntaxException;
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    :catchall_0
    move-exception v4

    move-object/from16 v21, v22

    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_a
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v4

    .line 446
    .end local v11    # "conn":Ljava/net/HttpURLConnection;
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v30    # "url":Ljava/lang/String;
    .restart local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 448
    .local v28, "time2":J
    if-nez p2, :cond_a

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: downloadLiveData() - \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' Time taken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v28, v26

    invoke-static {v6, v7}, Lcom/genie_connect/android/utils/string/StringUtils;->getHumanReadableTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 453
    :cond_a
    return-object v24

    .line 442
    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v28    # "time2":J
    .restart local v11    # "conn":Ljava/net/HttpURLConnection;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v30    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v4

    goto :goto_a

    .line 435
    .restart local v17    # "maxOffet":I
    :catch_4
    move-exception v12

    goto/16 :goto_9

    .line 429
    :catch_5
    move-exception v12

    goto/16 :goto_8

    .line 423
    :catch_6
    move-exception v12

    goto/16 :goto_7

    .line 417
    .end local v17    # "maxOffet":I
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    :catch_7
    move-exception v12

    move-object/from16 v21, v22

    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    goto/16 :goto_4
.end method

.method public downloadFileByFileId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "saveFileAs"    # Ljava/lang/String;

    .prologue
    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/secure/download/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?dataFileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadGmFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public downloadGmFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "saveFileAs"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ NET: downloadFile() - donwloading "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 479
    const/16 v3, 0x400

    .line 481
    .local v3, "bufferSize":I
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 483
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 484
    .local v10, "uc":Ljava/net/URLConnection;
    const-string v13, "AUTHORIZATION"

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getAuthString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v13, "EGNAMESPACE"

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v13, "X-GC-PLATFORM-VERSION"

    const-string v14, "2.70"

    invoke-virtual {v10, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 489
    .local v9, "in":Ljava/io/InputStream;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 492
    new-instance v4, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v4, "d":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 496
    .end local v4    # "d":Ljava/io/File;
    :cond_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 497
    .local v8, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v13, 0x400

    invoke-direct {v2, v8, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 498
    .local v2, "bout":Ljava/io/BufferedOutputStream;
    const/16 v13, 0x400

    new-array v5, v13, [B

    .line 500
    .local v5, "data":[B
    const/4 v12, 0x0

    .line 501
    .local v12, "x":I
    :goto_0
    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual {v9, v5, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-ltz v12, :cond_1

    .line 502
    const/4 v13, 0x0

    invoke-virtual {v2, v5, v13, v12}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 507
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .end local v5    # "data":[B
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v10    # "uc":Ljava/net/URLConnection;
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "x":I
    :catch_0
    move-exception v6

    .line 508
    .local v6, "e":Ljava/net/MalformedURLException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ NET: downloadFile() - MalformedURLException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 510
    const/4 v13, 0x0

    .line 517
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :goto_1
    return v13

    .line 504
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v5    # "data":[B
    .restart local v7    # "f":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v10    # "uc":Ljava/net/URLConnection;
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "x":I
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 505
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 516
    const-string v13, "^ NET: downloadFile() - download completed."

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 517
    const/4 v13, 0x1

    goto :goto_1

    .line 511
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .end local v5    # "data":[B
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v10    # "uc":Ljava/net/URLConnection;
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "x":I
    :catch_1
    move-exception v6

    .line 512
    .local v6, "e":Ljava/io/IOException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ NET: downloadFile() - IOException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 514
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public downloadLiveDeletes(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 16
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "modifiedSince"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v3, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "entityName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "?entityName="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz p2, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "&timestamp=%3E"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_0
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 533
    .local v8, "param":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/secure/rest/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "logdelete"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 534
    .local v12, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/genie_connect/android/net/providers/NetworkPersister;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v13, v12}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v9

    .line 536
    .local v9, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v9, v14}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;)V

    .line 538
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ NET: Getting deletions for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 541
    :try_start_0
    invoke-interface {v9}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v10

    .line 542
    .local v10, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v10}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v11

    .line 543
    .local v11, "responseCode":I
    invoke-static {v9, v11}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 544
    new-instance v6, Lorg/json/JSONArray;

    invoke-static {v10}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getResponseBodyAsString(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 546
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 547
    .local v7, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_3

    .line 548
    new-instance v13, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v13}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    invoke-static {v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v14

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-static {v15}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v1

    .line 551
    .local v1, "e":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    if-eqz p3, :cond_1

    .line 553
    new-instance v13, Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, v13}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeletes(Lcom/genie_connect/common/platform/db/IDatabase;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 547
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 532
    .end local v1    # "e":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .end local v5    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "length":I
    .end local v8    # "param":Ljava/lang/String;
    .end local v9    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v10    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v11    # "responseCode":I
    .end local v12    # "url":Ljava/lang/String;
    :cond_0
    const-string v13, ""

    goto/16 :goto_0

    .line 556
    .restart local v1    # "e":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .restart local v5    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "length":I
    .restart local v8    # "param":Ljava/lang/String;
    .restart local v9    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .restart local v10    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v11    # "responseCode":I
    .restart local v12    # "url":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 561
    .end local v1    # "e":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .end local v5    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "length":I
    .end local v10    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v11    # "responseCode":I
    :catch_0
    move-exception v2

    .line 562
    .local v2, "e1":Ljava/net/ConnectException;
    invoke-virtual {v2}, Ljava/net/ConnectException;->printStackTrace()V

    .line 569
    .end local v2    # "e1":Ljava/net/ConnectException;
    :cond_2
    :goto_3
    return-object v3

    .line 559
    .restart local v5    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "length":I
    .restart local v10    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v11    # "responseCode":I
    :cond_3
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ NET: Got deletions for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 563
    .end local v5    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "length":I
    .end local v10    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v11    # "responseCode":I
    :catch_1
    move-exception v1

    .line 564
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 565
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 566
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
