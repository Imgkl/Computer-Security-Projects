.class final Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;
.super Ljava/lang/Object;
.source "IgfsMetaManager.java"

# interfaces
.implements Ljavax/cache/processor/EntryProcessor;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdatePath"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/cache/processor/EntryProcessor",
        "<",
        "Lorg/apache/ignite/lang/IgniteUuid;",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private path:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3007
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 2998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2999
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 3000
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;

    .prologue
    .line 2987
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;-><init>(Lorg/apache/ignite/igfs/IgfsPath;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/cache/processor/MutableEntry;
    .param p2, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .line 2986
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/processor/MutableEntry",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 3011
    .local p1, "e":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    invoke-interface {p1}, Ljavax/cache/processor/MutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 3013
    .local v0, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->builder(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;->path(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;->build()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 3015
    const/4 v1, 0x0

    return-object v1
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
    .line 3025
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsPath;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 3026
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3030
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;

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
    .line 3020
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 3021
    return-void
.end method
