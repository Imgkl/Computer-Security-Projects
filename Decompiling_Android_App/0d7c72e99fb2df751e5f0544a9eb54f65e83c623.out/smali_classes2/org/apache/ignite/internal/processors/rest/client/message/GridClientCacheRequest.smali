.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
.super Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.source "GridClientCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cacheFlagsOn:I

.field private cacheName:Ljava/lang/String;

.field private key:Ljava/lang/Object;

.field private op:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field private val:Ljava/lang/Object;

.field private val2:Ljava/lang/Object;

.field private vals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;)V
    .locals 0
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->op:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 120
    return-void
.end method


# virtual methods
.method public cacheFlagsOn()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn:I

    return v0
.end method

.method public cacheFlagsOn(I)V
    .locals 0
    .param p1, "cacheFlagsOn"    # I

    .prologue
    .line 219
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn:I

    .line 220
    return-void
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public cacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public key()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public key(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->key:Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public keys(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->vals:Ljava/util/Map;

    .line 209
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, "k":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->vals:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    .end local v1    # "k":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public operation()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->op:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

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
    .line 251
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 253
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->fromOrdinal(I)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->op:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 255
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName:Ljava/lang/String;

    .line 257
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->key:Ljava/lang/Object;

    .line 258
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->val:Ljava/lang/Object;

    .line 259
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->val2:Ljava/lang/Object;

    .line 261
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readMap(Ljava/io/ObjectInput;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->vals:Ljava/util/Map;

    .line 263
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn:I

    .line 264
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->op:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", val2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->val2:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->vals:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cacheFlagsOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public value(Ljava/lang/Object;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->val:Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public value2()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->val2:Ljava/lang/Object;

    return-object v0
.end method

.method public value2(Ljava/lang/Object;)V
    .locals 0
    .param p1, "val2"    # Ljava/lang/Object;

    .prologue
    .line 186
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->val2:Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public values()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->vals:Ljava/util/Map;

    return-object v0
.end method

.method public values(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "vals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->vals:Ljava/util/Map;

    .line 201
    return-void
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
    .line 233
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 235
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->op:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeEnum(Ljava/io/DataOutput;Ljava/lang/Enum;)V

    .line 237
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->val:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->val2:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->vals:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V

    .line 245
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 246
    return-void
.end method
