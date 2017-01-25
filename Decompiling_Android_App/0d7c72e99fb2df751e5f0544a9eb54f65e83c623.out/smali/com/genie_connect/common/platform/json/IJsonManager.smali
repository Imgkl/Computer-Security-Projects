.class public interface abstract Lcom/genie_connect/common/platform/json/IJsonManager;
.super Ljava/lang/Object;
.source "IJsonManager.java"


# virtual methods
.method public abstract createJsonObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;
.end method

.method public abstract deserializeEntity(Ljava/lang/String;Ljava/lang/Class;)Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract deserializeListOfEntities(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract deserializeListOfEntities(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method
