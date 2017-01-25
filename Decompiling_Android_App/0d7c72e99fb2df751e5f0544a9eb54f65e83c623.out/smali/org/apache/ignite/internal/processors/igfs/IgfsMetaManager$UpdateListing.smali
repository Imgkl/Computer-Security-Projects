.class final Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;
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
    name = "UpdateListing"
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
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private entry:Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

.field private fileName:Ljava/lang/String;

.field private rmv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2887
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2924
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;Z)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .param p3, "rmv"    # Z

    .prologue
    .line 2909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2910
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2911
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2913
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->fileName:Ljava/lang/String;

    .line 2914
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->entry:Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 2915
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->rmv:Z

    .line 2916
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;ZLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;

    .prologue
    .line 2888
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;Z)V

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
    .line 2887
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 7
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
    .local p1, "e":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    const/16 v6, 0x5d

    .line 2928
    invoke-interface {p1}, Ljavax/cache/processor/MutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 2930
    .local v0, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File info not found for the child: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->entry:Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 2931
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2933
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->rmv:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    add-int/2addr v3, v4

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 2936
    .local v1, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2938
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->rmv:Z

    if-eqz v3, :cond_6

    .line 2939
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->fileName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 2941
    .local v2, "oldEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->entry:Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2942
    :cond_2
    new-instance v3, Lorg/apache/ignite/IgniteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Directory listing doesn\'t contain expected file [listing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fileName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->entry:Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2933
    .end local v1    # "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .end local v2    # "oldEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 2946
    .restart local v1    # "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .restart local v2    # "oldEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->fileName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2958
    :cond_5
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-direct {v3, v1, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V

    invoke-interface {p1, v3}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 2960
    const/4 v3, 0x0

    return-object v3

    .line 2950
    .end local v2    # "oldEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    :cond_6
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->entry:Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 2952
    .restart local v2    # "oldEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->entry:Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2953
    new-instance v3, Lorg/apache/ignite/IgniteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Directory listing contains unexpected file [listing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fileName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->entry:Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldEntry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .line 2972
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->fileName:Ljava/lang/String;

    .line 2973
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->entry:Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 2974
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->rmv:Z

    .line 2975
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2979
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;

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
    .line 2965
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->fileName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 2966
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->entry:Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2967
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;->rmv:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 2968
    return-void
.end method
