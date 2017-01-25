.class final Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
.super Ljava/lang/Object;
.source "GridClientPartitionAffinity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NodeInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final hashId:Ljava/lang/Object;

.field private final nodeId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    const-class v0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "hashId"    # Ljava/lang/Object;

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    sget-boolean v0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 311
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 313
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->hashId:Ljava/lang/Object;

    .line 314
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->nodeId:Ljava/util/UUID;

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/UUID;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$1;

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;-><init>(Ljava/util/UUID;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 298
    check-cast p1, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->compareTo(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;)I
    .locals 3
    .param p1, "o"    # Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    .prologue
    .line 350
    iget-object v1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->nodeId:Ljava/util/UUID;

    iget-object v2, p1, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    .line 352
    .local v0, "diff":I
    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->hashCode()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 355
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 338
    instance-of v2, p1, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 341
    check-cast v0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    .line 345
    .local v0, "that":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    iget-object v2, v0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->nodeId:Ljava/util/UUID;

    iget-object v3, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->hashId:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hashId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->hashId:Ljava/lang/Object;

    return-object v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [nodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->hashId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
