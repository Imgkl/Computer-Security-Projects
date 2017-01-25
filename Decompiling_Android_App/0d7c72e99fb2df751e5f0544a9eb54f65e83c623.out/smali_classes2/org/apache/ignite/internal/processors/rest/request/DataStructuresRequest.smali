.class public Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;
.super Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
.source "DataStructuresRequest.java"


# instance fields
.field private delta:Ljava/lang/Long;

.field private init:Ljava/lang/Long;

.field private key:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public delta()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->delta:Ljava/lang/Long;

    return-object v0
.end method

.method public delta(Ljava/lang/Long;)V
    .locals 0
    .param p1, "delta"    # Ljava/lang/Long;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->delta:Ljava/lang/Long;

    .line 59
    return-void
.end method

.method public initial()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->init:Ljava/lang/Long;

    return-object v0
.end method

.method public initial(Ljava/lang/Long;)V
    .locals 0
    .param p1, "init"    # Ljava/lang/Long;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->init:Ljava/lang/Long;

    .line 73
    return-void
.end method

.method public key()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public key(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->key:Ljava/lang/Object;

    .line 45
    return-void
.end method
