.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;
.super Ljava/lang/Object;
.source "GridClientNodeBean.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private caches:Ljava/util/Map;
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

.field private consistentId:Ljava/lang/Object;

.field private dfltCacheMode:Ljava/lang/String;

.field private metrics:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;

.field private nodeId:Ljava/util/UUID;

.field private tcpAddrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tcpHostNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tcpPort:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    if-ne p0, p1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 228
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 230
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;

    .line 232
    .local v0, "other":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->nodeId:Ljava/util/UUID;

    if-nez v3, :cond_4

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->nodeId:Ljava/util/UUID;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->nodeId:Ljava/util/UUID;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public getCaches()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->caches:Ljava/util/Map;

    return-object v0
.end method

.method public getConsistentId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->consistentId:Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultCacheMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->dfltCacheMode:Ljava/lang/String;

    return-object v0
.end method

.method public getMetrics()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->metrics:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;

    return-object v0
.end method

.method public getNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public getTcpAddresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpAddrs:Ljava/util/Collection;

    return-object v0
.end method

.method public getTcpHostNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpHostNames:Ljava/util/Collection;

    return-object v0
.end method

.method public getTcpPort()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpPort:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->nodeId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpPort:I

    .line 259
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    .line 261
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->dfltCacheMode:Ljava/lang/String;

    .line 263
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readMap(Ljava/io/ObjectInput;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->attrs:Ljava/util/Map;

    .line 264
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readMap(Ljava/io/ObjectInput;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->caches:Ljava/util/Map;

    .line 266
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpAddrs:Ljava/util/Collection;

    .line 267
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpHostNames:Ljava/util/Collection;

    .line 268
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    .line 269
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    .line 271
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->nodeId:Ljava/util/UUID;

    .line 273
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->consistentId:Ljava/lang/Object;

    .line 274
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->metrics:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;

    .line 275
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->attrs:Ljava/util/Map;

    .line 161
    return-void
.end method

.method public setCaches(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "caches":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->caches:Ljava/util/Map;

    .line 188
    return-void
.end method

.method public setConsistentId(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consistentId"    # Ljava/lang/Object;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->consistentId:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setDefaultCacheMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "dfltCacheMode"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->dfltCacheMode:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setMetrics(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;)V
    .locals 0
    .param p1, "metrics"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->metrics:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;

    .line 143
    return-void
.end method

.method public setNodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->nodeId:Ljava/util/UUID;

    .line 75
    return-void
.end method

.method public setTcpAddresses(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "tcpAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpAddrs:Ljava/util/Collection;

    .line 116
    return-void
.end method

.method public setTcpHostNames(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "tcpHostNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpHostNames:Ljava/util/Collection;

    .line 125
    return-void
.end method

.method public setTcpPort(I)V
    .locals 0
    .param p1, "tcpPort"    # I

    .prologue
    .line 214
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpPort:I

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridClientNodeBean [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpPort:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 238
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 240
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->dfltCacheMode:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->attrs:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V

    .line 243
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->caches:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V

    .line 245
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpAddrs:Ljava/util/Collection;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 246
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->tcpHostNames:Ljava/util/Collection;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 250
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->nodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 252
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->consistentId:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->metrics:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 254
    return-void
.end method
