.class public Lcom/eventgenie/android/adapters/entity/DataversionAdapter$CustomComparator;
.super Ljava/lang/Object;
.source "DataversionAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/entity/DataversionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;)I
    .locals 2
    .param p1, "o1"    # Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;
    .param p2, "o2"    # Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    .prologue
    .line 245
    invoke-virtual {p2}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 240
    check-cast p1, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter$CustomComparator;->compare(Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;)I

    move-result v0

    return v0
.end method
