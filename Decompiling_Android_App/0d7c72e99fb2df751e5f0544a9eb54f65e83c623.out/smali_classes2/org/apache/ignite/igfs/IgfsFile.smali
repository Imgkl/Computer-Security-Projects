.class public interface abstract Lorg/apache/ignite/igfs/IgfsFile;
.super Ljava/lang/Object;
.source "IgfsFile.java"


# virtual methods
.method public abstract accessTime()J
.end method

.method public abstract blockSize()I
.end method

.method public abstract groupBlockSize()J
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isFile()Z
.end method

.method public abstract length()J
.end method

.method public abstract modificationTime()J
.end method

.method public abstract path()Lorg/apache/ignite/igfs/IgfsPath;
.end method

.method public abstract properties()Ljava/util/Map;
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
.end method

.method public abstract property(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract property(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
