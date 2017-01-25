.class public Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;
.super Ljava/lang/Object;
.source "GridTcpRestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ParserState"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private buf:Ljava/io/ByteArrayOutputStream;

.field private hdr:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

.field private idx:I

.field private packet:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

.field private packetType:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 809
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->buf:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public buffer()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->buf:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->hdr:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    return-object v0
.end method

.method public header(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;)V
    .locals 0
    .param p1, "hdr"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    .prologue
    .line 887
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->hdr:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    .line 888
    return-void
.end method

.method public index()I
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->idx:I

    return v0
.end method

.method public index(I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    .line 836
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->idx:I

    .line 837
    return-void
.end method

.method public packet()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packet:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    return-object v0
.end method

.method public packet(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V
    .locals 1
    .param p1, "packet"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .prologue
    .line 857
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packet:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 859
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packet:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .line 860
    return-void
.end method

.method public packetType()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packetType:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    return-object v0
.end method

.method public packetType(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;)V
    .locals 0
    .param p1, "packetType"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    .prologue
    .line 873
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packetType:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    .line 874
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 892
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
