.class Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;
.super Ljava/lang/Object;
.source "IgfsSecondaryFileSystemImpl.java"

# interfaces
.implements Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;


# instance fields
.field private final igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V
    .locals 0
    .param p1, "igfs"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .line 42
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .param p3, "create"    # Z
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/OutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 104
    .local p4, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->append(Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/apache/ignite/igfs/IgfsPath;IZIJLjava/util/Map;)Ljava/io/OutputStream;
    .locals 9
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .param p3, "overwrite"    # Z
    .param p4, "replication"    # I
    .param p5, "blockSize"    # J
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZIJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/OutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 98
    .local p7, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->create(Lorg/apache/ignite/igfs/IgfsPath;IZIJLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/apache/ignite/igfs/IgfsPath;Z)Ljava/io/OutputStream;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->create(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lorg/apache/ignite/igfs/IgfsPath;Z)Z
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "recursive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delete(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v0

    return v0
.end method

.method public exists(Lorg/apache/ignite/igfs/IgfsPath;)Z
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->exists(Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v0

    return v0
.end method

.method public info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->listFiles(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public listPaths(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->listPaths(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public mkdirs(Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->mkdirs(Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 67
    return-void
.end method

.method public mkdirs(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->mkdirs(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V

    .line 72
    return-void
.end method

.method public open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public properties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rename(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 1
    .param p1, "src"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "dest"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->rename(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 57
    return-void
.end method

.method public update(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/igfs/IgfsFile;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsFile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->update(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v0

    return-object v0
.end method

.method public usedSpaceSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->usedSpaceSize()J

    move-result-wide v0

    return-wide v0
.end method
