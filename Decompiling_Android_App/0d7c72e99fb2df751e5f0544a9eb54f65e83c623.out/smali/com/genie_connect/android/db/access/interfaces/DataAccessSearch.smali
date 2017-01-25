.class public interface abstract Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;
.super Ljava/lang/Object;
.source "DataAccessSearch.java"


# virtual methods
.method public abstract search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
.end method

.method public abstract search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
.end method

.method public abstract search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
.end method

.method public abstract search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Luk/co/alt236/easycursor/EasyCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation
.end method
