.class final Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;
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
    name = "UpdateListingEntry"
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


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private accessTime:J

.field private fileId:Lorg/apache/ignite/lang/IgniteUuid;

.field private fileName:Ljava/lang/String;

.field private lenDelta:J

.field private modificationTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2818
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;JJJ)V
    .locals 1
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "lenDelta"    # J
    .param p5, "accessTime"    # J
    .param p7, "modificationTime"    # J

    .prologue
    .line 2831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2832
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 2833
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->fileName:Ljava/lang/String;

    .line 2834
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->lenDelta:J

    .line 2835
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->accessTime:J

    .line 2836
    iput-wide p7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->modificationTime:J

    .line 2837
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;JJJLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # J
    .param p9, "x5"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;

    .prologue
    .line 2793
    invoke-direct/range {p0 .. p8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;JJJ)V

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
    .line 2793
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 14
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
    .line 2841
    .local p1, "e":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    invoke-interface {p1}, Ljavax/cache/processor/MutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 2843
    .local v8, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v9

    .line 2845
    .local v9, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->fileName:Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 2847
    .local v1, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2848
    :cond_0
    const/4 v2, 0x0

    move-object v0, v1

    .line 2862
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .local v0, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    :goto_0
    return-object v2

    .line 2850
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .restart local v1    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->lenDelta:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->accessTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->accessTime()J

    move-result-wide v4

    :goto_1
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->modificationTime:J

    const-wide/16 v12, -0x1

    cmp-long v6, v6, v12

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->modificationTime()J

    move-result-wide v6

    :goto_2
    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;JJJ)V

    .line 2855
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .restart local v0    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2858
    .end local v9    # "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .local v10, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->fileName:Ljava/lang/String;

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2860
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-direct {v2, v10, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V

    invoke-interface {p1, v2}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 2862
    const/4 v2, 0x0

    move-object v9, v10

    .end local v10    # "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .restart local v9    # "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    goto :goto_0

    .line 2850
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .restart local v1    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    :cond_2
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->accessTime:J

    goto :goto_1

    :cond_3
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->modificationTime:J

    goto :goto_2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2876
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 2877
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->fileName:Ljava/lang/String;

    .line 2878
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->lenDelta:J

    .line 2879
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->accessTime:J

    .line 2880
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->modificationTime:J

    .line 2881
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
    .line 2867
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 2868
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->fileName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 2869
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->lenDelta:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 2870
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->accessTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 2871
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;->modificationTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 2872
    return-void
.end method
