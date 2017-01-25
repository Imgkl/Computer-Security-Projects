.class public Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;
.super Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
.source "GridRestCacheQueryRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;)V
    .locals 0
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    .line 39
    return-void
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->cacheName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->className()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->clause()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableDedup()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->enableDedup()Z

    move-result v0

    return v0
.end method

.method public includeBackups()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->includeBackups()Z

    move-result v0

    return v0
.end method

.method public keepPortable()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->keepPortable()Z

    move-result v0

    return v0
.end method

.method public operation()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->operation()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    move-result-object v0

    return-object v0
.end method

.method public pageSize()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->pageSize()I

    move-result v0

    return v0
.end method

.method public queryArguments()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->queryArguments()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public queryId()J
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->queryId()J

    move-result-wide v0

    return-wide v0
.end method

.method public remoteReducerClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->remoteReducerClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remoteTransformerClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->remoteTransformerClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->timeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->type()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    move-result-object v0

    return-object v0
.end method
