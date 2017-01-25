.class public Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
.super Ljava/lang/Object;
.source "IgniteSpiNodeValidationResult.java"


# instance fields
.field private final msg:Ljava/lang/String;

.field private final nodeId:Ljava/util/UUID;

.field private final sndMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "sndMsg"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->nodeId:Ljava/util/UUID;

    .line 42
    iput-object p2, p0, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->msg:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->sndMsg:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public sendMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->sndMsg:Ljava/lang/String;

    return-object v0
.end method
