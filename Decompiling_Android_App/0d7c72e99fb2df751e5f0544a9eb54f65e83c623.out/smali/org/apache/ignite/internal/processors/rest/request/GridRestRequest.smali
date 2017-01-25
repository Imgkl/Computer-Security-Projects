.class public Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
.super Ljava/lang/Object;
.source "GridRestRequest.java"


# instance fields
.field private addr:Ljava/net/InetSocketAddress;

.field private clientId:Ljava/util/UUID;

.field private cmd:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

.field private cred:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private destId:Ljava/util/UUID;

.field private sesTok:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public address()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->addr:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public address(Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "addr"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->addr:Ljava/net/InetSocketAddress;

    .line 144
    return-void
.end method

.method public clientId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId:Ljava/util/UUID;

    return-object v0
.end method

.method public clientId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "clientId"    # Ljava/util/UUID;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId:Ljava/util/UUID;

    .line 94
    return-void
.end method

.method public command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->cmd:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    return-object v0
.end method

.method public command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V
    .locals 0
    .param p1, "cmd"    # Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->cmd:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 76
    return-void
.end method

.method public credentials()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->cred:Ljava/lang/Object;

    return-object v0
.end method

.method public credentials(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cred"    # Ljava/lang/Object;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->cred:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public destinationId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destId:Ljava/util/UUID;

    return-object v0
.end method

.method public destinationId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "destId"    # Ljava/util/UUID;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destId:Ljava/util/UUID;

    .line 62
    return-void
.end method

.method public sessionToken([B)V
    .locals 0
    .param p1, "sesTok"    # [B

    .prologue
    .line 129
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->sesTok:[B

    .line 130
    return-void
.end method

.method public sessionToken()[B
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->sesTok:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-class v0, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
