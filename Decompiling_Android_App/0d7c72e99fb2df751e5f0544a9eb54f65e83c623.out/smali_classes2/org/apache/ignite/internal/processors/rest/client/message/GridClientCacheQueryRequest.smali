.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;
.super Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.source "GridClientCacheQueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;,
        Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private clause:Ljava/lang/String;

.field private clsName:Ljava/lang/String;

.field private enableDedup:Z

.field private includeBackups:Z

.field private keepPortable:Z

.field private op:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

.field private pageSize:I

.field private qryArgs:[Ljava/lang/Object;

.field private qryId:J

.field private rmtReducerClsName:Ljava/lang/String;

.field private rmtTransformerClsName:Ljava/lang/String;

.field private timeout:J

.field private type:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public cacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->cacheName:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method public className(Ljava/lang/String;)V
    .locals 0
    .param p1, "clsName"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->clsName:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public clause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->clause:Ljava/lang/String;

    return-object v0
.end method

.method public clause(Ljava/lang/String;)V
    .locals 0
    .param p1, "clause"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->clause:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public enableDedup(Z)V
    .locals 0
    .param p1, "enableDedup"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->enableDedup:Z

    .line 264
    return-void
.end method

.method public enableDedup()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->enableDedup:Z

    return v0
.end method

.method public includeBackups(Z)V
    .locals 0
    .param p1, "includeBackups"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->includeBackups:Z

    .line 243
    return-void
.end method

.method public includeBackups()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->includeBackups:Z

    return v0
.end method

.method public keepPortable()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->keepPortable:Z

    return v0
.end method

.method public operation()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->op:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    return-object v0
.end method

.method public operation(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;)V
    .locals 0
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->op:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    .line 159
    return-void
.end method

.method public pageSize()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->pageSize:I

    return v0
.end method

.method public pageSize(I)V
    .locals 0
    .param p1, "pageSize"    # I

    .prologue
    .line 214
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->pageSize:I

    .line 215
    return-void
.end method

.method public queryArguments([Ljava/lang/Object;)V
    .locals 0
    .param p1, "qryArgs"    # [Ljava/lang/Object;

    .prologue
    .line 319
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->qryArgs:[Ljava/lang/Object;

    .line 320
    return-void
.end method

.method public queryArguments()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->qryArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public queryId()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->qryId:J

    return-wide v0
.end method

.method public queryId(J)V
    .locals 1
    .param p1, "qryId"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->qryId:J

    .line 145
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 326
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->qryId:J

    .line 327
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->fromOrdinal(I)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->op:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    .line 328
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->fromOrdinal(I)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->type:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    .line 329
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->cacheName:Ljava/lang/String;

    .line 330
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->clause:Ljava/lang/String;

    .line 331
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->pageSize:I

    .line 332
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->timeout:J

    .line 333
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->includeBackups:Z

    .line 334
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->enableDedup:Z

    .line 335
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->keepPortable:Z

    .line 336
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->clsName:Ljava/lang/String;

    .line 337
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->rmtReducerClsName:Ljava/lang/String;

    .line 338
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->rmtTransformerClsName:Ljava/lang/String;

    .line 339
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readArray(Ljava/io/ObjectInput;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->qryArgs:[Ljava/lang/Object;

    .line 340
    return-void
.end method

.method public remoteReducerClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->rmtReducerClsName:Ljava/lang/String;

    return-object v0
.end method

.method public remoteReducerClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rmtReducerClsName"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->rmtReducerClsName:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public remoteTransformerClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->rmtTransformerClsName:Ljava/lang/String;

    return-object v0
.end method

.method public remoteTransformerClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rmtTransformerClsName"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->rmtTransformerClsName:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->timeout:J

    return-wide v0
.end method

.method public timeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 228
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->timeout:J

    .line 229
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    const-class v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->type:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    return-object v0
.end method

.method public type(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;)V
    .locals 0
    .param p1, "type"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    .prologue
    .line 186
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->type:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    .line 187
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 346
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->qryId:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 347
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->op:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 348
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->type:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 349
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->cacheName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->clause:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 351
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->pageSize:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 352
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->timeout:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 353
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->includeBackups:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 354
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->enableDedup:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 355
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->keepPortable:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 356
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->clsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->rmtReducerClsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->rmtTransformerClsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->qryArgs:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeArray(Ljava/io/ObjectOutput;[Ljava/lang/Object;)V

    .line 360
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->type:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
