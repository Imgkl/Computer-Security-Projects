.class public abstract Lcom/genie_connect/common/net/providers/CommonNetworkBase;
.super Ljava/lang/Object;
.source "CommonNetworkBase.java"

# interfaces
.implements Lcom/genie_connect/common/net/providers/ICommonNetworkBase;


# static fields
.field private static final REST_OFFSET_LIMIT_MAX:I = 0x3e8

.field protected static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mNetworkSettings:Lcom/genie_connect/common/platform/INetworkSettings;

.field private mUrlFactory:Lcom/genie_connect/common/net/OkUrlFactoryWrapper;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/platform/INetworkSettings;Lcom/genie_connect/common/net/OkUrlFactoryWrapper;)V
    .locals 0
    .param p1, "networkSettings"    # Lcom/genie_connect/common/platform/INetworkSettings;
    .param p2, "urlFactory"    # Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/genie_connect/common/net/providers/CommonNetworkBase;->mNetworkSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    .line 60
    iput-object p2, p0, Lcom/genie_connect/common/net/providers/CommonNetworkBase;->mUrlFactory:Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    .line 61
    return-void
.end method

.method protected static getNextRangeStart(Ljava/net/HttpURLConnection;)I
    .locals 6
    .param p0, "res"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v3, -0x1

    .line 134
    const-string v4, "X-JRS-RANGE"

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "range":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 137
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 138
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

    .line 140
    .local v0, "end":I
    add-int/lit8 v4, v0, 0x1

    if-lt v4, v2, :cond_1

    .line 147
    .end local v0    # "end":I
    .end local v2    # "total":I
    :cond_0
    :goto_0
    return v3

    .line 143
    .restart local v0    # "end":I
    .restart local v2    # "total":I
    :cond_1
    add-int/lit8 v3, v0, 0x1

    goto :goto_0
.end method

.method protected static getRangeMax(Ljava/net/HttpURLConnection;)I
    .locals 6
    .param p0, "res"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v3, -0x1

    .line 152
    const-string v4, "X-JRS-RANGE"

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "range":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 155
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "rangeArr":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 159
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 165
    .end local v2    # "rangeArr":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 160
    .restart local v2    # "rangeArr":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getResponseBody(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 1
    .param p0, "input"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/utils/StreamUtils;->getDecompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getResponseBodyAsString(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p0}, Lcom/genie_connect/common/net/providers/CommonNetworkBase;->getResponseBody(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/genie_connect/common/utils/StreamUtils;->convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getOffsetLimit(Ljava/lang/Long;Z)I
    .locals 6
    .param p1, "namespace"    # Ljava/lang/Long;
    .param p2, "deviceAppropriate"    # Z

    .prologue
    const/16 v0, 0x1f4

    .line 118
    if-eqz p2, :cond_1

    .line 119
    iget-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkBase;->mNetworkSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    invoke-interface {v0}, Lcom/genie_connect/common/platform/INetworkSettings;->getAppropriateRestOffset()I

    move-result v0

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, 0x10eae0d3800000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, 0x17631b2e100000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 128
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public getOkUrlFactory()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkBase;->mUrlFactory:Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    return-object v0
.end method

.method protected getUrlParams(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "full"    # Z
    .param p2, "nextOffset"    # Ljava/lang/Integer;
    .param p3, "offsetLimit"    # Ljava/lang/Integer;
    .param p4, "modifiedSince"    # Ljava/lang/String;
    .param p5, "sortBy"    # Ljava/lang/String;
    .param p6, "additionalParams"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x26

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "?liveStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v1, "&_full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    if-eqz p4, :cond_1

    .line 77
    const-string v1, "&modifiedDate=%3E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_1
    if-eqz p5, :cond_2

    .line 82
    const-string v1, "&sort("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :cond_2
    if-eqz p2, :cond_3

    .line 88
    const-string v1, "&_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    :cond_3
    if-eqz p3, :cond_4

    .line 93
    const-string v1, "&_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    :cond_4
    if-eqz p6, :cond_5

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_5
    if-eqz p6, :cond_6

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xclientplatform="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/common/net/providers/CommonNetworkBase;->mNetworkSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    invoke-interface {v2}, Lcom/genie_connect/common/platform/INetworkSettings;->getPlatformDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
