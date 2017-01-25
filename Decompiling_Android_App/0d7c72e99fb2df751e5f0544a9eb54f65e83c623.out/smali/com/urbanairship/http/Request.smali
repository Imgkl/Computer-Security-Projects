.class public Lcom/urbanairship/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final USER_AGENT_FORMAT:Ljava/lang/String; = "%s (%s; %s; UrbanAirshipLib-%s/%s; %s; %s)"


# instance fields
.field protected body:Ljava/lang/String;

.field private compressRequestBody:Z

.field protected contentType:Ljava/lang/String;

.field private ifModifiedSince:J

.field protected password:Ljava/lang/String;

.field protected requestMethod:Ljava/lang/String;

.field protected responseProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected url:Ljava/net/URL;

.field protected user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 3
    .param p1, "requestMethod"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/urbanairship/http/Request;->ifModifiedSince:J

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/http/Request;->compressRequestBody:Z

    .line 77
    iput-object p1, p0, Lcom/urbanairship/http/Request;->requestMethod:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/urbanairship/http/Request;->url:Ljava/net/URL;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/http/Request;->responseProperties:Ljava/util/Map;

    .line 81
    iget-object v0, p0, Lcom/urbanairship/http/Request;->responseProperties:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/urbanairship/http/Request;->getUrbanAirshipUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public static getUrbanAirshipUserAgent()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 243
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v1

    if-ne v1, v6, :cond_0

    const-string v0, "amazon"

    .line 245
    .local v0, "platform":Ljava/lang/String;
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s (%s; %s; UrbanAirshipLib-%s/%s; %s; %s)"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const/4 v4, 0x4

    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 243
    .end local v0    # "platform":Ljava/lang/String;
    :cond_0
    const-string v0, "android"

    goto :goto_0
.end method

.method private readEntireStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 252
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "inputLine":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 257
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 261
    .end local v2    # "inputLine":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 262
    if-eqz p1, :cond_0

    .line 263
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_0
    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :cond_1
    :goto_1
    throw v4

    .line 259
    .restart local v2    # "inputLine":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    if-eqz p1, :cond_3

    .line 263
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_3
    if-eqz v0, :cond_4

    .line 267
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 274
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Failed to close streams"

    invoke-static {v4, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "inputLine":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 270
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "Failed to close streams"

    invoke-static {v5, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public execute()Lcom/urbanairship/http/Response;
    .locals 16

    .prologue
    .line 161
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x8

    if-ge v12, v13, :cond_0

    .line 162
    const-string v12, "http.keepAlive"

    const-string v13, "false"

    invoke-static {v12, v13}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    :cond_0
    const/4 v2, 0x0

    .line 168
    .local v2, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/urbanairship/http/Request;->url:Ljava/net/URL;

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/urbanairship/http/Request;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/urbanairship/http/Request;->body:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 172
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 173
    const-string v12, "Content-Type"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/urbanairship/http/Request;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_1
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 177
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 178
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 180
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/urbanairship/http/Request;->ifModifiedSince:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    .line 181
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/urbanairship/http/Request;->ifModifiedSince:J

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 184
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/urbanairship/http/Request;->responseProperties:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 185
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/urbanairship/http/Request;->responseProperties:Ljava/util/Map;

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v8, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 227
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 228
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Request - Request failed URL: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/urbanairship/http/Request;->url:Ljava/net/URL;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " method: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/urbanairship/http/Request;->requestMethod:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    const/4 v12, 0x0

    .line 231
    if-eqz v2, :cond_3

    .line 232
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-object v12

    .line 188
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/urbanairship/http/Request;->user:Ljava/lang/String;

    invoke-static {v12}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/urbanairship/http/Request;->password:Ljava/lang/String;

    invoke-static {v12}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 189
    new-instance v4, Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/urbanairship/http/Request;->user:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/urbanairship/http/Request;->password:Ljava/lang/String;

    invoke-direct {v4, v12, v13}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v4, "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    const-string v12, "UTF-8"

    const/4 v13, 0x0

    invoke-static {v4, v12, v13}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;

    move-result-object v3

    .line 191
    .local v3, "credentialHeader":Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v3    # "credentialHeader":Lorg/apache/http/Header;
    .end local v4    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/urbanairship/http/Request;->body:Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 197
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/urbanairship/http/Request;->compressRequestBody:Z

    if-eqz v12, :cond_8

    .line 198
    const-string v12, "Content-Encoding"

    const-string v13, "gzip"

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 200
    .local v9, "out":Ljava/io/OutputStream;
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    .local v6, "gos":Ljava/util/zip/GZIPOutputStream;
    new-instance v11, Ljava/io/OutputStreamWriter;

    const-string v12, "UTF-8"

    invoke-direct {v11, v6, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 202
    .local v11, "writer":Ljava/io/Writer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/urbanairship/http/Request;->body:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v11}, Ljava/io/Writer;->close()V

    .line 204
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 205
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 215
    .end local v6    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v9    # "out":Ljava/io/OutputStream;
    .end local v11    # "writer":Ljava/io/Writer;
    :cond_6
    :goto_2
    new-instance v12, Lcom/urbanairship/http/Response$Builder;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    invoke-direct {v12, v13}, Lcom/urbanairship/http/Response$Builder;-><init>(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/urbanairship/http/Response$Builder;->setResponseMessage(Ljava/lang/String;)Lcom/urbanairship/http/Response$Builder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/urbanairship/http/Response$Builder;->setResponseHeaders(Ljava/util/Map;)Lcom/urbanairship/http/Response$Builder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/urbanairship/http/Response$Builder;->setLastModified(J)Lcom/urbanairship/http/Response$Builder;

    move-result-object v10

    .line 221
    .local v10, "responseBuilder":Lcom/urbanairship/http/Response$Builder;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-static {v12}, Lcom/urbanairship/util/UAHttpStatusUtil;->inSuccessRange(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 222
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/urbanairship/http/Request;->readEntireStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/urbanairship/http/Response$Builder;->setResponseBody(Ljava/lang/String;)Lcom/urbanairship/http/Response$Builder;

    .line 225
    :cond_7
    invoke-virtual {v10}, Lcom/urbanairship/http/Response$Builder;->create()Lcom/urbanairship/http/Response;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 231
    if-eqz v2, :cond_3

    .line 232
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 207
    .end local v10    # "responseBuilder":Lcom/urbanairship/http/Response$Builder;
    :cond_8
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 208
    .restart local v9    # "out":Ljava/io/OutputStream;
    new-instance v11, Ljava/io/OutputStreamWriter;

    const-string v12, "UTF-8"

    invoke-direct {v11, v9, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 209
    .restart local v11    # "writer":Ljava/io/Writer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/urbanairship/http/Request;->body:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v11}, Ljava/io/Writer;->close()V

    .line 211
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 231
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "out":Ljava/io/OutputStream;
    .end local v11    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v12

    if-eqz v2, :cond_9

    .line 232
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v12
.end method

.method public setCompressRequestBody(Z)Lcom/urbanairship/http/Request;
    .locals 0
    .param p1, "compressRequestBody"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/urbanairship/http/Request;->compressRequestBody:Z

    .line 151
    return-object p0
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;
    .locals 0
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/urbanairship/http/Request;->user:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/urbanairship/http/Request;->password:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/urbanairship/http/Request;->responseProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_0
    return-object p0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/http/Request;->responseProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setIfModifiedSince(J)Lcom/urbanairship/http/Request;
    .locals 1
    .param p1, "timeMS"    # J

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/urbanairship/http/Request;->ifModifiedSince:J

    .line 119
    return-object p0
.end method

.method public setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;
    .locals 0
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/urbanairship/http/Request;->body:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/urbanairship/http/Request;->contentType:Ljava/lang/String;

    .line 108
    return-object p0
.end method
