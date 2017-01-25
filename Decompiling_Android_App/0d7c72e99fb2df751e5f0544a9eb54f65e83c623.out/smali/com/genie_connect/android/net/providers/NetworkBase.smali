.class public abstract Lcom/genie_connect/android/net/providers/NetworkBase;
.super Lcom/genie_connect/common/net/providers/CommonNetworkBase;
.source "NetworkBase.java"

# interfaces
.implements Lcom/genie_connect/common/net/NetworkHeaders;


# static fields
.field protected static final IGNITED_SOCKET_TIMEOUT:I = 0x88b8

.field private static final REST_OFFSET_HIGH:I = 0xc8

.field private static final REST_OFFSET_LOW:I = 0x64

.field private static final REST_OFFSET_MED:I = 0xc8

.field private static final REST_OFFSET_VERY_LOW:I = 0x32


# instance fields
.field private final mAuthString:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

.field private final mDeviceAppropriateOffset:I

.field protected final mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

.field private final mMemClass:I

.field protected mNamespace:Ljava/lang/Long;

.field private final mNetworkHeaderUtils:Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

.field private mVisitorId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p1}, Lcom/genie_connect/android/net/providers/NetworkBase;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "namespace"    # J

    .prologue
    .line 92
    invoke-static {p1}, Lcom/genie_connect/android/net/providers/NetworkBase;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authString"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authString"    # Ljava/lang/String;
    .param p3, "namespace"    # J

    .prologue
    .line 101
    new-instance v1, Lcom/genie_connect/android/platform/AndroidNetworkSettings;

    invoke-direct {v1, p1}, Lcom/genie_connect/android/platform/AndroidNetworkSettings;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    new-instance v3, Lcom/squareup/okhttp/OkUrlFactory;

    invoke-static {}, Lcom/genie_connect/android/net/OkHttpClientSingleton;->getOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/squareup/okhttp/OkUrlFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    invoke-direct {v2, v3}, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;-><init>(Lcom/squareup/okhttp/OkUrlFactory;)V

    invoke-direct {p0, v1, v2}, Lcom/genie_connect/common/net/providers/CommonNetworkBase;-><init>(Lcom/genie_connect/common/platform/INetworkSettings;Lcom/genie_connect/common/net/OkUrlFactoryWrapper;)V

    .line 104
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 107
    .local v0, "actvityManager":Landroid/app/ActivityManager;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mNamespace:Ljava/lang/Long;

    .line 108
    iput-object p1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mAuthString:Ljava/lang/String;

    .line 110
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 112
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    iput v1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mMemClass:I

    .line 113
    iget v1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mMemClass:I

    invoke-static {v1}, Lcom/genie_connect/android/net/providers/NetworkBase;->getAppropriateOffsetLimit(I)I

    move-result v1

    iput v1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mDeviceAppropriateOffset:I

    .line 114
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/genie_connect/android/net/providers/NetworkBase;->getHttpClient(Landroid/content/Context;Z)Lcom/github/ignition/support/http/IgnitedHttp;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    .line 115
    new-instance v1, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mNetworkHeaderUtils:Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    .line 117
    return-void
.end method

.method public static getAppropriateOffsetLimit(I)I
    .locals 2
    .param p0, "memClass"    # I

    .prologue
    .line 223
    const/16 v1, 0x18

    if-gt p0, v1, :cond_0

    .line 224
    const/16 v0, 0x32

    .line 233
    .local v0, "res":I
    :goto_0
    return v0

    .line 225
    .end local v0    # "res":I
    :cond_0
    const/16 v1, 0x20

    if-gt p0, v1, :cond_1

    .line 226
    const/16 v0, 0x64

    .restart local v0    # "res":I
    goto :goto_0

    .line 227
    .end local v0    # "res":I
    :cond_1
    const/16 v1, 0x30

    if-gt p0, v1, :cond_2

    .line 228
    const/16 v0, 0xc8

    .restart local v0    # "res":I
    goto :goto_0

    .line 230
    .end local v0    # "res":I
    :cond_2
    const/16 v0, 0xc8

    .restart local v0    # "res":I
    goto :goto_0
.end method

.method public static getHttpClient(Landroid/content/Context;Z)Lcom/github/ignition/support/http/IgnitedHttp;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "setupCache"    # Z

    .prologue
    .line 237
    new-instance v1, Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-direct {v1}, Lcom/github/ignition/support/http/IgnitedHttp;-><init>()V

    .line 239
    .local v1, "http":Lcom/github/ignition/support/http/IgnitedHttp;
    const/16 v0, 0x1388

    invoke-virtual {v1, v0}, Lcom/github/ignition/support/http/IgnitedHttp;->setConnectionTimeout(I)V

    .line 240
    const v0, 0x88b8

    invoke-virtual {v1, v0}, Lcom/github/ignition/support/http/IgnitedHttp;->setSocketTimeout(I)V

    .line 242
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 243
    const/16 v3, 0x64

    const-wide/32 v4, 0xa8c0

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/github/ignition/support/http/IgnitedHttp;->enableResponseCache(Landroid/content/Context;IJII)V

    .line 247
    :cond_0
    return-object v1
.end method

.method protected static getNextRangeStart(Lcom/github/ignition/support/http/IgnitedHttpResponse;)I
    .locals 6
    .param p0, "res"    # Lcom/github/ignition/support/http/IgnitedHttpResponse;

    .prologue
    const/4 v3, -0x1

    .line 251
    const-string v4, "X-JRS-RANGE"

    invoke-interface {p0, v4}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "range":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 254
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 256
    .local v2, "total":I
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, "end":I
    add-int/lit8 v4, v0, 0x1

    if-lt v4, v2, :cond_1

    .line 266
    .end local v0    # "end":I
    .end local v2    # "total":I
    :cond_0
    :goto_0
    return v3

    .line 262
    .restart local v0    # "end":I
    .restart local v2    # "total":I
    :cond_1
    add-int/lit8 v3, v0, 0x1

    goto :goto_0
.end method

.method protected static getRangeMax(Lcom/github/ignition/support/http/IgnitedHttpResponse;)I
    .locals 6
    .param p0, "res"    # Lcom/github/ignition/support/http/IgnitedHttpResponse;

    .prologue
    const/4 v3, -0x1

    .line 271
    const-string v4, "X-JRS-RANGE"

    invoke-interface {p0, v4}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "range":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 274
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "rangeArr":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 278
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 284
    .end local v2    # "rangeArr":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 279
    .restart local v2    # "rangeArr":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getResponseBody(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/io/InputStream;
    .locals 1
    .param p0, "input"    # Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-interface {p0}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getResponseBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/utils/StreamUtils;->getDecompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getResponseBodyAsString(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkBase;->getResponseBody(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/genie_connect/common/utils/StreamUtils;->convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRestServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorAuthString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 306
    .end local v0    # "auth":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "auth":Ljava/lang/String;
    :cond_0
    const-string v0, "Basic YW5vbnltb3VzOmd1ZXN0"

    goto :goto_0
.end method

.method private static logMemClass(I)V
    .locals 2
    .param p0, "memClass"    # I

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ NET: MEM CLASS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 312
    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    .line 313
    const-string v0, "^ NET: LOW PARSE LIMIT: 1000000"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void

    .line 315
    :cond_0
    const/16 v0, 0x30

    if-gt p0, v0, :cond_1

    .line 316
    const-string v0, "^ NET: MED PARSE LIMIT: 2000000"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    const-string v0, "^ NET: HIGH PARSE LIMIT: 3000000"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public contructEntityUrl(Lcom/genie_connect/common/db/entityfactory/GenieEntity;JZ)Ljava/lang/String;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "id"    # J
    .param p4, "full"    # Z

    .prologue
    .line 128
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/genie_connect/android/net/providers/NetworkBase;->contructEntityUrl(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contructEntityUrl(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "full"    # Z

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, "/secure/rest/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    if-eqz p3, :cond_0

    .line 141
    const-string v1, "?_full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected downloadStream(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 16
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, "fOut":Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ NET: writeStreamToFile() - Saving: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 153
    .local v8, "time1":J
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 154
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-static/range {p1 .. p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v6

    .line 155
    .local v6, "rbc":Ljava/nio/channels/ReadableByteChannel;
    invoke-static {v5}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v7

    .line 156
    .local v7, "wbc":Ljava/nio/channels/WritableByteChannel;
    const/high16 v12, 0x10000

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 158
    .local v2, "buf":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-interface {v6, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 159
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 160
    invoke-interface {v7, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 161
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "rbc":Ljava/nio/channels/ReadableByteChannel;
    .end local v7    # "wbc":Ljava/nio/channels/WritableByteChannel;
    .end local v8    # "time1":J
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    const-string v12, "^ NET: writeStreamToFile() - Error: "

    invoke-static {v12, v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 171
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 172
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 176
    :cond_0
    const/4 v12, 0x0

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return v12

    .line 164
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "rbc":Ljava/nio/channels/ReadableByteChannel;
    .restart local v7    # "wbc":Ljava/nio/channels/WritableByteChannel;
    .restart local v8    # "time1":J
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 165
    .local v10, "time2":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ NET: writeStreamToFile() - Time taken: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v10, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    const/4 v12, 0x1

    goto :goto_1
.end method

.method protected getAuthString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mAuthString:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    return-object v0
.end method

.method public getDeviceAppropriateOffset()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mDeviceAppropriateOffset:I

    return v0
.end method

.method protected getMemClass()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mMemClass:I

    return v0
.end method

.method public getNamespace()J
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mNamespace:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mNetworkHeaderUtils:Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    return-object v0
.end method

.method public getOffsetLimit(Z)I
    .locals 1
    .param p1, "deviceAppropriate"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mNamespace:Ljava/lang/Long;

    invoke-super {p0, v0, p1}, Lcom/genie_connect/common/net/providers/CommonNetworkBase;->getOffsetLimit(Ljava/lang/Long;Z)I

    move-result v0

    return v0
.end method

.method protected declared-synchronized getVisitorId()J
    .locals 4

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mVisitorId:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 205
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    .line 206
    .local v0, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-nez v0, :cond_1

    .line 207
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mVisitorId:Ljava/lang/Long;

    .line 213
    .end local v0    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mVisitorId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit p0

    return-wide v2

    .line 209
    .restart local v0    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mVisitorId:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected logMemClass()V
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/genie_connect/android/net/providers/NetworkBase;->mMemClass:I

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkBase;->logMemClass(I)V

    .line 218
    return-void
.end method
