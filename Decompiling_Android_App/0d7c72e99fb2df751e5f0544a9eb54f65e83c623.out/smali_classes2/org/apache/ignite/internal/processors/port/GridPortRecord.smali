.class public Lorg/apache/ignite/internal/processors/port/GridPortRecord;
.super Ljava/lang/Object;
.source "GridPortRecord.java"


# instance fields
.field private cls:Ljava/lang/Class;

.field private port:I

.field private proto:Lorg/apache/ignite/spi/IgnitePortProtocol;


# direct methods
.method constructor <init>(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "proto"    # Lorg/apache/ignite/spi/IgnitePortProtocol;
    .param p3, "cls"    # Ljava/lang/Class;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->port:I

    .line 43
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->proto:Lorg/apache/ignite/spi/IgnitePortProtocol;

    .line 44
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->cls:Ljava/lang/Class;

    .line 45
    return-void
.end method


# virtual methods
.method public clazz()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->cls:Ljava/lang/Class;

    return-object v0
.end method

.method public port()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->port:I

    return v0
.end method

.method public protocol()Lorg/apache/ignite/spi/IgnitePortProtocol;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->proto:Lorg/apache/ignite/spi/IgnitePortProtocol;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/apache/ignite/internal/processors/port/GridPortRecord;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
