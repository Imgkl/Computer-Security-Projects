.class public final Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
.super Ljava/lang/Object;
.source "GridClientNodeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private built:Z

.field private impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)V
    .locals 0
    .param p1, "impl"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .param p2, "x1"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$1;

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)V

    return-void
.end method


# virtual methods
.method public attributes(Ljava/util/Map;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    # setter for: Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->attrs:Ljava/util/Map;
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->access$602(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/util/Map;)Ljava/util/Map;

    .line 335
    return-object p0
.end method

.method public build()Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .locals 2

    .prologue
    .line 258
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->built:Z

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Instance already built."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 261
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->built:Z

    .line 263
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    return-object v0
.end method

.method public caches(Ljava/util/Map;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/client/GridClientCacheMode;",
            ">;)",
            "Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "caches":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/client/GridClientCacheMode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    # setter for: Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->caches:Ljava/util/Map;
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->access$802(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/util/Map;)Ljava/util/Map;

    .line 359
    return-object p0
.end method

.method public connectable(Z)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    .locals 1
    .param p1, "connectable"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    # setter for: Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->connectable:Z
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->access$902(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Z)Z

    .line 371
    return-object p0
.end method

.method public consistentId(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    .locals 1
    .param p1, "consistentId"    # Ljava/lang/Object;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    # setter for: Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->consistentId:Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->access$202(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-object p0
.end method

.method public metrics(Lorg/apache/ignite/internal/client/GridClientNodeMetrics;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    .locals 1
    .param p1, "metrics"    # Lorg/apache/ignite/internal/client/GridClientNodeMetrics;

    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    # setter for: Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->metrics:Lorg/apache/ignite/internal/client/GridClientNodeMetrics;
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->access$702(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Lorg/apache/ignite/internal/client/GridClientNodeMetrics;)Lorg/apache/ignite/internal/client/GridClientNodeMetrics;

    .line 347
    return-object p0
.end method

.method public nodeId(Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    # setter for: Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId:Ljava/util/UUID;
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->access$102(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/util/UUID;)Ljava/util/UUID;

    .line 275
    return-object p0
.end method

.method public tcpAddresses(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "tcpAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    # setter for: Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpAddrs:Ljava/util/List;
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->access$302(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/util/List;)Ljava/util/List;

    .line 299
    return-object p0
.end method

.method public tcpHostNames(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "tcpHostNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    # setter for: Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpHostNames:Ljava/util/List;
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->access$402(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;Ljava/util/List;)Ljava/util/List;

    .line 311
    return-object p0
.end method

.method public tcpPort(I)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    .locals 1
    .param p1, "tcpPort"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->impl:Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    # setter for: Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->tcpPort:I
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->access$502(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;I)I

    .line 323
    return-object p0
.end method
