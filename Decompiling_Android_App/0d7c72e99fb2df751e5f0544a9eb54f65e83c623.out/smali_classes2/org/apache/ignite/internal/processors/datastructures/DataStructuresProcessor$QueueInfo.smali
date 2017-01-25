.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;
.super Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;
.source "DataStructuresProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueueInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cap:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1316
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;-><init>()V

    .line 1318
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "collocated"    # Z
    .param p3, "cap"    # I

    .prologue
    .line 1326
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;-><init>(Ljava/lang/String;Z)V

    .line 1328
    iput p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->cap:I

    .line 1329
    return-void
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;

    .prologue
    .line 1306
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->cap:I

    return v0
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
    .line 1333
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->readExternal(Ljava/io/ObjectInput;)V

    .line 1335
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->cap:I

    .line 1336
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1347
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

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
    .line 1340
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1342
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;->cap:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1343
    return-void
.end method
