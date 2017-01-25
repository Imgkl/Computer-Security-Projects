.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
.super Ljava/lang/Object;
.source "DataStructuresProcessor.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataStructureInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private info:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private type:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1372
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Ljava/io/Externalizable;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;
    .param p3, "info"    # Ljava/io/Externalizable;

    .prologue
    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;

    .line 1381
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->type:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    .line 1382
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->info:Ljava/lang/Object;

    .line 1383
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .prologue
    .line 1354
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .prologue
    .line 1354
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->info:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
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
    .line 1433
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;

    .line 1434
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->fromOrdinal(I)Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->type:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    .line 1435
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->info:Ljava/lang/Object;

    .line 1436
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1440
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method validate(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Lorg/apache/ignite/IgniteCheckedException;
    .locals 6
    .param p1, "dsInfo"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    .param p2, "create"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v5, 0x5d

    .line 1391
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->type:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    iget-object v3, p1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->type:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    if-eq v2, v3, :cond_0

    .line 1392
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Another data structure with the same name already created [name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->type:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->className()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", existingType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->type:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->className()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 1421
    :goto_0
    return-object v2

    .line 1398
    :cond_0
    if-eqz p2, :cond_3

    .line 1399
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->type:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->QUEUE:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->type:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->SET:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    if-ne v2, v3, :cond_3

    .line 1400
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->info:Ljava/lang/Object;

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;

    .line 1401
    .local v1, "oldInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->info:Ljava/lang/Object;

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;

    .line 1403
    .local v0, "newInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;
    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->collocated:Z
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->access$2200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;)Z

    move-result v2

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->collocated:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->access$2200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1404
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Another collection with the same name but different configuration already created [name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newCollocated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->collocated:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->access$2200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", existingCollocated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->collocated:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->access$2200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1410
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->type:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->QUEUE:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    if-ne v2, v3, :cond_3

    move-object v2, v1

    .line 1411
    check-cast v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->cap:I
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->access$2300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;)I

    move-result v3

    move-object v2, v0

    check-cast v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->cap:I
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->access$2300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;)I

    move-result v2

    if-eq v3, v2, :cond_3

    .line 1412
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Another queue with the same name but different configuration already created [name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newCapacity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;

    .end local v0    # "newInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;
    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->cap:I
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->access$2300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", existingCapacity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;

    .end local v1    # "oldInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;
    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->cap:I
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->access$2300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1421
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
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
    .line 1426
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->type:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeEnum(Ljava/io/DataOutput;Ljava/lang/Enum;)V

    .line 1428
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->info:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1429
    return-void
.end method
