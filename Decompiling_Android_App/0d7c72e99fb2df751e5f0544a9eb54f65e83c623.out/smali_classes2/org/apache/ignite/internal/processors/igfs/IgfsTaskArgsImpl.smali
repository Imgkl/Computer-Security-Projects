.class public Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;
.super Ljava/lang/Object;
.source "IgfsTaskArgsImpl.java"

# interfaces
.implements Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs",
        "<TT;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private igfsName:Ljava/lang/String;

.field private maxRangeLen:J

.field private paths:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;"
        }
    .end annotation
.end field

.field private recRslvr:Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

.field private skipNonExistentFiles:Z

.field private usrArg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;, "Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;ZJLjava/lang/Object;)V
    .locals 1
    .param p1, "igfsName"    # Ljava/lang/String;
    .param p3, "recRslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
    .param p4, "skipNonExistentFiles"    # Z
    .param p5, "maxRangeLen"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "ZJTT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;, "Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl<TT;>;"
    .local p2, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p7, "usrArg":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->igfsName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->paths:Ljava/util/Collection;

    .line 73
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->recRslvr:Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

    .line 74
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->skipNonExistentFiles:Z

    .line 75
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->maxRangeLen:J

    .line 76
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->usrArg:Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public igfsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;, "Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->igfsName:Ljava/lang/String;

    return-object v0
.end method

.method public maxRangeLength()J
    .locals 2

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;, "Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl<TT;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->maxRangeLen:J

    return-wide v0
.end method

.method public paths()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;, "Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->paths:Ljava/util/Collection;

    return-object v0
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
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;, "Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl<TT;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->igfsName:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->paths:Ljava/util/Collection;

    .line 130
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->recRslvr:Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

    .line 131
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->skipNonExistentFiles:Z

    .line 132
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->maxRangeLen:J

    .line 133
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->usrArg:Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public recordResolver()Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;, "Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->recRslvr:Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

    return-object v0
.end method

.method public skipNonExistentFiles()Z
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;, "Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->skipNonExistentFiles:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;, "Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userArgument()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;, "Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->usrArg:Ljava/lang/Object;

    return-object v0
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
    .line 116
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;, "Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->igfsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->paths:Ljava/util/Collection;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 119
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->recRslvr:Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 120
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->skipNonExistentFiles:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 121
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->maxRangeLen:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 122
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;->usrArg:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 123
    return-void
.end method
