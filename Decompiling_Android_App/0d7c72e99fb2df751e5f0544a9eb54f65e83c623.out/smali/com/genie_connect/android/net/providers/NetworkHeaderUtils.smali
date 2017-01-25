.class public Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;
.super Ljava/lang/Object;
.source "NetworkHeaderUtils.java"

# interfaces
.implements Lcom/genie_connect/common/net/NetworkHeaders;


# instance fields
.field private final mAuthString:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mNamespace:J

.field private final mProoferEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authString"    # Ljava/lang/String;
    .param p3, "namespace"    # J

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->mProoferEnabled:Z

    .line 27
    iput-object p2, p0, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->mAuthString:Ljava/lang/String;

    .line 28
    iput-wide p3, p0, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->mNamespace:J

    .line 29
    return-void
.end method

.method private static addHeader(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "conn"    # Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-interface {p0}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->unwrap()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static addHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "conn"    # Ljava/net/URLConnection;
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static addHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method private static addHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "conn"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "req"    # Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .param p2, "dataVersion"    # Ljava/lang/String;

    .prologue
    .line 32
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;J)V

    .line 33
    return-void
.end method

.method public addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;J)V
    .locals 5
    .param p1, "req"    # Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .param p2, "dataVersion"    # Ljava/lang/String;
    .param p3, "namespace"    # J

    .prologue
    .line 36
    invoke-interface {p1}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->unwrap()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {p0, p2, p3, p4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->getHeaderList(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    .line 39
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 40
    .local v0, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v0    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;)V
    .locals 2
    .param p1, "req"    # Ljava/net/URLConnection;
    .param p2, "dataVersion"    # Ljava/lang/String;

    .prologue
    .line 46
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;J)V

    .line 47
    return-void
.end method

.method public addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;J)V
    .locals 5
    .param p1, "req"    # Ljava/net/URLConnection;
    .param p2, "dataVersion"    # Ljava/lang/String;
    .param p3, "namespace"    # J

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0, p2, p3, p4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->getHeaderList(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 54
    .local v0, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public addRequestHeadersForLogin(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;J)V
    .locals 5
    .param p1, "req"    # Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .param p2, "dataVersion"    # Ljava/lang/String;
    .param p3, "namespace"    # J

    .prologue
    .line 60
    invoke-interface {p1}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->unwrap()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p0, p2, p3, p4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->getHeaderList(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 64
    .local v0, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public getHeaderList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->getHeaderList(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderList(Ljava/lang/String;J)Ljava/util/List;
    .locals 8
    .param p1, "dataVersion"    # Ljava/lang/String;
    .param p2, "namespace"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-boolean v1, p0, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->mProoferEnabled:Z

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "MAINTENANCE-MODE"

    const-string/jumbo v4, "true"

    invoke-static {v0, v1, v4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v1, p2, v4

    if-nez v1, :cond_2

    .line 87
    iget-wide v2, p0, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->mNamespace:J

    .line 92
    .local v2, "tmpNamespace":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 93
    const-string v4, "EGNAMESPACE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_1
    const-string v1, "AUTHORIZATION"

    iget-object v4, p0, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->mAuthString:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "USER-AGENT"

    iget-object v4, p0, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/net/providers/UserAgentUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "ACCEPT-ENCODING"

    const-string v4, "gzip"

    invoke-static {v0, v1, v4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "X-GC-PLATFORM-VERSION"

    const-string v4, "2.70"

    invoke-static {v0, v1, v4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "X-GM-PLATFORM"

    invoke-static {}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getGmPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "X-GM-USER-AGENT"

    iget-object v4, p0, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/net/providers/UserAgentUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getGmUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "X-GM-UUID"

    iget-object v4, p0, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getGmUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-object v0

    .line 89
    .end local v2    # "tmpNamespace":J
    :cond_2
    move-wide v2, p2

    .restart local v2    # "tmpNamespace":J
    goto :goto_0

    .line 93
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method
