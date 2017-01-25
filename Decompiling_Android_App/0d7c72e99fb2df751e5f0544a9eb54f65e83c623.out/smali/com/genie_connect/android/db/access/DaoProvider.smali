.class public interface abstract Lcom/genie_connect/android/db/access/DaoProvider;
.super Ljava/lang/Object;
.source "DaoProvider.java"


# virtual methods
.method public abstract getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEntity:",
            "Ljava/lang/Object;",
            "TKey:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lde/greenrobot/dao/Dao",
            "<TTEntity;TTKey;>;"
        }
    .end annotation
.end method

.method public abstract refreshDatabase()V
.end method
