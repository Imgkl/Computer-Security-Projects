.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;
.super Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.source "GridClientHandshakeResponse.java"


# static fields
.field public static final CODE_OK:B

.field public static final OK:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

.field private static final serialVersionUID:J


# instance fields
.field private resCode:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;-><init>(B)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;->OK:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .param p1, "resCode"    # B

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    .line 52
    iput-byte p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;->resCode:B

    .line 53
    return-void
.end method


# virtual methods
.method public resultCode()B
    .locals 1

    .prologue
    .line 59
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;->resCode:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [resCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;->resCode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
