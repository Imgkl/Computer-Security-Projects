.class public Lcom/genie_connect/android/bl/tags/TagTreeManager;
.super Ljava/lang/Object;
.source "TagTreeManager.java"


# static fields
.field private static mTagTree:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTagTree()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/genie_connect/android/bl/tags/TagTreeManager;->mTagTree:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 56
    return-void
.end method

.method public static getTagTree()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/genie_connect/android/bl/tags/TagTreeManager;->mTagTree:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    return-object v0
.end method

.method public static setTagTree(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    sput-object p0, Lcom/genie_connect/android/bl/tags/TagTreeManager;->mTagTree:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 48
    return-void
.end method
