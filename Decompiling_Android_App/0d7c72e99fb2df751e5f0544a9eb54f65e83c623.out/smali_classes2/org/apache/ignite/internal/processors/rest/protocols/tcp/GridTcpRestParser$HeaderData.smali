.class public Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;
.super Ljava/lang/Object;
.source "GridTcpRestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HeaderData"
.end annotation


# instance fields
.field private final clientId:Ljava/util/UUID;

.field private final destId:Ljava/util/UUID;

.field private final reqId:J


# direct methods
.method private constructor <init>(JLjava/util/UUID;Ljava/util/UUID;)V
    .locals 1
    .param p1, "reqId"    # J
    .param p3, "clientId"    # Ljava/util/UUID;
    .param p4, "destId"    # Ljava/util/UUID;

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->reqId:J

    .line 916
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->clientId:Ljava/util/UUID;

    .line 917
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->destId:Ljava/util/UUID;

    .line 918
    return-void
.end method

.method synthetic constructor <init>(JLjava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/UUID;
    .param p4, "x2"    # Ljava/util/UUID;
    .param p5, "x3"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$1;

    .prologue
    .line 899
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;-><init>(JLjava/util/UUID;Ljava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public clientId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->clientId:Ljava/util/UUID;

    return-object v0
.end method

.method public destinationId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->destId:Ljava/util/UUID;

    return-object v0
.end method

.method public reqId()J
    .locals 2

    .prologue
    .line 924
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->reqId:J

    return-wide v0
.end method
