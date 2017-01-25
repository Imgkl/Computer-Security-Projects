.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;
.super Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.source "GridClientAuthenticationRequest.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cred:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public credentials()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;->cred:Ljava/lang/Object;

    return-object v0
.end method

.method public credentials(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cred"    # Ljava/lang/Object;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;->cred:Ljava/lang/Object;

    .line 46
    return-void
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
    .line 57
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 59
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;->cred:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    const-class v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

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
    .line 50
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;->cred:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
