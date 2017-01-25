.class public Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
.super Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
.source "VisitorGroupGsonModel.java"


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private visibleGroups:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibleGroups"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->visibleGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->visibleGroups:Ljava/util/ArrayList;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->visibleGroups:Ljava/util/ArrayList;

    return-object v0
.end method
