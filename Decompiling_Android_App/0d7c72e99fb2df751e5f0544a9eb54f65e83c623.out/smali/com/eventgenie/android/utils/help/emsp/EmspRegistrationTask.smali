.class Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;
.super Landroid/os/AsyncTask;
.source "EmspRegistrationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field private static final BEARER:Ljava/lang/String; = "Bearer "


# instance fields
.field private final mAuthToken:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

.field private final mLocationLookupUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "store"    # Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;
    .param p3, "locationLookupUrl"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mLocationLookupUrl:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mAuthToken:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    .line 50
    return-void
.end method

.method private performLocationLookup()Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;
    .locals 17

    .prologue
    .line 98
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 100
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v2, "headersLocationLookup":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v13, Lorg/apache/http/message/BasicHeader;

    const-string v14, "AUTHORIZATION"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bearer "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mAuthToken:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mLocationLookupUrl:Ljava/lang/String;

    invoke-static {v13, v2}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->getForJson(Ljava/lang/String;Ljava/util/List;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v10

    .line 104
    .local v10, "resultLocationLookup":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 107
    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-class v14, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;

    invoke-virtual {v1, v13, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;

    .line 111
    .local v9, "response":Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;
    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;->getStatus()Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    move-result-object v13

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_5

    .line 113
    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;->getEndpointLocations()Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 115
    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;->getEndpointLocations()Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;->getEndpointLocations()Ljava/util/List;

    move-result-object v7

    .line 117
    .local v7, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 119
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;

    .line 121
    .local v6, "locationToUse":Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->getSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "mySsid":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;

    .line 124
    .local v5, "location":Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;
    invoke-virtual {v5}, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;->getSsids()Ljava/util/List;

    move-result-object v12

    .line 126
    .local v12, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_0

    .line 127
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 128
    .local v11, "ssid":Ljava/lang/String;
    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 129
    move-object v6, v5

    goto :goto_0

    .line 134
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "location":Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;
    .end local v11    # "ssid":Ljava/lang/String;
    .end local v12    # "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v13, v6}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->setLocationInfo(Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;)V

    .line 154
    sget-object v13, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;->Succeeded:Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;

    .end local v6    # "locationToUse":Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;
    .end local v7    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;>;"
    .end local v8    # "mySsid":Ljava/lang/String;
    .end local v9    # "response":Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;
    :goto_1
    return-object v13

    .line 136
    .restart local v7    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;>;"
    .restart local v9    # "response":Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ EMSPREG: invalid location info: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;->getEndpointLocations()Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 137
    sget-object v13, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;->Failed:Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;

    goto :goto_1

    .line 140
    .end local v7    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;>;"
    :cond_4
    const-string v13, "^ EMSPREG: invalid location info: No locations returned."

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 141
    sget-object v13, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;->Failed:Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;

    goto :goto_1

    .line 144
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ EMSPREG: Failure response from EMSP server: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;->getStatus()Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 146
    sget-object v13, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;->FailedLocationNotFound:Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;

    goto :goto_1

    .line 149
    .end local v9    # "response":Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ EMSPREG: Failded to lookup location: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 150
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ EMSPREG: Failded to lookup location: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 151
    sget-object v13, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;->Failed:Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;

    goto :goto_1
.end method

.method private performRegistration()Z
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 158
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 159
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, "headersRegistration":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    const-string v10, "https://%s/v1/emsp/devices"

    new-array v11, v8, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v12}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->getEndpointUrl()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "regUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 164
    .local v3, "payload":Lorg/json/JSONObject;
    :try_start_0
    iget-object v10, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->getRegistrationPayload(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 169
    new-instance v7, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 171
    .local v7, "stringEntity":Lorg/apache/http/entity/StringEntity;
    new-instance v10, Lorg/apache/http/message/BasicHeader;

    const-string v11, "AUTHORIZATION"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bearer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v10, Lorg/apache/http/message/BasicHeader;

    const-string v11, "CONTENT-TYPE"

    const-string v12, "application/json"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {v5, v7, v2}, Lcom/eventgenie/android/utils/help/emsp/EmspUtil;->postForJson(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/List;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v4

    .line 177
    .local v4, "regResult":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 178
    invoke-virtual {v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;

    invoke-virtual {v1, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;

    .line 182
    .local v6, "response":Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;
    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->getStatus()Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    move-result-object v10

    invoke-virtual {v10}, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_0

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->getDeviceRegistration()Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 184
    iget-object v10, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->getDeviceRegistration()Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->setRegistrationInfo(Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;)V

    .line 205
    .end local v4    # "regResult":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .end local v6    # "response":Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;
    .end local v7    # "stringEntity":Lorg/apache/http/entity/StringEntity;
    :goto_0
    return v8

    .line 186
    .restart local v4    # "regResult":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .restart local v6    # "response":Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;
    .restart local v7    # "stringEntity":Lorg/apache/http/entity/StringEntity;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ EMSPREG: Invalid registration: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->getStatus()Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v8, v9

    .line 187
    goto :goto_0

    .line 192
    .end local v6    # "response":Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ EMSPREG: HTTP Error: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getResponseCode()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move v8, v9

    .line 193
    goto :goto_0

    .line 195
    .end local v4    # "regResult":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .end local v7    # "stringEntity":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ EMSPREG: Failed to create payload: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    move v8, v9

    .line 198
    goto :goto_0

    .line 199
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ EMSPREG: Failed to create payload: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    move v8, v9

    .line 202
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->performLocationLookup()Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;

    move-result-object v1

    .line 66
    .local v1, "lookupResult":Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;
    sget-object v3, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;->Succeeded:Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;

    if-ne v1, v3, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->performRegistration()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 73
    .local v2, "methodResult":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    const-string v3, "^ EMSPREG: Registration succesful!"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 89
    .end local v1    # "lookupResult":Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;
    :goto_1
    return-object v2

    .line 69
    .end local v2    # "methodResult":Ljava/lang/Boolean;
    .restart local v1    # "lookupResult":Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;
    :cond_0
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->clear()V

    .line 70
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .restart local v2    # "methodResult":Ljava/lang/Boolean;
    goto :goto_0

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->clear()V

    .line 78
    sget-object v3, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;->FailedLocationNotFound:Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;

    if-ne v1, v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->setLocationMissing(Z)V

    .line 82
    :cond_2
    const-string v3, "^ EMSPREG: Registration failed!"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 84
    .end local v1    # "lookupResult":Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask$LocationLookupTaskOutcome;
    .end local v2    # "methodResult":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "^ EMSPREG: Error registering"

    invoke-static {v3, v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 86
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .restart local v2    # "methodResult":Ljava/lang/Boolean;
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->clear()V

    .line 95
    return-void
.end method
