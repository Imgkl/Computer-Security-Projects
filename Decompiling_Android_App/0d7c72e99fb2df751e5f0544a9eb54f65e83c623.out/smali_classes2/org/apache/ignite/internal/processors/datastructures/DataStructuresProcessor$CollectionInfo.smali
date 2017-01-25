.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;
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
    name = "CollectionInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private collocated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1274
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "collocated"    # Z

    .prologue
    .line 1280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1281
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->cacheName:Ljava/lang/String;

    .line 1282
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->collocated:Z

    .line 1283
    return-void
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;

    .prologue
    .line 1259
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;

    .prologue
    .line 1259
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->collocated:Z

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
    .line 1287
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->collocated:Z

    .line 1288
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->cacheName:Ljava/lang/String;

    .line 1289
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1299
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

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
    .line 1293
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->collocated:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 1294
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->cacheName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 1295
    return-void
.end method
