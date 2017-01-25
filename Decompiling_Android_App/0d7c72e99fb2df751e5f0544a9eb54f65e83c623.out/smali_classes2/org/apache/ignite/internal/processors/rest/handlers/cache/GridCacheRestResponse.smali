.class public Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;
.super Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
.source "GridCacheRestResponse.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private affinityNodeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAffinityNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;->affinityNodeId:Ljava/lang/String;

    return-object v0
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
    .line 63
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->readExternal(Ljava/io/ObjectInput;)V

    .line 65
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;->affinityNodeId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setAffinityNodeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "affinityNodeId"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;->affinityNodeId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->toString()Ljava/lang/String;

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
    .line 56
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;->affinityNodeId:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 59
    return-void
.end method
