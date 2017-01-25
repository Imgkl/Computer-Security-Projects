.class Lcom/eventgenie/android/utils/help/emsp/EmspUtil;
.super Ljava/lang/Object;
.source "EmspUtil.java"


# static fields
.field private static final FIELD_APPLICATION_ID:Ljava/lang/String; = "applicationId"

.field private static final FIELD_DEVICE_UID:Ljava/lang/String; = "deviceUID"

.field private static final FIELD_MAC_ADDRESS:Ljava/lang/String; = "macAddress"

.field private static final FIELD_OS_VERSION:Ljava/lang/String; = "osVersion"

.field private static final FIELD_PLATFORM:Ljava/lang/String; = "platform"

.field protected static final URL_DEVICE_LOCATION_URL:Ljava/lang/String; = "https://%s/v1/emsp/%s/devices/%s/location"

.field protected static final URL_DEVICE_REGISTRATION:Ljava/lang/String; = "https://%s/v1/emsp/devices"

.field protected static final URL_LOCATIONS_LOOKUP:Ljava/lang/String; = "https://%s/v1/emsp/locations"

.field private static final VALUE_PLATFORM:Ljava/lang/String; = "ANDROID"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static extractAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    :goto_0
    return-object v3

    .line 64
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    move-object v2, p0

    .line 71
    .local v2, "targetUrl":Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "aURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 67
    .end local v0    # "aURL":Ljava/net/URL;
    .end local v2    # "targetUrl":Ljava/lang/String;
    :cond_1
    const-string v4, "https://"

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "targetUrl":Ljava/lang/String;
    goto :goto_1

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static getCurrentLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const-string v6, "location"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 176
    .local v3, "manager":Landroid/location/LocationManager;
    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v5

    .line 177
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v2, "locationList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 181
    .local v4, "provider":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 182
    .local v1, "loc":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 183
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v1    # "loc":Landroid/location/Location;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 188
    .end local v4    # "provider":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 189
    new-instance v6, Lcom/eventgenie/android/utils/help/emsp/EmspUtil$1;

    invoke-direct {v6}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil$1;-><init>()V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 205
    .restart local v1    # "loc":Landroid/location/Location;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ EMSP: Location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/genie_connect/common/utils/date/TimeFormatter;->toJsonString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 208
    .end local v1    # "loc":Landroid/location/Location;
    :cond_2
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    .line 210
    :goto_2
    return-object v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method protected static getForJson(Ljava/lang/String;Ljava/util/List;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lcom/genie_connect/common/net/container/NetworkResultJsonContent;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "headerList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v13, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v18, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 81
    .local v13, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "^ EMSP: getForJson() - \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 85
    .local v16, "startTime":J
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 86
    .local v15, "urlObject":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 87
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 88
    const-string v18, "GET"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 90
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/Header;

    .line 91
    .local v9, "header":Lorg/apache/http/Header;
    invoke-interface {v9}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 116
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "header":Lorg/apache/http/Header;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "urlObject":Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 117
    .local v8, "e1":Ljava/net/ConnectException;
    const/16 v18, 0x0

    const/16 v19, -0x1

    sget-object v20, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 118
    invoke-virtual {v8}, Ljava/net/ConnectException;->printStackTrace()V

    .line 127
    .end local v8    # "e1":Ljava/net/ConnectException;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setTimeElapsed(J)V

    .line 128
    return-object v13

    .line 94
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v15    # "urlObject":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 96
    .local v12, "responseCode":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v12, v0, :cond_2

    .line 98
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 99
    .local v5, "content":Ljava/io/InputStream;
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    .local v11, "in":Ljava/io/BufferedReader;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v14, "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->read()I

    move-result v6

    .local v6, "cp":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_1

    .line 105
    int-to-char v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 119
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "content":Ljava/io/InputStream;
    .end local v6    # "cp":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v12    # "responseCode":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "urlObject":Ljava/net/URL;
    :catch_1
    move-exception v7

    .line 120
    .local v7, "e":Lorg/json/JSONException;
    const/16 v18, 0x0

    const/16 v19, -0x1

    sget-object v20, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 121
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "content":Ljava/io/InputStream;
    .restart local v6    # "cp":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "responseCode":I
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "urlObject":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 110
    new-instance v18, Lorg/json/JSONObject;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setJsonObject(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 111
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v12, v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 122
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "content":Ljava/io/InputStream;
    .end local v6    # "cp":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v12    # "responseCode":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "urlObject":Ljava/net/URL;
    :catch_2
    move-exception v7

    .line 123
    .local v7, "e":Ljava/io/IOException;
    const/16 v18, 0x0

    const/16 v19, -0x1

    sget-object v20, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 124
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 113
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "responseCode":I
    .restart local v15    # "urlObject":Ljava/net/URL;
    :cond_2
    const/16 v18, 0x0

    :try_start_3
    sget-object v19, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v12, v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1
.end method

.method protected static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 134
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 135
    .local v1, "wInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 137
    .end local v1    # "wInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v3

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/BuildInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getRegistrationPayload(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "macAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v0, "payload":Lorg/json/JSONObject;
    const-string v1, "platform"

    const-string v2, "ANDROID"

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "applicationId"

    invoke-static {v0, v1, p0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "deviceUID"

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "macAddress"

    invoke-static {v0, v1, p1}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v0
.end method

.method protected static getSsid(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    :try_start_0
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 161
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 162
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "ssid":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 169
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "ssid":Ljava/lang/String;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    .line 166
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v2    # "ssid":Ljava/lang/String;
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v4, "^\"|\"$"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 168
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "ssid":Ljava/lang/String;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWifiPresent(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isWifiPresent()Z

    move-result v0

    return v0
.end method

.method protected static postForJson(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/List;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 18
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lcom/genie_connect/common/net/container/NetworkResultJsonContent;"
        }
    .end annotation

    .prologue
    .line 219
    .local p2, "headerList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v11, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v15, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v11, v15}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 221
    .local v11, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "^ EMSP: postForJson() - \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 223
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/eventgenie/android/utils/Log;->getDebugLogStatus()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 225
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "^ EMSP: postForJson() Payload: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 230
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 232
    .local v12, "startTime":J
    :try_start_1
    new-instance v14, Ljava/net/URI;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 233
    .local v14, "webServerURL":Ljava/net/URI;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 235
    .local v7, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v7, v14}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 237
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/Header;

    .line 238
    .local v4, "header":Lorg/apache/http/Header;
    invoke-virtual {v7, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Lorg/apache/http/Header;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 254
    .end local v4    # "header":Lorg/apache/http/Header;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v14    # "webServerURL":Ljava/net/URI;
    :catch_0
    move-exception v3

    .line 255
    .local v3, "e1":Ljava/net/ConnectException;
    const/4 v15, 0x0

    const/16 v16, -0x1

    sget-object v17, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v15, v0, v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 256
    invoke-virtual {v3}, Ljava/net/ConnectException;->printStackTrace()V

    .line 268
    .end local v3    # "e1":Ljava/net/ConnectException;
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setTimeElapsed(J)V

    .line 269
    return-object v11

    .line 241
    .restart local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v14    # "webServerURL":Ljava/net/URI;
    :cond_1
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 242
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 243
    .local v5, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v5, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 245
    .local v8, "httpresponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 246
    .local v10, "responseCode":I
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 247
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 248
    .local v6, "httpEntity":Lorg/apache/http/HttpEntity;
    new-instance v15, Lorg/json/JSONObject;

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setJsonObject(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 249
    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v10, v0}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 257
    .end local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v6    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "httpresponse":Lorg/apache/http/HttpResponse;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "responseCode":I
    .end local v14    # "webServerURL":Ljava/net/URI;
    :catch_1
    move-exception v2

    .line 258
    .local v2, "e":Lorg/json/JSONException;
    const/4 v15, 0x0

    const/16 v16, -0x1

    sget-object v17, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v15, v0, v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 259
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 251
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpresponse":Lorg/apache/http/HttpResponse;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "responseCode":I
    .restart local v14    # "webServerURL":Ljava/net/URI;
    :cond_2
    const/4 v15, 0x0

    :try_start_3
    sget-object v16, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v10, v0}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 260
    .end local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "httpresponse":Lorg/apache/http/HttpResponse;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "responseCode":I
    .end local v14    # "webServerURL":Ljava/net/URI;
    :catch_2
    move-exception v2

    .line 261
    .local v2, "e":Ljava/io/IOException;
    const/4 v15, 0x0

    const/16 v16, -0x1

    sget-object v17, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v15, v0, v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 262
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 263
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 264
    .local v2, "e":Ljava/net/URISyntaxException;
    const/4 v15, 0x0

    const/16 v16, -0x1

    sget-object v17, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->MALFORMED_URL:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v15, v0, v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 265
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_2

    .line 227
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .end local v12    # "startTime":J
    :catch_4
    move-exception v15

    goto/16 :goto_0

    .line 226
    :catch_5
    move-exception v15

    goto/16 :goto_0
.end method

.method public static scan(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    :try_start_0
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 275
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v1

    goto :goto_0
.end method
