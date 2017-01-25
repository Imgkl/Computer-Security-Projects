.class public final Lcom/eventgenie/android/utils/genieintent/Deeplink;
.super Ljava/lang/Object;
.source "Deeplink.java"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mEntityId:J

.field private final mEntityName:Ljava/lang/String;

.field private final mNamespace:J


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;)V
    .locals 6
    .param p1, "code"    # Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getQRCodeType()Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->GENIE_DEEPLINK:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    if-ne v1, v2, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getGeniePayload()Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    .local v0, "payload":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 59
    iput-object v3, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    .line 60
    iput-wide v4, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mNamespace:J

    .line 61
    iput-wide v4, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityId:J

    .line 62
    iput-object v3, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mAction:Ljava/lang/String;

    .line 75
    .end local v0    # "payload":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 64
    .restart local v0    # "payload":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getGenieEntity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getGenieNamespace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mNamespace:J

    .line 66
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getGenieEntityId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityId:J

    .line 67
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getGenieAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mAction:Ljava/lang/String;

    goto :goto_0

    .line 70
    .end local v0    # "payload":Lorg/json/JSONObject;
    :cond_1
    iput-object v3, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mAction:Ljava/lang/String;

    .line 72
    iput-wide v4, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mNamespace:J

    .line 73
    iput-wide v4, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityId:J

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;J)V
    .locals 12
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "namespaceFallback"    # J

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p1, :cond_0

    .line 79
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    .line 80
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mNamespace:J

    .line 81
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityId:J

    .line 82
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mAction:Ljava/lang/String;

    .line 126
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "path":Ljava/lang/String;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mAction:Ljava/lang/String;

    .line 88
    const/4 v2, 0x0

    .line 91
    .local v2, "isHostTheNamespace":Z
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 92
    .local v7, "tmp":Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 93
    .local v4, "namespace":J
    const/4 v2, 0x1

    .line 98
    .end local v7    # "tmp":Ljava/lang/Long;
    :goto_1
    iput-wide v4, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mNamespace:J

    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ DEEPLINK: Path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 101
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "pathArray":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 106
    array-length v8, v6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 107
    const/4 v8, 0x1

    aget-object v8, v6, v8

    iput-object v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    .line 108
    const/4 v8, 0x2

    aget-object v8, v6, v8

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcom/eventgenie/android/utils/ValueCheck;->tryLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityId:J

    .line 124
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ DEEPLINK: New deeplink: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v4    # "namespace":J
    .end local v6    # "pathArray":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v4, p2

    .restart local v4    # "namespace":J
    goto :goto_1

    .line 110
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "pathArray":[Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    .line 111
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityId:J

    goto :goto_2

    .line 115
    :cond_2
    array-length v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 116
    iput-object v1, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    .line 117
    const/4 v8, 0x1

    aget-object v8, v6, v8

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcom/eventgenie/android/utils/ValueCheck;->tryLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityId:J

    goto :goto_2

    .line 119
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    .line 120
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityId:J

    goto :goto_2
.end method


# virtual methods
.method public constructExternalUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x2f

    .line 129
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "/deeplink/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->getNamespace()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mAction:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityId()J
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityId:J

    return-wide v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNamespace()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mNamespace:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mNamespace:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deeplink [mEntityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNamespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/Deeplink;->mEntityId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
