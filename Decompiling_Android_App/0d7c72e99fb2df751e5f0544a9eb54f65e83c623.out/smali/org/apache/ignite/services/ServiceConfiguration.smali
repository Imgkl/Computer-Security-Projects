.class public Lorg/apache/ignite/services/ServiceConfiguration;
.super Ljava/lang/Object;
.source "ServiceConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private affKey:Ljava/lang/Object;

.field private cacheName:Ljava/lang/String;

.field private maxPerNodeCnt:I

.field private name:Ljava/lang/String;

.field private nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private svc:Lorg/apache/ignite/services/Service;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private totalCnt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0, p1}, Lorg/apache/ignite/services/ServiceConfiguration;->equalsIgnoreNodeFilter(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 243
    check-cast v0, Lorg/apache/ignite/services/ServiceConfiguration;

    .line 245
    .local v0, "that":Lorg/apache/ignite/services/ServiceConfiguration;
    iget-object v2, p0, Lorg/apache/ignite/services/ServiceConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/apache/ignite/services/ServiceConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v2, :cond_3

    .line 246
    iget-object v2, p0, Lorg/apache/ignite/services/ServiceConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/ignite/services/ServiceConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 249
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/services/ServiceConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/apache/ignite/services/ServiceConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public equalsIgnoreNodeFilter(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    if-ne p0, p1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v1

    .line 267
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 268
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 270
    check-cast v0, Lorg/apache/ignite/services/ServiceConfiguration;

    .line 272
    .local v0, "that":Lorg/apache/ignite/services/ServiceConfiguration;
    iget v3, p0, Lorg/apache/ignite/services/ServiceConfiguration;->maxPerNodeCnt:I

    iget v4, v0, Lorg/apache/ignite/services/ServiceConfiguration;->maxPerNodeCnt:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 273
    goto :goto_0

    .line 275
    :cond_4
    iget v3, p0, Lorg/apache/ignite/services/ServiceConfiguration;->totalCnt:I

    iget v4, v0, Lorg/apache/ignite/services/ServiceConfiguration;->totalCnt:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 276
    goto :goto_0

    .line 278
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/services/ServiceConfiguration;->affKey:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/apache/ignite/services/ServiceConfiguration;->affKey:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/services/ServiceConfiguration;->affKey:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 279
    goto :goto_0

    .line 278
    :cond_7
    iget-object v3, v0, Lorg/apache/ignite/services/ServiceConfiguration;->affKey:Ljava/lang/Object;

    if-nez v3, :cond_6

    .line 281
    :cond_8
    iget-object v3, p0, Lorg/apache/ignite/services/ServiceConfiguration;->cacheName:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/apache/ignite/services/ServiceConfiguration;->cacheName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/services/ServiceConfiguration;->cacheName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 282
    goto :goto_0

    .line 281
    :cond_a
    iget-object v3, v0, Lorg/apache/ignite/services/ServiceConfiguration;->cacheName:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 284
    :cond_b
    iget-object v3, p0, Lorg/apache/ignite/services/ServiceConfiguration;->name:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/apache/ignite/services/ServiceConfiguration;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/services/ServiceConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 285
    goto :goto_0

    .line 284
    :cond_d
    iget-object v3, v0, Lorg/apache/ignite/services/ServiceConfiguration;->name:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 287
    :cond_e
    iget-object v3, p0, Lorg/apache/ignite/services/ServiceConfiguration;->svc:Lorg/apache/ignite/services/Service;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/apache/ignite/services/ServiceConfiguration;->svc:Lorg/apache/ignite/services/Service;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/ignite/services/ServiceConfiguration;->svc:Lorg/apache/ignite/services/Service;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 288
    goto :goto_0

    .line 287
    :cond_f
    iget-object v3, v0, Lorg/apache/ignite/services/ServiceConfiguration;->svc:Lorg/apache/ignite/services/Service;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAffinityKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->affKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getCacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPerNodeCount()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->maxPerNodeCnt:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public getService()Lorg/apache/ignite/services/Service;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->svc:Lorg/apache/ignite/services/Service;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->totalCnt:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setAffinityKey(Ljava/lang/Object;)V
    .locals 0
    .param p1, "affKey"    # Ljava/lang/Object;

    .prologue
    .line 210
    iput-object p1, p0, Lorg/apache/ignite/services/ServiceConfiguration;->affKey:Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public setCacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/apache/ignite/services/ServiceConfiguration;->cacheName:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setMaxPerNodeCount(I)V
    .locals 0
    .param p1, "maxPerNodeCnt"    # I

    .prologue
    .line 166
    iput p1, p0, Lorg/apache/ignite/services/ServiceConfiguration;->maxPerNodeCnt:I

    .line 167
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/apache/ignite/services/ServiceConfiguration;->name:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setNodeFilter(Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "nodeFilter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iput-object p1, p0, Lorg/apache/ignite/services/ServiceConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 235
    return-void
.end method

.method public setService(Lorg/apache/ignite/services/Service;)V
    .locals 0
    .param p1, "svc"    # Lorg/apache/ignite/services/Service;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/apache/ignite/services/ServiceConfiguration;->svc:Lorg/apache/ignite/services/Service;

    .line 123
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .param p1, "totalCnt"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/apache/ignite/services/ServiceConfiguration;->totalCnt:I

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 300
    iget-object v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->svc:Lorg/apache/ignite/services/Service;

    if-nez v0, :cond_0

    const-string v3, ""

    .line 301
    .local v3, "svcCls":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    if-nez v0, :cond_1

    const-string v5, ""

    .line 303
    .local v5, "nodeFilterCls":Ljava/lang/String;
    :goto_1
    const-class v0, Lorg/apache/ignite/services/ServiceConfiguration;

    const-string v2, "svcCls"

    const-string v4, "nodeFilterCls"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 300
    .end local v3    # "svcCls":Ljava/lang/String;
    .end local v5    # "nodeFilterCls":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->svc:Lorg/apache/ignite/services/Service;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 301
    .restart local v3    # "svcCls":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/services/ServiceConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
